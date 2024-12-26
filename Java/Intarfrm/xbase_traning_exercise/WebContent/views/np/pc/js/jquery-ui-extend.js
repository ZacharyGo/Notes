(function ($, undefined) {
    String.prototype.format = function () {
        var s = this,
            i = arguments.length;

        while (i--) {
            s = s.replace(new RegExp('\\{' + i + '\\}', 'gm'), arguments[i]);
        }
        return s;
    };
    var increments = 0;
    function addDescribedBy(elem, id) {
        var describedby = (elem.attr("aria-describedby") || "").split(/\s+/);
        describedby.push(id);
        elem
            .data("ui-errortip-id", id)
            .attr("aria-describedby", $.trim(describedby.join(" ")));
    }
    function removeDescribedBy(elem) {
        var id = elem.data("ui-errortip-id"),
            describedby = (elem.attr("aria-describedby") || "").split(/\s+/),
            index = $.inArray(id, describedby);
        if (index !== -1) {
            describedby.splice(index, 1);
        }

        elem.removeData("ui-errortip-id");
        describedby = $.trim(describedby.join(" "));
        if (describedby) {
            elem.attr("aria-describedby", describedby);
        } else {
            elem.removeAttr("aria-describedby");
        }
    }
    $.widget("ui.errortip", {
        version: "1.10.0",
        options: {
            content: function () {
                // support: IE<9, Opera in jQuery <1.7
                // .text() can't accept undefined, so coerce to a string
                var title = $(this).attr("title") || "";
                // Escape title, since we're going from an attribute to raw HTML
                return $("<a>").text(title).html();
            },
            hide: true,
            // Disabled elements have inconsistent behavior across browsers (#8661)
            items: ":not([disabled])",
            position: {
                my: "left top+15",
                at: "left bottom",
                collision: "flipfit flip"
            },
            show: true,
            errortipClass: null,
            track: false,

            // callbacks
            close: null,
            open: null,
            zIndex: 100
        },

        _create: function () {
            this._on({
                //mouseover: "open",
                //focusin: "open"
                focusin: function (e) {
                    var args = arguments, self = this;
                    setTimeout(function () {
                        if (e.target === document.activeElement
                                || e.currentTarget === document.activeElement) {
                            self.open.apply(self, args);
                        }
                    }, 0);
                }
            });
            if (this.element.is(":visible")) {
                this.element.data("originalOffset", this.element.offset());
            }
            // IDs of generated errortips, needed for destroy
            this.errortips = {};
            // IDs of parent errortips where we removed the title attribute
            this.parents = {};

            if (this.options.disabled) {
                this._disable();
            }
        },

        _setOption: function (key, value) {
            var that = this;

            if (key === "disabled") {
                this[value ? "_disable" : "_enable"]();
                this.options[key] = value;
                // disable element style changes
                return;
            }

            this._super(key, value);

            if (key === "content") {
                $.each(this.errortips, function (id, element) {
                    that._updateContent(element);
                });
            }
        },

        _disable: function () {
            var that = this;

            // close open errortips
            $.each(this.errortips, function (id, element) {
                var event = $.Event("blur");
                event.target = event.currentTarget = element[0];
                that.close(event, true);
            });

            // remove title attributes to prevent native errortips
            this.element.find(this.options.items).addBack().each(function () {
                var element = $(this);
                if (element.is("[title]")) {
                    element
                        .data("ui-errortip-title", element.attr("title"))
                        .attr("title", "");
                }
            });
        },

        _enable: function () {
            // restore title attributes
            this.element.find(this.options.items).addBack().each(function () {
                var element = $(this);
                if (element.data("ui-errortip-title")) {
                    element.attr("title", element.data("ui-errortip-title"));
                }
            });
        },

        open: function (event) {
            //var that = this,
            var target = $(event ? event.target : this.element)
                    // we need closest here due to mouseover bubbling,
                    // but always pointing at the same event target
                    .closest(this.options.items);

            // No element to show a errortip for or the errortip is already open
            if (!target.length || target.data("ui-errortip-id")) {
                return;
            }

            if (target.attr("title")) {
                target.data("ui-errortip-title", target.attr("title"));
            }

            target.data("ui-errortip-open", true);

            // kill parent errortips, custom or native, for hover
            //if (event && event.type === "mouseover") {
            //    target.parents().each(function () {
            //        var parent = $(this),
            //            blurEvent;
            //        if (parent.data("ui-errortip-open")) {
            //            blurEvent = $.Event("blur");
            //            blurEvent.target = blurEvent.currentTarget = this;
            //            that.close(blurEvent, true);
            //        }
            //        if (parent.attr("title")) {
            //            parent.uniqueId();
            //            that.parents[this.id] = {
            //                element: this,
            //                title: parent.attr("title")
            //            };
            //            parent.attr("title", "");
            //        }
            //    });
            //}

            this._updateContent(target, event);
        },

        _updateContent: function (target, event) {
            var content,
                contentOption = this.options.content,
                that = this,
                eventType = event ? event.type : null;

            if (typeof contentOption === "string") {
                return this._open(event, target, contentOption);
            }

            content = contentOption.call(target[0], function (response) {
                // ignore async response if errortip was closed already
                if (!target.data("ui-errortip-open")) {
                    return;
                }
                // IE may instantly serve a cached response for ajax requests
                // delay this call to _open so the other call to _open runs first
                that._delay(function () {
                    // jQuery creates a special event for focusin when it doesn't
                    // exist natively. To improve performance, the native event
                    // object is reused and the type is changed. Therefore, we can't
                    // rely on the type being correct after the event finished
                    // bubbling, so we set it back to the previous value. (#8740)
                    if (event) {
                        event.type = eventType;
                    }
                    this._open(event, target, response);
                });
            });
            if (content) {
                this._open(event, target, content);
            }
        },

        _open: function (event, target, content) {
            var errortip, events, delayedShow,
                positionOption = $.extend({}, this.options.position);

            if (!content) {
                return;
            }

            // Content can be updated multiple times. If the errortip already
            // exists, then just update the content and bail.
            errortip = this._find(target);
            if (errortip.length) {
                errortip.find(".ui-errortip-content").html(content);
                return;
            }

            // if we have a title, clear it to prevent the native errortip
            // we have to check first to avoid defining a title if none exists
            // (we don't want to cause an element to start matching [title])
            //
            // We use removeAttr only for key events, to allow IE to export the correct
            // accessible attributes. For mouse events, set to empty string to avoid
            // native errortip showing up (happens only when removing inside mouseover).
            if (target.is("[title]")) {
                //if (event && event.type === "mouseover") {
                //    target.attr("title", "");
                //} else {
                target.removeAttr("title");
                //}
            }

            errortip = this._errortip(target);
            addDescribedBy(target, errortip.attr("id"));
            errortip.find(".ui-errortip-content").html(content);

            function position(event) {
                positionOption.of = event;
                if (errortip.is(":hidden")) {
                    return;
                }
                errortip.position(positionOption);
            }
            $(errortip).css('width', $(errortip).width());
            errortip.position($.extend({
                of: target,
            }, this.options.position));

            errortip.hide();

            this._show(errortip, this.options.show);
            // Handle tracking errortips that are shown with a delay (#8644). As soon
            // as the errortip is visible, position the errortip using the most recent
            // event.
            if (this.options.show && this.options.show.delay) {
                delayedShow = this.delayedShow = setInterval(function () {
                    if (errortip.is(":visible")) {
                        position(positionOption.of);
                        clearInterval(delayedShow);
                    }
                }, $.fx.interval);
            }

            this._trigger("open", event, { errortip: errortip });

            events = {
                keyup: function (event) {
                    if (event.keyCode === $.ui.keyCode.ESCAPE) {
                        var fakeEvent = $.Event(event);
                        fakeEvent.currentTarget = target[0];
                        this.close(fakeEvent, true);
                    }
                },
                remove: function () {
                    this._removeerrortip(errortip);
                }
            };
            //if (!event || event.type === "mouseover") {
            //    events.mouseleave = "close";
            //}
            if (!event || event.type === "focusin") {
                events.focusout = "close";
            }
            this._on(true, target, events);
        },

        close: function (event) {
            var that = this,
                target = $(event ? event.currentTarget : this.element),
                errortip = this._find(target);

            // disabling closes the errortip, so we need to track when we're closing
            // to avoid an infinite loop in case the errortip becomes disabled on close
            if (this.closing) {
                return;
            }

            // Clear the interval for delayed tracking errortips
            clearInterval(this.delayedShow);

            // only set title if we had one before (see comment in _open())
            if (target.data("ui-errortip-title")) {
                target.attr("title", target.data("ui-errortip-title"));
            }

            removeDescribedBy(target);

            errortip.stop(true);
            this._hide(errortip, this.options.hide, function () {
                that._removeerrortip($(this));
            });

            target.removeData("ui-errortip-open");
            this._off(target, "mouseleave focusout keyup");
            // Remove 'remove' binding only on delegated targets
            if (target[0] !== this.element[0]) {
                this._off(target, "remove");
            }
            this._off(this.document, "mousemove");

            if (event && event.type === "mouseleave") {
                $.each(this.parents, function (id, parent) {
                    $(parent.element).attr("title", parent.title);
                    delete that.parents[id];
                });
            }

            this.closing = true;
            this._trigger("close", event, { errortip: errortip });
            this.closing = false;
        },

        _errortip: function (element) {
            var id = "ui-errortip-" + increments++,
                errortip = $("<div>")
                    .attr({
                        id: id,
                        role: "errortip"
                    })
                    .css("z-index", this.options.zIndex)
                    .addClass("ui-errortip ui-widget ui-corner-all ui-widget-content " +
                        (this.options.errortipClass || "")),
                relative = element.parents().filter(function () {
                    switch (window.getComputedStyle(this).position) {
                        case 'relative':
                        case 'absolute':
                        case 'fixed':
                            return (this.scrollHeight > $(this).height()) || (this.scrollWidth > $(this).width());
                        default:
                            return false;
                    }
                }).get(0) || this.document[0].body;
            errortip.relative = relative;
            $("<div>")
                .css("white-space", "pre-wrap")
                .addClass("ui-errortip-content")
                .appendTo(errortip);
            errortip.appendTo(relative);
            this.errortips[id] = element;
            return errortip;
        },

        _find: function (target) {
            var id = target.data("ui-errortip-id");
            return id ? $("#" + id) : $();
        },

        _removeerrortip: function (errortip) {
            errortip.remove();
            delete this.errortips[errortip.attr("id")];
        },

        _destroy: function () {
            var that = this;

            // close open errortips
            $.each(this.errortips, function (id, element) {
                // Delegate to close method to handle common cleanup
                var event = $.Event("blur");
                event.target = event.currentTarget = element[0];
                that.close(event, true);

                // Remove immediately; destroying an open errortip doesn't use the
                // hide animation
                $("#" + id).remove();

                // Restore the title
                if (element.data("ui-errortip-title")) {
                    element.attr("title", element.data("ui-errortip-title"));
                    element.removeData("ui-errortip-title");
                }
            });
        }
    });

    $.errortips = {
        setErrortip: function setErrortip(form) {
            form.find("[data-valmsg-for]").each(function () {
                var valmsg = $(this);
                if (valmsg.data("set-errortip") !== true) {
                    var targetName = $(this).attr("data-valmsg-for");
                    var inputIcon = $("<a href='javascript:void(0);' />").addClass("np-input-error-icon").attr("name", targetName).attr("tabindex", -1).append($("<span/>"));
                    var target = $("[name='" + targetName + "']");
                    if (target.is("input[type=text], input[type=password], input[type=checkbox], input[type=radio], select, textarea")) {
                        if (target.is("input[type=checkbox], input[type=radio]")) {
                            target = inputIcon;
                            target.click(function () {
                                $(this).focus();
                            });
                        }
                        else {
                            inputIcon.click(function () {
                                target.focus();
                            });
                        }
                        var parentTag = valmsg.parent("div");
                        if (parentTag && parentTag.css("display") === "flex" && !parentTag.hasClass("np-col")) {
                            // Flexboxの場合縦に並ばないようにdivで囲む
                            var errorTag = $("<div/>");
                            errorTag.append(inputIcon);
                            parentTag.after(errorTag);
                        } else {
                            valmsg.after(inputIcon);
                        }
                    }
                    target.errortip({
                        position: {
                            my: "left bottom-12",
                            at: "right-47 top",
                            using: function (position, feedback) {
                                if (feedback.target.element.scrollParent() && feedback.target.element.scrollParent()[0] !== document) {
                                    if (navigator.userAgent.indexOf('rv:11.0') >= 0 || navigator.userAgent.indexOf('MSIE') >= 0) {
                                        switch (window.getComputedStyle(feedback.target.element.scrollParent().get(0)).position) {
                                            case 'relative':
                                            case 'absolute':
                                            case 'fixed':
                                                position.left += feedback.target.element.scrollParent().scrollLeft();
                                                position.top += feedback.target.element.scrollParent().scrollTop();
                                                break;
                                            default:
                                                break;
                                        }
                                    }
                                }
                                if (isWin8IE()) {
                                    // Windows8のピンチインアウトの際に$().offsetが正しくない値を返すことによる
                                    // 座標のズレを補正する。
                                    var rect = feedback.target.element[0].getBoundingClientRect(),
                                    tooltip = $('<div class="kit-tooltip-position">').css({ top: 0, left: 0, position: 'absolute' }).appendTo($('body')[0]),
                                    trect = tooltip[0].getBoundingClientRect(),
                                    // rectとtrectの差は左上から要素までの位置の差を表す(ズレない)
                                    distanceLeft = rect.left - trect.left,
                                    distanceTop = rect.top - trect.top;

                                    // offsetはズレている場合がある。distanceとの差＝ズレている値
                                    var off = feedback.target.element.offset();
                                    var difLeft = off.left - distanceLeft;
                                    var difTop = off.top - distanceTop;

                                    // positionはズレている値がjQueryUIの処理で設定されているのでdifで補正する
                                    $(this).css({ top: position.top - difTop, left: position.left - difLeft });
                                    $('.kit-tooltip-position').remove();
                                }
                                else {
                                    $(this).css(position);
                                }
                                //左右のどちらに吹き出しを表示するかを判定
                                if (Math.abs(feedback.element.left - feedback.target.left) > Math.abs((feedback.element.left + feedback.element.width) - (feedback.target.width + feedback.target.left))){
                                    if (feedback.target.width > feedback.element.width){
                                        $(this).addClass(feedback.vertical)
                                               .addClass("left");
                                    } else {
                                        $(this).addClass(feedback.vertical)
                                               .addClass("right");
                                    }
                                } else {
                                    if (feedback.target.width > feedback.element.width){
                                        $(this).addClass(feedback.vertical)
                                               .addClass("right");
                                    } else {
                                        $(this).addClass(feedback.vertical)
                                               .addClass("left");
                                    }
                                }
                            }
                        },
                        errortipClass: "ui-balloon-right",
                        zIndex: 1700,
                        content: function () {
                            var element = $(this);
                            var name = element.attr("name");
                            return $("[data-valmsg-for='" + name + "']").html();
                        }
                    });
                    valmsg.data("set-errortip", true);
                }
            });

            function isWin8IE() {
                var ua = navigator.userAgent;
                if (ua.indexOf('MSIE 10.0') > -1 && ua.indexOf('Windows NT 6.2') > -1) {
                    return true;
                }
                else if (ua.indexOf('Trident') > -1 && ua.indexOf('rv:11.0') > -1 && ua.indexOf('Windows NT 6.3') > -1) {
                    return true;
                }
                else {
                    return false;
                }
            }
        },
        resetTargetPosition: function resetTargetPosition(form) {
            form.find("[data-valmsg-for]").each(function () {
                var targetName = $(this).attr("data-valmsg-for");
                var target = $("[name='" + targetName + "']");
                target.data("originalOffset", target.offset());
            });
        }
    };

    $(function () {
        //In order to run after all ready processing , nesting ready
        $(function () {
            $.errortips.setErrortip($("form"));
        });
    });
}(jQuery));
(function ($, undefined) {
    String.prototype.format = function () {
        var s = this,
            i = arguments.length;

        while (i--) {
            s = s.replace(new RegExp('\\{' + i + '\\}', 'gm'), arguments[i]);
        }
        return s;
    };
    $.widget("ui.pagenation", {
        version: "1.10.0",
        options: {
            text: "Page {0}/{1}", //{0}: current {1}: total
            totalPageNum: 1,
            currentPageNum: 1,
            changePage: null,
            popPageList: null,
            zIndex: 102
        },
        _create: function () {
            this.element.addClass("np-pagenation").addClass("ui-widget");
            this.pagenation = $("<ul class='np-pagenation-buttonlist' />");
            this.pagenation.append($("<li><a href='javascript:void(0);' class='np-pagenation-btn np-icon-first'></a></li>"));
            this.pagenation.append($("<li><a href='javascript:void(0);' class='np-pagenation-btn np-icon-prev'></a></li>"));
            this.pagenation.append($("<li><div class='np-pagenation-separater'></div></li>"));
            this.pagenation.append($("<li><a href='javascript:void(0);' class='np-pagenation-btn np-icon-select'></a></li>"));
            this.pagenation.append($("<li><div class='np-pagenation-separater'></div></li>"));
            this.pagenation.append($("<li><a href='javascript:void(0);' class='np-pagenation-btn np-icon-next'></a></li>"));
            this.pagenation.append($("<li><a href='javascript:void(0);' class='np-pagenation-btn np-icon-last'></a></li>"));
            this.element.append(this.pagenation);
            this._on(this.pagenation.find(".np-icon-first, .np-icon-prev, .np-icon-next, .np-icon-last"), { "click": this._clickPageBtn });
            this._on(this.pagenation.find(".np-icon-select"), { "click": this._selectPageBtn });
            this._render();
            this._setDisplay();
        },
        _destroy: function () {
            this.element.removeClass("np-pagenation").removeClass("ui-widget");
            this.element.empty();
        },
        _setOptions: function (options) {
            var that = this;
            $.each(options, function (key, value) {
                that._setOption(key, value);
            });
        },
        _setOption: function (key, value) {
            this._super(key, value);
            if (key === "totalPageNum" ||
                key === "currentPageNum") {
                this.pageList = null;
                this._render();
                this._setDisplay();
            }
            else if (key === "zIndex") {
                this.pageList = null;
            }
        },
        _setDisplay: function () {
            this.pagenation.find(".ui-pagenation-disabled").removeClass("ui-pagenation-disabled");
            if (parseInt(this.options.currentPageNum) >= parseInt(this.options.totalPageNum)) {
                this.pagenation.find(".np-icon-next, .np-icon-last").addClass("ui-pagenation-disabled");
            }
            if (parseInt(this.options.currentPageNum) <= 1) {
                this.pagenation.find(".np-icon-first, .np-icon-prev").addClass("ui-pagenation-disabled");
            }
        },
        disable: function () {
            this._super();
        },
        enable: function () {
            this._super();
        },
        _render: function () {
            this.pagenation.find(".np-icon-select").text(this.options.text.format(this.options.currentPageNum, this.options.totalPageNum));
        },
        _selectPageBtn: function (event) {
            var pl = this.element.parents("form").find('.np-pagenation-pagelist');
            if (pl.size() > 0) {
                pl.remove();
            }

            var ul = $("<ul class='np-pagenation-pagelist'/>").css("z-index", this.options.zIndex + 1);
            for (var i = 1; i <= this.options.totalPageNum; i++) {
                var pageBtn = $("<a href='javascript:void(0);' />").text(i).attr("data-pagenum", i);
                this._on(pageBtn, { "click": this._clickPageBtn });
                ul.append($("<li/>").append(pageBtn));
            }
            this.pageList = ul;
            this.element.parents("form").append(this.pageList);
            this._trigger("popPageList", event, this._uiHash(this));
            if (this.pageList.is(":hidden")) {
                this.pageList.show();
                this.pageList.scrollTop(0);
                this._trigger("popPageList", event, this._uiHash(this));
            }
            this.pageList.position({
                my: "left top",
                at: "left bottom",
                of: this.pagenation.find(".np-icon-select"),
                collision: "flipfit flip",
                using: function (position, feedback) {
                    if (feedback.target.element.scrollParent() && $(feedback.target.element.scrollParent()[0]).hasClass("np-dialog")) {
                        if (navigator.userAgent.indexOf('rv:11.0') >= 0 || navigator.userAgent.indexOf('MSIE') >= 0) {
                            position.left += feedback.target.element.scrollParent().scrollLeft();
                            position.top += feedback.target.element.scrollParent().scrollTop();
                        }
                    }
                    if (isWin8IE()) {
                        // Windows8.1での処理見直しのため、7.0.4以前の処理を削除
                        // Windows8のピンチインアウトの際に$().offsetが正しくない値を返すことによる
                        // 座標のズレを補正する。
                        var rect = feedback.target.element[0].getBoundingClientRect(),
                            tooltip = $('<div class="kit-tooltip-position">').css({ top: 0, left: 0, position: 'absolute' }).appendTo($('body')[0]),
                            trect = tooltip[0].getBoundingClientRect(),
                            // rectとtrectの差は左上から要素までの位置の差を表す(ズレない)
                            distanceLeft = rect.left - trect.left,
                            distanceTop = rect.top - trect.top;

                        // offsetはズレている場合がある。distanceとの差＝ズレている値
                        var off = feedback.target.element.offset();
                        var difLeft = off.left - distanceLeft;
                        var difTop = off.top - distanceTop;

                        // positionはズレている値がjQueryUIの処理で設定されているのでdifで補正する
                        $(this).css({ top: position.top - difTop, left: position.left - difLeft });
                        $('.kit-tooltip-position').remove();
                    }
                    else {
                        $(this).css(position);
                    }
                    $(this).addClass(feedback.vertical)
                        .addClass(feedback.horizontal);
                }
            });
            var that = this;
            this._showOverlayer(that.options.zIndex, function () {
                that._hidePageList();
                that._hideOverlayer();
                return false;
            });

            function isWin8IE() {
                var ua = navigator.userAgent;
                if (ua.indexOf('MSIE 10.0') > -1 && ua.indexOf('Windows NT 6.2') > -1) {
                    return true;
                }
                else if (ua.indexOf('Trident') > -1 && ua.indexOf('rv:11.0') > -1 && ua.indexOf('Windows NT 6.3') > -1) {
                    return true;
                }
                else {
                    return false;
                }
            }
        },
        _clickPageBtn: function (event) {
            var ele = $(event.currentTarget);
            var num = 1;
            if (ele.hasClass("np-icon-first")) {
                num = 1;
            }
            else if (ele.hasClass("np-icon-prev")) {
                if (parseInt(this.options.currentPageNum) <= 1) {
                    num = 1;
                }
                else {
                    num = parseInt(this.options.currentPageNum) - 1;
                }
            }
            else if (ele.hasClass("np-icon-next")) {
                if (parseInt(this.options.currentPageNum) >= parseInt(this.options.totalPageNum)) {
                    num = parseInt(this.options.totalPageNum);
                }
                else {
                    num = parseInt(this.options.currentPageNum) + 1;
                }
            }
            else if (ele.hasClass("np-icon-last")) {
                num = parseInt(this.options.totalPageNum);
            }
            else {
                num = parseInt(ele.attr("data-pagenum"));
                this._hidePageList();
                this._hideOverlayer();
            }
            var ui = this._uiHash(this);
            ui.selectedPageNum = parseInt(num);
            this._trigger("changePage", event, ui);
        },
        _hidePageList: function(){
            var pl = this.element.parents("form").find('.np-pagenation-pagelist');
            pl.hide();
        },
        _showOverlayer: function (zIndex, handle) {
            if ($(".np-overlayer").length === 0) {
                var bk = $("<div class='np-overlayer'></div>");
                bk.css("z-index", zIndex);
                var body = $("body");
                bk.width(body.width());
                bk.height(body.height());
                bk.css("left", 0).css("top", 0);
                bk.on("click touchstart MSPointerDown pointerdown", function () {
                    handle();
                });
                this.element.parents("form").append(bk);
            }
        },
        _hideOverlayer: function () {
            $(".np-overlayer").remove();
        },
        _getCreateEventData: function () {
            return this._uiHash(this);
        },
        _uiHash: function (_inst) {
            var inst = _inst || this;
            return {
                currentPageNum: parseInt(inst.options.currentPageNum),
                totalPageNum: parseInt(inst.options.totalPageNum),
                pageList: inst.pageList,
                pagenation: inst.pagenation,
                sender: inst.element
            };
        }
    });
})(jQuery);

(function ($, undefined) {
    $.ui.dialog.prototype._oldinit = $.ui.dialog.prototype._init;
    $.ui.dialog.prototype._init = function () {
        if (isiPad()) {
            $(this.element).parent().css("position", "absolute");
            $("body").addClass("ios");
        }
        else {
            $(this.element).parent().css("position", "fixed");
        }
        $(this.element).dialog("option", {
            resizeStop: function (event, ui) {
                var position = [(Math.floor(ui.position.left) - $(window).scrollLeft()),
                                (Math.floor(ui.position.top) - $(window).scrollTop())];
                if (isiPad()) {
                    $(event.target).parent().css("position", "absolute");
                }
                else {
                    $(event.target).parent().css("position", "fixed");
                }
                $(event.target).dialog("option", "position", position);
                return true;
            }
        });
        this._oldinit();
    };


    $.ui.dialog.prototype._oldopen = $.ui.dialog.prototype.open;
    $.ui.dialog.prototype.open = function () {
        if (isiPad() === true) {
            var target = this.element;
            var dialog = this.uiDialog;
            var win = window;
            var position = {
                of: window,
                using: function (position, feedback) {
                    var st = $(win).scrollTop();
                    var wh = win.innerHeight ? win.innerHeight : $(win).height();
                    var ww = $(win).width();
                    var wot = 0;
                    var wol = 0;
                    var dh = $(dialog).height();
                    var dw = $(dialog).width();
                    if (isiPad() === true) {
                        try {
                            win = getBaseWindow();
                            if (isWindowObj($(win)) === true && win !== window) {
                                wh = win.innerHeight ? win.innerHeight : $(win).height();
                                var winName = window.name;
                                var wo = $(win.document).find("[name=" + winName + "]").offset();
                                wot = wo ? wo.top : 0;
                                wol = wo ? wo.left : 0;
                                st = $(win).scrollTop();
                            }
                        }
                        catch (e) {
                            wh = 672;
                        }
                    }
                    var x = wol;
                    var y = wh / 2 - dh / 2 - wot + st;
                    var p = $(dialog).position({
                        my: "center top",
                        at: "center-" + String(x) + " top+" + String(y),
                        of: window
                    });
                }
            };
            this.options.position = position;
            $(dialog).css("position", "absolute");
            this._oldopen();
        }
        else {
            this._oldopen();
        }
    };
    function isiPad() {
        var ua = navigator.userAgent;
        //check user-agent
        if (ua.indexOf('iPhone') > -1 || ua.indexOf('iPad') > -1 || ua.indexOf('iPod') > -1) {
            return true;
        } else {
            return false;
        }
    }
    function getBaseWindow() {
        if (isiPad() === true) {
            var win = window;
            if (window.parent !== undefined && window.parent !== null && window.parent !== window) {
                win = window.parent;
            }
            return win;
        }
        else {
            return window;
        }
    }
    function isWindowObj(obj) {
        if (obj instanceof jQuery) {
            obj = obj[0];
        }
        var type = Object.prototype.toString.call(obj);
        return type.toLocaleLowerCase() === "[object window]" || type.toLocaleLowerCase() === "[object global]";
    }
}(jQuery));