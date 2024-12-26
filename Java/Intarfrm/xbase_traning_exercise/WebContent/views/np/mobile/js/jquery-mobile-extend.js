/*! jQuery UI - v1.11.2 - 2015-02-09
* http://jqueryui.com
* Includes: position.js
* Copyright 2015 jQuery Foundation and other contributors; Licensed MIT */

(function(e){"function"==typeof define&&define.amd?define(["jquery"],e):e(jQuery)})(function(e){(function(){function t(e,t,i){return[parseFloat(e[0])*(p.test(e[0])?t/100:1),parseFloat(e[1])*(p.test(e[1])?i/100:1)]}function i(t,i){return parseInt(e.css(t,i),10)||0}function s(t){var i=t[0];return 9===i.nodeType?{width:t.width(),height:t.height(),offset:{top:0,left:0}}:e.isWindow(i)?{width:t.width(),height:t.height(),offset:{top:t.scrollTop(),left:t.scrollLeft()}}:i.preventDefault?{width:0,height:0,offset:{top:i.pageY,left:i.pageX}}:{width:t.outerWidth(),height:t.outerHeight(),offset:t.offset()}}e.ui=e.ui||{};var n,a,o=Math.max,r=Math.abs,h=Math.round,l=/left|center|right/,u=/top|center|bottom/,d=/[\+\-]\d+(\.[\d]+)?%?/,c=/^\w+/,p=/%$/,f=e.fn.position;e.position={scrollbarWidth:function(){if(void 0!==n)return n;var t,i,s=e("<div style='display:block;position:absolute;width:50px;height:50px;overflow:hidden;'><div style='height:100px;width:auto;'></div></div>"),a=s.children()[0];return e("body").append(s),t=a.offsetWidth,s.css("overflow","scroll"),i=a.offsetWidth,t===i&&(i=s[0].clientWidth),s.remove(),n=t-i},getScrollInfo:function(t){var i=t.isWindow||t.isDocument?"":t.element.css("overflow-x"),s=t.isWindow||t.isDocument?"":t.element.css("overflow-y"),n="scroll"===i||"auto"===i&&t.width<t.element[0].scrollWidth,a="scroll"===s||"auto"===s&&t.height<t.element[0].scrollHeight;return{width:a?e.position.scrollbarWidth():0,height:n?e.position.scrollbarWidth():0}},getWithinInfo:function(t){var i=e(t||window),s=e.isWindow(i[0]),n=!!i[0]&&9===i[0].nodeType;return{element:i,isWindow:s,isDocument:n,offset:i.offset()||{left:0,top:0},scrollLeft:i.scrollLeft(),scrollTop:i.scrollTop(),width:s||n?i.width():i.outerWidth(),height:s||n?i.height():i.outerHeight()}}},e.fn.position=function(n){if(!n||!n.of)return f.apply(this,arguments);n=e.extend({},n);var p,m,g,v,y,b,_=e(n.of),x=e.position.getWithinInfo(n.within),w=e.position.getScrollInfo(x),k=(n.collision||"flip").split(" "),T={};return b=s(_),_[0].preventDefault&&(n.at="left top"),m=b.width,g=b.height,v=b.offset,y=e.extend({},v),e.each(["my","at"],function(){var e,t,i=(n[this]||"").split(" ");1===i.length&&(i=l.test(i[0])?i.concat(["center"]):u.test(i[0])?["center"].concat(i):["center","center"]),i[0]=l.test(i[0])?i[0]:"center",i[1]=u.test(i[1])?i[1]:"center",e=d.exec(i[0]),t=d.exec(i[1]),T[this]=[e?e[0]:0,t?t[0]:0],n[this]=[c.exec(i[0])[0],c.exec(i[1])[0]]}),1===k.length&&(k[1]=k[0]),"right"===n.at[0]?y.left+=m:"center"===n.at[0]&&(y.left+=m/2),"bottom"===n.at[1]?y.top+=g:"center"===n.at[1]&&(y.top+=g/2),p=t(T.at,m,g),y.left+=p[0],y.top+=p[1],this.each(function(){var s,l,u=e(this),d=u.outerWidth(),c=u.outerHeight(),f=i(this,"marginLeft"),b=i(this,"marginTop"),D=d+f+i(this,"marginRight")+w.width,S=c+b+i(this,"marginBottom")+w.height,N=e.extend({},y),M=t(T.my,u.outerWidth(),u.outerHeight());"right"===n.my[0]?N.left-=d:"center"===n.my[0]&&(N.left-=d/2),"bottom"===n.my[1]?N.top-=c:"center"===n.my[1]&&(N.top-=c/2),N.left+=M[0],N.top+=M[1],a||(N.left=h(N.left),N.top=h(N.top)),s={marginLeft:f,marginTop:b},e.each(["left","top"],function(t,i){e.ui.position[k[t]]&&e.ui.position[k[t]][i](N,{targetWidth:m,targetHeight:g,elemWidth:d,elemHeight:c,collisionPosition:s,collisionWidth:D,collisionHeight:S,offset:[p[0]+M[0],p[1]+M[1]],my:n.my,at:n.at,within:x,elem:u})}),n.using&&(l=function(e){var t=v.left-N.left,i=t+m-d,s=v.top-N.top,a=s+g-c,h={target:{element:_,left:v.left,top:v.top,width:m,height:g},element:{element:u,left:N.left,top:N.top,width:d,height:c},horizontal:0>i?"left":t>0?"right":"center",vertical:0>a?"top":s>0?"bottom":"middle"};d>m&&m>r(t+i)&&(h.horizontal="center"),c>g&&g>r(s+a)&&(h.vertical="middle"),h.important=o(r(t),r(i))>o(r(s),r(a))?"horizontal":"vertical",n.using.call(this,e,h)}),u.offset(e.extend(N,{using:l}))})},e.ui.position={fit:{left:function(e,t){var i,s=t.within,n=s.isWindow?s.scrollLeft:s.offset.left,a=s.width,r=e.left-t.collisionPosition.marginLeft,h=n-r,l=r+t.collisionWidth-a-n;t.collisionWidth>a?h>0&&0>=l?(i=e.left+h+t.collisionWidth-a-n,e.left+=h-i):e.left=l>0&&0>=h?n:h>l?n+a-t.collisionWidth:n:h>0?e.left+=h:l>0?e.left-=l:e.left=o(e.left-r,e.left)},top:function(e,t){var i,s=t.within,n=s.isWindow?s.scrollTop:s.offset.top,a=t.within.height,r=e.top-t.collisionPosition.marginTop,h=n-r,l=r+t.collisionHeight-a-n;t.collisionHeight>a?h>0&&0>=l?(i=e.top+h+t.collisionHeight-a-n,e.top+=h-i):e.top=l>0&&0>=h?n:h>l?n+a-t.collisionHeight:n:h>0?e.top+=h:l>0?e.top-=l:e.top=o(e.top-r,e.top)}},flip:{left:function(e,t){var i,s,n=t.within,a=n.offset.left+n.scrollLeft,o=n.width,h=n.isWindow?n.scrollLeft:n.offset.left,l=e.left-t.collisionPosition.marginLeft,u=l-h,d=l+t.collisionWidth-o-h,c="left"===t.my[0]?-t.elemWidth:"right"===t.my[0]?t.elemWidth:0,p="left"===t.at[0]?t.targetWidth:"right"===t.at[0]?-t.targetWidth:0,f=-2*t.offset[0];0>u?(i=e.left+c+p+f+t.collisionWidth-o-a,(0>i||r(u)>i)&&(e.left+=c+p+f)):d>0&&(s=e.left-t.collisionPosition.marginLeft+c+p+f-h,(s>0||d>r(s))&&(e.left+=c+p+f))},top:function(e,t){var i,s,n=t.within,a=n.offset.top+n.scrollTop,o=n.height,h=n.isWindow?n.scrollTop:n.offset.top,l=e.top-t.collisionPosition.marginTop,u=l-h,d=l+t.collisionHeight-o-h,c="top"===t.my[1],p=c?-t.elemHeight:"bottom"===t.my[1]?t.elemHeight:0,f="top"===t.at[1]?t.targetHeight:"bottom"===t.at[1]?-t.targetHeight:0,m=-2*t.offset[1];0>u?(s=e.top+p+f+m+t.collisionHeight-o-a,e.top+p+f+m>u&&(0>s||r(u)>s)&&(e.top+=p+f+m)):d>0&&(i=e.top-t.collisionPosition.marginTop+p+f+m-h,e.top+p+f+m>d&&(i>0||d>r(i))&&(e.top+=p+f+m))}},flipfit:{left:function(){e.ui.position.flip.left.apply(this,arguments),e.ui.position.fit.left.apply(this,arguments)},top:function(){e.ui.position.flip.top.apply(this,arguments),e.ui.position.fit.top.apply(this,arguments)}}},function(){var t,i,s,n,o,r=document.getElementsByTagName("body")[0],h=document.createElement("div");t=document.createElement(r?"div":"body"),s={visibility:"hidden",width:0,height:0,border:0,margin:0,background:"none"},r&&e.extend(s,{position:"absolute",left:"-1000px",top:"-1000px"});for(o in s)t.style[o]=s[o];t.appendChild(h),i=r||document.documentElement,i.insertBefore(t,i.firstChild),h.style.cssText="position: absolute; left: 10.7432222px;",n=e(h).offset().left,a=n>10&&11>n,t.innerHTML="",i.removeChild(t)}()})(),e.ui.position});
//errortip
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
                focusin: "open"
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
            //if (this.options.track && event && /^mouse/.test(event.type)) {
            //    this._on(this.document, {
            //        mousemove: position
            //    });
            //    // trigger once to override element-relative positioning
            //    position(event);
            //} else {
            errortip.position($.extend({
                of: target
            }, this.options.position));
            //}

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
                        (this.options.errortipClass || ""));
            $("<div>")
                .addClass("ui-errortip-content")
                .appendTo(errortip);
            errortip.appendTo(this.document[0].body);
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
        setErrorSummary: function (form) {
            var summaryIcon = $("<a href='javascript:void(0);'/>").addClass("np-input-error-icon").attr("name", "validationSummary").append($("<span/>"));
            var summary = form.find("[data-valmsg-summary]");
            if (summary.data("set-errorsummary") !== true) {
                form.find("[data-valmsg-summary]>span").text($("[data-valmsg-summary]>span").text().format($("[data-valmsg-summary]>ul>li").length));
                form.find("[data-valmsg-summary]").prepend(summaryIcon);
                summary.data("set-errorsummary", true);
            }
        },
        setErrortip: function setErrortip(form) {
            form.find("[data-valmsg-for]").each(function () {
                var valmsg = $(this);
                if (valmsg.data("set-errortip") !== true) {
                    var targetName = $(this).attr("data-valmsg-for");
                    var inputIcon = $("<a href='javascript:void(0);' />").addClass("np-input-error-icon").attr("name", targetName).attr("tabindex", -1).append($("<span/>"));
                    var target = $("[name='" + targetName + "']");
                    if (target.is("input[type=text], input[type=password], input[type=checkbox], input[type=radio], select, textarea")) {
                        if (target.is("input[type=checkbox], input[type=radio], select")) {
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
                        valmsg.after(inputIcon);
                    }
                    target.errortip({
                        position: {
                            my: "left bottom-12",
                            at: "left top",
                            using: function (position, feedback) {
                                var oldHeight = $(this).height();
                                $(this).css(position);
                                var newHeight = $(this).height();

                                if (oldHeight != newHeight) {
                                    $(this).css("top", (position.top - (newHeight - oldHeight)));
                                }

                                $(this).addClass(feedback.vertical)
                                       .addClass(feedback.horizontal);
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
        }
    };

    $(function () {
        //In order to run after all ready processing , nesting ready
        $(function () {
            $.errortips.setErrorSummary($("form"));
            $.errortips.setErrortip($("form"));
        });
    });
}(jQuery));

//pagenation
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
            zIndex: 100
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
            if (!this.pageList) {
                var ul = $("<ul class='np-pagenation-pagelist'/>").css("z-index", this.options.zIndex);
                for (var i = 1; i <= this.options.totalPageNum; i++) {
                    var pageBtn = $("<a href='javascript:void(0);' />").text(i).attr("data-pagenum", i);
                    this._on(pageBtn, { "click": this._clickPageBtn });
                    ul.append($("<li/>").append(pageBtn));
                }
                this.pageList = ul;
                this.element.append(this.pageList);
                this._trigger("popPageList", event, this._uiHash(this));
            }
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
                    $(this).css(position);
                    $(this).addClass(feedback.vertical)
                            .addClass(feedback.horizontal);
                }
            });
            var that = this;
            this._showOverlayer(that.options.zIndex - 1, function () {
                that.pageList.hide();
                that._hideOverlayer();
                return false;
            });
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
                this.pageList.hide();
                this._hideOverlayer();
            }
            var ui = this._uiHash(this);
            ui.selectedPageNum = parseInt(num);
            this._trigger("changePage", event, ui);
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
                $("body").append(bk);
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

//footerlist
(function ($, undefind) {
    $.widget("ui.footerlist", {
        version: "1.10.0",
        options: {
            content: "ohter",
            count: 4,
            inSpeed: 100,
            outSpeed: 75,
            zIndex: 800
        },
        _create: function () {
            var that = this;
            var $lis = that.element;
            if ($lis.find("li").length <= 5) {
                return false;
            }

            that.options.content = that.element.attr("data-other-label") ? that.element.attr("data-other-label") : that.options.content;

            var $otherli = $("<li />").append($("<a class='np-icon-other' href='javascript:void(0);' />").text(that.options.content));

            var $ul = $("<ul class='np-footer-list' />");
            $ul.append($lis.find("li").slice(that.options.count));
            $ul.css("z-index", that.options.zIndex + 1).hide();
            $lis.find("li").slice(that.options.count).remove();
            $otherli.append($ul);


            $lis.append($otherli);

            $ul.find("a").click(function () {
                $ul.slideUp(that.options.outSpeed);
                that._hideOverlayer();
                return false;
            });

            $otherli.children("a[class='np-icon-other']").click(function () {
                $ul.slideDown(that.options.inSpeed);
                that._hideOverlayer();

                that._showOverlayer(that.options.zIndex, function () {
                    $ul.slideUp(that.options.outSpeed);
                    that._hideOverlayer();
                    return false;
                });
                return false;
            });
        },
        _destroy: function () {

        },
        _showOverlayer: function (zIndex, handle) {
            var bk = $("<div class='np-overlayer'></div>");
            bk.css("z-index", zIndex);
            var body = $("body");
            bk.width(body.width());
            bk.height(body.height());
            bk.css("left", 0).css("top", 0);
            bk.on("click touchstart MSPointerDown pointerdown", function () {
                handle();
            });
            $("body").append(bk);
        },
        _hideOverlayer: function () {
            $(".np-overlayer").remove();
        }
    });
}(jQuery));