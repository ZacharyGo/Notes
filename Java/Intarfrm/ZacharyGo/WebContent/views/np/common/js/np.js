(function (window) {
    'use strict';

    var kitnp, kit, intarfrm = window.fujitsu.intarfrm,
        helpers = window.fujitsu.intarfrm.helpers,
        fwConstants = helpers.fwConstants,
        formDialogSelector = fwConstants.formDialogSelector,
        loadDialogSelector = fwConstants.loadDialogSelector,
        codeDialogSelector = fwConstants.codeDialogSelector,
        formContentSelector = fwConstants.formContentSelector;


    window.fujitsu.intarfrm.kitnp = kitnp = {
        /**
        * ページャーを描画します。
        */
        renderPager: function (formId, target) {
            var pager = $(target),
           listId = pager.data('np-pager-listid').toLowerCase(),
           totalCount = pager.data('np-pager-total'),
           currentNo = pager.data('np-pager-currentno'),
           rowCount = pager.data('np-pager-rowcount'),
           isCode = pager.data('np-pager-type') === "code",
           targetId = !isCode ? formId + "----" + listId : 'code--' + pager.data('np-pager-codeid').toLowerCase() + '----search_result_part',
           actionId = isCode ? '_code_reference' : '_' + listId + '_paging',
           getArgs;

            pager.pagenation({
                totalPageNum: totalCount,
                currentPageNum: currentNo,

                changePage: function (event, ui) {
                    //現在のページ番号を更新する
                    pager.pagenation("option", "currentPageNum", ui.selectedPageNum);
                },
                popPageList: function (event, ui) {
                    // 各ページャ要素について必要な属性を設定
                    $('.np-pagenation-pagelist a[data-pagenum]').each(function () {
                        getArgs = isCode ? 'start=' + ($(this).data('pagenum') - 1) * rowCount + pager.data('np-pager-getargs') + '&actionType=paging' : 'pageNo=' + $(this).data('pagenum');
                        $(this).attr('data-action-id', actionId).attr('data-action-target', targetId).attr('data-action-get-args', getArgs);
                    });
                }
            });
            // 現在有効なグループの場合のみ、ページャーとして使用可能
            if (pager.attr('data-np-pager-enabled') && pager.attr('data-np-pager-enabled').toLowerCase() === "false") {
                pager.pagenation("disable");
            }
            if (isCode) {
                pager.find('.np-pagenation-btn:not(.ui-pagenation-disabled):not(.np-icon-select)').attr('data-action-id', actionId).attr('data-action-target', targetId);
                pager.find('.np-pagenation-btn.np-icon-first:not(.ui-pagenation-disabled)').attr('data-action-get-args', 'actionType=paging&start=0' + pager.data('np-pager-getargs'));
                pager.find('.np-pagenation-btn.np-icon-prev:not(.ui-pagenation-disabled)').attr('data-action-get-args', 'actionType=paging&start=' + (currentNo - 2) * rowCount + pager.data('np-pager-getargs'));
                pager.find('.np-pagenation-btn.np-icon-next:not(.ui-pagenation-disabled)').attr('data-action-get-args', 'actionType=paging&start=' + (currentNo) * rowCount + pager.data('np-pager-getargs'));
                pager.find('.np-pagenation-btn.np-icon-last:not(.ui-pagenation-disabled)').attr('data-action-get-args', 'actionType=paging&start=' + totalCount * rowCount + pager.data('np-pager-getargs'));
            } else {
                pager.find('.np-pagenation-btn:not(.ui-pagenation-disabled):not(.np-icon-select)').attr('data-action-id', actionId).attr('data-action-target', targetId);
                pager.find('.np-pagenation-btn.np-icon-first:not(.ui-pagenation-disabled)').attr('data-action-get-args', 'pageNo=1');
                pager.find('.np-pagenation-btn.np-icon-prev:not(.ui-pagenation-disabled)').attr('data-action-get-args', 'pageNo=' + (currentNo - 1));
                pager.find('.np-pagenation-btn.np-icon-next:not(.ui-pagenation-disabled)').attr('data-action-get-args', 'pageNo=' + (currentNo + 1));
                pager.find('.np-pagenation-btn.np-icon-last:not(.ui-pagenation-disabled)').attr('data-action-get-args', 'pageNo=' + totalCount);
            }
        },

        /**
        * 画面上のメッセージ領域にメッセージを出力します。
        * 入力エラーについてはツールチップでエラーを表示します。
        */
        renderMessageArea: function (formInfo) {
            var ul,
                formMessages = formInfo.formUtil.getMessages('crlf'),
                messages = formInfo.skeleton.messages,
            messageArea = $(fwConstants.formMessageArea(formInfo.formId, true));

            // メッセージオブジェクトがない場合は、メッセージを変更しない
            if (!formMessages) { return; }

            // 現在メッセージ対象項目に設定されている画面項目のclassを取り除きます。
            $('#' + formInfo.formId + ' .np-input-validation-error').removeClass('np-input-validation-error');
            // メッセージツールチップの表示用の要素および後方のアイコンを取り除きます。
            $('#' + formInfo.formId + ' .np-field-validation-error').each(function () {
                var targetName = $(this).attr("data-valmsg-for"),
                    target = $(" .np-input-error-icon[name='" + targetName + "']"),
                    parentTag = $(this).parent("div");
                if (parentTag && parentTag.css("display") === "flex" && !parentTag.hasClass("np-col")) {
                    // Flexboxの場合divごと取り除きます。
                    target.parent("div").remove();
                } else {
                    target.remove();
                }
                $(this).remove();
            });
            // メッセージなしの場合にはメッセージエリアをクリアし、非表示にする。
            if (formMessages.length === 0) { messageArea.html('').hide(); return; }

            // 対象要素が設定されている場合は入力エラー、設定されていない場合は業務エラーとして扱う
            var inputErrors = [], businessErrors = [];
            $.each(formMessages, function (i, msg) {
                if ($.isArray(msg.target) && msg.target.length > 0) {
                    inputErrors.push(msg);
                } else {
                    businessErrors.push(msg);
                }
            });
            ul = $('<ul>');
            // メッセージ領域のHTMLを構成します。
            if (formMessages.length > 0) {
                messageArea.html('').show();
                // 入力エラーの場合にはエラー件数を表示する
                if (inputErrors.length > 0) {
                    ul.append($('<li>').append($('<span/>').text(inputErrors.length + "件の入力エラーがあります")));
                }
                // 業務エラーの場合は、詳細なメッセージを表示する
                if (businessErrors.length > 0) {
                    $.each(businessErrors, function (i, msg) {
                        ul.append($('<li>').append($('<span/>').text(messages.createText(msg))));
                    });
                }
                messageArea.append(ul);
            }
            // 入力エラーについてはメッセージツールチップの表示用の要素の埋め込みを行います。
            $.each(inputErrors, function (i, msg) {
                if ($.isArray(msg.target) && msg.target.length > 0) {
                    $.each(msg.target, function () {
                        var targetElements, index,
                            targetItemInfo = formInfo.formUtil.getFormItemInfoByFormItemId(this.formItemId),
                            listInfo = formInfo.formLists[targetItemInfo.listId];
                        //indexは絶対行インデックス指定にする
                        if (listInfo) {
                            if (this.absIndex >= 0) {
                                if (this.absIndex < listInfo.startIndex || this.absIndex >= listInfo.startIndex + listInfo.currentDisplayRowCount) {
                                    return true; // eachのcontinue
                                }
                                index = this.absIndex - listInfo.startIndex;
                            } else {
                                index = this.rowIndex;
                            }
                            if (index < 0) { return true; } // eachのcontinue
                        }
                        targetElements = helpers.utils.getElementsByFormItemId(formInfo.formId, this.formItemId, index);
                        // 同じ項目にメッセージが2つ以上ある場合に1つしか表示されない問題に対応
                        if (!$(targetElements).hasClass('np-input-validation-error')) {
                            // 対象要素のclassにinput-validation-errorを追加
                            $(targetElements).addClass('np-input-validation-error');
                            var errorMsg = $('<span>').text(messages.createText(msg)).addClass('np-field-validation-error').attr('data-valmsg-for', targetElements[0].name).attr('data-valmsg-replace', true);
                            if (targetItemInfo.controlId === 'rdo' || targetItemInfo.controlId === 'chl') {
                                if (!$.mobile) {
                                    // PC・タブレット版の場合
                                    var unitElements = $(targetElements).closest('ul.np-control-group');
                                    if (unitElements.length > 0) {
                                        if (unitElements.length > 1) {
                                            var parentTag = $(unitElements.last()).parent("div");
                                            if (parentTag) {
                                                unitElements = parentTag;
                                            }
                                        }
                                        unitElements.last().after(errorMsg);
                                    } else {
                                        $(targetElements).last().after(errorMsg);
                                    }
                                } else {
                                    // スマートフォン版の場合
                                    $(targetElements).parent().last().after(errorMsg);
                                }
                            } else if (targetItemInfo.controlId === 'chk') {
                                $(targetElements[0]).next().after(errorMsg);
                            } else {
                                $(targetElements[0]).after(errorMsg);
                            }
                        } else {
                            var tooltipMessages = $("span[data-valmsg-for='" + targetElements[0].name + "']");
                            tooltipMessages.html(tooltipMessages.html()
                                + "<br>" + $('<span>').text(messages.createText(msg)).html());
                        }
                    });
                }
            });
            // ツールチップ部品の呼び出し
            $.errortips.setErrortip($('form'));
            if ($.errortips.resetTargetPosition) {
                $.errortips.resetTargetPosition($('form'));
            }
        },

        /**
        * リソースの読み込みを行います。
        */
        loadResources: function (formInfo) {
            formInfo.formUtil.loadProjectCommonResource(['ListNoRecordCode', 'CodeCloseBtn'], formInfo.culture);
        },

        /**
         * ウィンドウを閉じる
         */
        closeWindow: function (context, data, xhr) {
            if (context.actionId === "_closewindow") {
                if (!/Chrome/i.test(navigator.userAgent)) {
                    window.open("about:blank", "_self").close();
                } else {
                    window.location.href = "about:blank";
                }
                return true;
            }
            return false;
        },
        /**
        * INTARFRMが使用するSkeletonの関数の一部の処理を書き換えます。
        */
        changeFunction: function (formInfo) {
            if (!formInfo) { return; }
            var formUtil = formInfo.formUtil;

            /**
            * openLoadingDialogに関して、ダイアログを開く際のサイズを変更しています。
            */
            formInfo.skeleton.utils.openLoadingDialog = function () {
                var focusItem = document.activeElement;

                // すでに起動している場合には実行しません。
                if ($(loadDialogSelector).hasClass('ui-dialog-content')) {
                    return;
                }
                // 展開時にdocument.activeElementがフォーカス不可な要素に設定されている場合、親にフォーカス可能な要素が無いか探し、存在する場合にはフォーカスを行います。
                if ($(document.activeElement).is(':not(:focusable)') && $(document.activeElement).parent('a,button').filter(':focusable').length > 0 && !$.mobile) {
                    $(document.activeElement).parent('a,button').focus();
                }
                $(loadDialogSelector).dialog({
                    autoOpen: false,
                    height: 140,
                    width: 140,
                    modal: true,
                    closeOnEscape: false,
                    draggable: false,
                    resizable: false,
                    hide: true,
                    show: true,
                    dialogClass: fwConstants.loadDialogClass
                });

                if (focusItem) {
                    $(loadDialogSelector).data('focusItem', focusItem);
                }
                if ($.mobile) {
                    // ローディング画像表示
                    $.mobile.loading('show');
                    $(document.activeElement).blur();
                } else {
                    // ダイアログを表示
                    $(loadDialogSelector).dialog('open');
                    $('.ui-widget-overlay.ui-front + *').filter(':has(' + loadDialogSelector + ')').prev().addClass('ifm-loading-overlay');
                    $(document.activeElement).blur();
                }
            };

            // intarfrm-skeleton.jsのonCloseCodeDialogの処理も行うため一時的に保持します。
            var baseOnClose = formInfo.skeleton.codes.onCloseCodeDialog;

            /**
            * onCloseCodeDialogに関してはモバイル版の場合にコード参照画面を閉じる後に特定のclass属性を除去する処理を追加しています。
            */
            formInfo.skeleton.codes.onCloseCodeDialog = function (onClosed) {
                baseOnClose(onClosed);
                if (!$.mobile) {
                    $(codeDialogSelector).removeClass("np-main np-dialog");
                }
            };

            /**
            * openCodeDialogに関しては、コード参照画面を開く際に閉じるボタンを追加しています。
            */
            formInfo.skeleton.codes.openCodeDialog = function (context) {
                var windowInfo = context.code.windowInfo.sizes, wrapper;

                // ダイアログを表示
                if ($.mobile) {
                    $.mobile.changePage(codeDialogSelector, { changeHash: false });
                    $(codeDialogSelector + ' .ifm-code-close-button').on('click', function () {
                        formInfo.skeleton.codes.onCloseCodeDialog();
                    });
                }
                else {
                    wrapper = $('<div />').attr('style', 'position:relative').appendTo('body');
                    $(codeDialogSelector).dialog({
                        height: windowInfo.height, width: windowInfo.width,
                        title: context.code.caption,
                        modal: true, autoOpen: false,
                        resizable: false,
                        appendTo: wrapper,
                        close: function (event, ui) {
                            formInfo.skeleton.codes.onCloseCodeDialog(true);
                            wrapper.remove();
                        },
                        buttons: {
                            "Close": function () {
                                $(codeDialogSelector).dialog('close');
                            }
                        }
                    }).dialog('open').addClass("np-main np-dialog");
                    $(wrapper).find('.ui-dialog-buttonpane span.ui-button-text').html(formUtil.getProjectCommonResource('CodeCloseBtn'));
                }
            };

            /**
            * showMessageに関してはnp.jsが提供しているrenderMessageAreaの呼び出しに変更します。
            */
            formInfo.skeleton.messages.showMessage = function () {
                window.fujitsu.intarfrm.kitnp.renderMessageArea(formInfo);
            };

            /**
            * showCodeMessageに関してはメッセージの構成、表示領域の位置を変更している。
            */
            formInfo.skeleton.messages.showCodeMessage = function (context) {
                var formItemId = context.formItemId,
                codes = formInfo.codes[formItemId], codeId = codes.codeInfo.codeId,
                codeMessageAreaSelector = fwConstants.codeMessageArea(codeId, true);

                // メッセージオブジェクトがない場合は、メッセージを変更しない
                if (!codes.messages || !$.isArray(codes.messages)) { return; }

                if ($.mobile && codes.messages.length === 0 && !context.code.codeData) {
                    // モバイル版の場合には検索結果が0件の場合のメッセージはJavaScriptで設定する
                    formUtil.addCodeMessage(context.code.formItemId, formUtil.getProjectCommonResource('ListNoRecordCode'));
                }

                $(codeMessageAreaSelector).html('');

                if (codes.messages.length === 0) {
                    // メッセージなし
                    $(codeMessageAreaSelector).hide();
                } else {
                    $(codeMessageAreaSelector).show();
                }

                $.each(formInfo.formUtil.getCodeMessages(formItemId, 'lf'), function (i, info) {
                    $('<div/>').addClass('np-message').append($('<span/>').text(formInfo.skeleton.messages.createText(info))).appendTo($(codeMessageAreaSelector));
                });
            };

            /**
            * formActionCommonCallBackに関しては閉じるボタンの処理を行います。
            */
            formInfo.skeleton.actions.formActionCommonCallBack = function (context, data, xhr) {
                if (data && data.__frameworkData) {
                    // URLが指定されている場合には画面遷移を行います。
                    if (formInfo.skeleton.actions.changeLocationHref(context, data, xhr)) {
                        // 画面遷移を行った場合はreturnします。
                        return;
                    }

                    // モバイルの場合終了ボタンを使用しない。
                    if (!$.mobile && kitnp.closeWindow(context, data, xhr)) {
                        // 後続処理を中断する。
                        return;
                    }

                    // ファイルダウンロードアクションの場合にはファイルダウンロード処理を行います。
                    formInfo.skeleton.actions.executeFdw(context, data, xhr);

                    // 部分書き換え用のHTMLが設定されている場合には画面の部分書き換えを行います。
                    formInfo.skeleton.actions.replaceHtmlElement(context, data, xhr, formContentSelector);

                    // メッセージを出力します。
                    formInfo.skeleton.messages.showMessage();

                    // フォーカス処理を行います。
                    formInfo.skeleton.actions.setFocus(context, data, xhr);
                }
            };

            /**
            * renderMessageDialogに関してはメッセージのHTML構成とボタンの標題を変更しています。
            */
            formInfo.skeleton.messages.renderMessageDialog = function (messageTexts, callBack) {
                var ul, div, wrapper, anchor;

                if ($.isArray(messageTexts)) {
                    ul = $('<ul/>');
                    $(messageTexts).each(function () {
                        ul.append(($('<li/>')).append($('<span />').text(this)));
                    });

                    if ($.mobile) {
                        anchor = $('<a href="javascript:void(0)" />').attr('data-role', 'button').attr('data-dialog-button', 'close').html('OK');
                        if ($(formDialogSelector).find('div [data-role=content]')[0]) {
                            // 以前にメッセージダイアログとして開いている場合
                            $(formDialogSelector).find('div [data-role=content]').html(ul.append(anchor));
                        } else {
                            // ダイアログとして使用していない場合には初期化
                            div = $('<div />').attr('data-role', 'content');
                            $(formDialogSelector).html(div.append(ul).append(anchor));
                        }
                        formInfo.skeleton.utils.updateJqmStyle(formDialogSelector);
                        $.mobile.changePage(formDialogSelector, { changeHash: false, role: 'dialog' });
                    } else {
                        wrapper = $('<div />').attr('style', 'position:relative; white-space: pre-wrap;').appendTo('body');
                        $(formDialogSelector).html('').append(ul);
                        $(formDialogSelector).dialog({
                            autoOpen: false,
                            width: 600,
                            height: 200,
                            modal: true,
                            draggable: true,
                            resizable: false,
                            appendTo: wrapper,
                            buttons: {
                                "OK": function () {
                                    $(formDialogSelector).html('').dialog('close');
                                    if ($.isFunction(callBack)) {
                                        callBack();
                                    }
                                    wrapper.remove();
                                }
                            }
                        }).dialog('open');
                    }
                }
            };

            /**
             * renderMessageAreaに関してはnp.jsが提供しているrenderMessageAreaの呼び出しに変更します。
             */
            formInfo.skeleton.messages.renderMessageArea = function () {
                window.fujitsu.intarfrm.kitnp.renderMessageArea(formInfo);
            };

        },
        /**
        *  イベントの初期化処理を実行します。
        */
        eventInitialize: function (formInfo) {
            // HTMLの書き換え時にページャーの描画処理を実行します。
            $(document).on(fwConstants.htmlUpdatedEventName, function () {
                $.each($(".pager"), function () {
                    kitnp.renderPager(formInfo.formId, this);
                });
            });
        },

        /**
        * 初期化処理を実行します。
        */
        initialize: function (formInfo) {
            // リソースの取得処理
            kitnp.loadResources(formInfo);
            // 関数の書き換え処理
            kitnp.changeFunction(formInfo);
            // イベントの初期化処理
            kitnp.eventInitialize(formInfo);
            // ページャーの初期化処理
            $.each($(".pager"), function () {
                kitnp.renderPager(formInfo.formId, this);
            });
        }
    };
}(window));