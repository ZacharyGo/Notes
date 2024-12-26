/**
* @fileOverview INTARFRM JavaScript skeleton
* @name intarfrm-skeleton.js
* @author INTARFRM
*/
if (!window.$) {
    window.alert("Fail to load 'jQuery'.");
} else if (!$.ui && !$.mobile) {
    window.alert("Fail to load 'jQuery UI' or 'jQuery Mobile'.");
} else if (!window.Globalize) {
    window.alert("Fail to load 'Globalize'.");
}

(function (window) {
    'use strict';

    var intarfrm = window.fujitsu.intarfrm, Skeleton,
        configurations = intarfrm.configurations,
        helpers = intarfrm.helpers,
        fwConstants = helpers.fwConstants;

    if (window.fujitsu.intarfrm.skeleton) {
        // 初期化済み
        return;
    }

    // スクリプト読み込み時点でsubmitを防止する
    $(document).on('submit', 'form', function (event) {
        event.preventDefault();
    });

    /**
    * グローバル設定の初期化処理を行います。
    * (表示される画面で一度だけ実行します)
    */
    (function (window) {
        // フレームワーク動作設定
        if ($.mobile) {
            // モバイル用設定

            // 自動フォーマット制御
            configurations.autoFormat = true;
            // Enterキー項目移動制御
            configurations.tabOnEnter = false;
            // Spaceキー明細移動制御
            configurations.tabOnSpace = false;
            // キーフィルター制御
            configurations.keyFilter = false;
            // 自動TAB制御
            configurations.autoTabFilter = false;
            // トリムモード (trimModeAllSpace: 全角空白も削除する  trimModeHalfSpaceOnly: 全角空白は削除しない)
            configurations.trimMode = fwConstants.trimModeAllSpace;
        }
        else if (/iPad|iPhone|iPod|Android/i.test(navigator.userAgent)) {
            // タブレット用設定

            // 自動フォーマット制御
            configurations.autoFormat = true;
            // Enterキー項目移動制御
            configurations.tabOnEnter = false;
            // Spaceキー明細移動制御
            configurations.tabOnSpace = false;
            // キーフィルター制御
            configurations.keyFilter = false;
            // 自動TAB制御
            configurations.autoTabFilter = false;
            // トリムモード (trimModeAllSpace: 全角空白も削除する  trimModeHalfSpaceOnly: 全角空白は削除しない)
            configurations.trimMode = fwConstants.trimModeAllSpace;
        }
        else {
            // PC用設定

            // 自動フォーマット制御
            configurations.autoFormat = true;
            // Enterキー項目移動制御
            configurations.tabOnEnter = false;
            // Spaceキー明細移動制御
            configurations.tabOnSpace = false;
            // キーフィルター制御
            configurations.keyFilter = true;
            // 自動TAB制御
            configurations.autoTabFilter = true;
            // トリムモード (trimModeAllSpace: 全角空白も削除する  trimModeHalfSpaceOnly: 全角空白は削除しない)
            configurations.trimMode = fwConstants.trimModeAllSpace;
        }
        /**
        * 画面に出力するメッセージのフォーマット。<br/>
        * メッセージIDが存在するメッセージと存在しないメッセージについて、それぞれメッセージタイプ毎にメッセージ出力形式を設定する事が出来ます。<br/>
        * メッセージタイプを追加した場合には以下の形式で追加してください。<br/>
        * <br/>
        * メッセージタイプ:'メッセージフォーマット文字列<br/>
        * (メッセージIDの置き換えパラメータには%MESSAGE_ID%を、メッセージ本文の置き換えパラメータには%MESSAGE%を使用してください。)'<br/>
        */
        configurations.messageFormats = { // メッセージのフォーマット設定
            idAndText: {
                // システムメッセージ
                1: '[%MESSAGE_ID%] %MESSAGE%',
                // インフォメッセージ
                2: '[%MESSAGE_ID%] %MESSAGE%',
                // エラーメッセージ
                3: '[%MESSAGE_ID%] %MESSAGE%',
                // メッセータイプ別の出力形式が設定されていない場合の既定値
                100: '[%MESSAGE_ID%] %MESSAGE%'
            },
            textOnly: {
                // システムメッセージ
                1: '%MESSAGE%',
                // インフォメッセージ
                2: '%MESSAGE%',
                // エラーメッセージ
                3: '%MESSAGE%',
                // メッセータイプ別の出力形式が設定されていない場合の既定値
                100: '%MESSAGE%'
            }
        };
        intarfrm.formats = {
            /**
            * カスタムフォーマット
            * 設計情報でフォーマットを追加した場合にここに以下の形式でカスタムフォーマットの実装を行ってください。
            *　フォーマットID:{
            *     format:function(){フォーマット処理}
            *     parse:function(){アンフォーマット処理}
            *     formatString: フォーマット文字列(日時型のみ)
            *     unformatString: アンフォーマット文字列(日時型のみ)
            * },
            */
            //'フォーマットID': {
            //    /**
            //    * フォーマット処理を行います。この処理はフレームワークのフォーマット処理により呼び出されます。
            //    * @param {Number} entireDigits フォーマット対象項目の全体桁数
            //    * @param {Number} decimalDigits フォーマット対象項目の小数桁数
            //    * @param {String} str 対象文字列
            //    * @param {String} culture ロケールID
            //    * @returns フォーマット済みの文字列 
            //    */
            //    format: function (entireDigits, decimalDigits, str, culture) {
            //        return str;
            //    },
            //    /**
            //    * アンフォーマット処理を行います。この処理はフレームワークのアンフォーマット処理により呼び出されます。
            //    * @param {Number} entireDigits アンフォーマット対象項目の全体桁数
            //    * @param {Number} decimalDigits アンフォーマット対象項目の小数桁数
            //    * @param {String} str 対象文字列
            //    * @param {String} culture ロケールID
            //    * @returns フォーマット済みの文字列 
            //    */
            //    parse: function (entireDigits, decimalDigits, str, culture) {
            //        return str;
            //    },
            //    /**
            //    * フォーマット文字列(日付型の場合のみ必須)
            //    */
            //    formatString: 'yyyy-mm-dd',
            //    /**
            //    * アンフォーマット文字列(日付型の場合のみ必須)
            //    */
            //    unformatString: 'yyyymmdd'
            //}
        };

        /**
        * AJax通信のデフォルト設定を行います。<br/>
        * (全てのAjax通信で実行されます。)<br/>
        */
        $.ajaxSetup({
            // 通信結果のキャッシュ設定
            cache: false,
            // タイムアウト時間
            timeout: 600000
        });

        /**
         * AJax通信の開始時に呼ばれます。<br/>
         * (全てのAjax通信で実行されます。)<br/>
         */
        $(document).ajaxStart(function () {
        });

        /**
        * AJax通信前に実行されます。<br/>
        * (全てのAjax通信で実行されます。)<br/>
        */
        $(document).ajaxSend(function (event, jqXHR, ajaxOptions) {
        });

        /**
        * AJax通信成功時に実行されます。<br/>
        * (成功したAjax通信で実行されます。)<br/>
        */
        $(document).ajaxSuccess(function () {
        });

        /**
        * AJax通信失敗時に実行されます。<br/>
        * (失敗したAjax通信で実行されます。)<br/>
        */
        $(document).ajaxError(function (event, jqXHR, ajaxOptions, thrownError) {
            var errorMessage, context = ajaxOptions.context, skeleton, formUtil;
            if (context && context.formId) {
                // フレームワークが発生させたエラーの場合
                skeleton = window.fujitsu.intarfrm.forms[context.formId].skeleton;
                formUtil = window.fujitsu.intarfrm.forms[context.formId].formUtil;

                errorMessage = [formUtil.getProjectCommonResource('DefaultAjaxErrorMessage')];

                // エラー時にはダイアログで通知し、ダイアログを閉じた際に画面をリロードします。
                skeleton.messages.renderMessageDialog(errorMessage, function () { location.reload(); });
            }
        });

        /**
        * AJax通信完了時に実行されます。<br/>
        * (全てのAjax通信で実行されます。)<br/>
        */
        $(document).ajaxComplete(function (event, jqXHR, ajaxOptions) {
        });

        /**
        * AJax通信終了時、他に実行中のリクエストがない場合に実行されます。<br/>
        */
        $(document).ajaxStop(function () {
        });
    })(window);

    /**
    * フォーム情報を使用する共通処理クラス
    */
    Skeleton = window.fujitsu.intarfrm.Skeleton = function (programId, formId) {
        var formDialogSelector = fwConstants.formDialogSelector,
            loadDialogSelector = fwConstants.loadDialogSelector,
            codeDialogSelector = fwConstants.codeDialogSelector,
            formContentSelector = fwConstants.formContentSelector,
            htmlUpdatedEventName = fwConstants.htmlUpdatedEventName,
            formSelector = '#' + formId,
            formInfo = window.fujitsu.intarfrm.forms[formId],
            formUtil = formInfo.formUtil,
            formats = intarfrm.formats, validators, codes, actions, events, messages, utils,
            initialize;

        // フォームアクション実行 共通処理
        actions = {
            /**
            * アクションの実行状態をロックします。<br/>
            * 現在実行中のアクション処理が存在するかどうかを判定し、存在しない場合にはアクションの実行状態をロックします。<br/>
            * 判定には引数に指定したオブジェクトが既にキャッシュされているかどうかに基づきます。<br/>
            * アクションの実行状態を開放する際には同一の参照を持つオブジェクトを指定が必要です。<br/>
            * @param {Object} obj　アクションの実行状態をロックする際のキー
            * @param {Function} [callBack] コード自動取得実行によるロックが行われている場合に再実行したいコールバック(省略可)
            * @returns {Boolean} true:アクションの実行状態のロックに成功した場合  false:アクションの実行状態が既にロックされていた場合 
            */
            getLock: function (obj, callBack) {
                if (obj == null) {
                    // 引数がnullまたはundefinedの場合
                    return false;
                }
                if (!intarfrm.lockObj) {
                    // 未ロックの場合にはキャッシュしてロック完了を通知
                    intarfrm.lockObj = obj;
                    return true;
                } else if (obj === intarfrm.lockObj) {
                    // 同一オブジェクトの場合にはロック完了を通知
                    return true;
                }
                // 自動コード取得によってロックされている場合
                // フォームアクションの場合にはエラーメッセージを表示します。
                // コードアクションの場合にはコード処理を自動コード取得実行後に実行します。
                if (intarfrm.lockObj.type === 'autoCog') {
                    if (obj.type === 'formAction') {
                        messages.renderMessageDialog([formUtil.getProjectCommonResource('AutoCodeGetDoing')]);
                    } else {
                        if (!intarfrm.reservedActions) { intarfrm.reservedActions = [] };
                        intarfrm.reservedActions.push({ context: obj, callBack: callBack });
                    }
                }
                // ロック済みで異なるオブジェクトが引数の場合にはロックしません。
                return false;
            },
            /**
            * アクションの実行状態を開放します。<br/>
            * 引数に指定したオブジェクトがgetLockでキャッシュしたオブジェクトと同じオブジェクトを
            * 参照している場合アクションの実行状態を開放します。
            * @param {Object} objアクションの実行状態を解放する際のキー
            * @returns {Boolean} true:アクションの実行状態の解放に成功した場合  false:アクションの実行状態が既に解放されていた場合 
            */
            releaseLock: function (obj) {
                if (obj == null) {
                    // 引数がnullまたはundefinedの場合
                    return false;
                }
                if (obj === intarfrm.lockObj) {
                    // 同一オブジェクトの場合はロックを解除し、完了を通知する。
                    delete intarfrm.lockObj;
                    return true;
                }
                return false;
            },
            /**
            * フォームアクションを実行します。
            * 各フォームのフォームアクション(invoke[フォームアクションID]を呼び出します。)
            * @param {Object} context フォームアクションコンテキスト。
            */
            invokeFormAction: function (context) {
                var handlerId = 'invoke' + context.actionId[0].toUpperCase() + context.actionId.slice(1);

                // アクションのロックを取得します。
                if (!actions.getLock(context)) {
                    // ロックが取得できない場合にはアクション処理を行いません。
                    return;
                }
                try {
                    if (formInfo.actions[handlerId]) {
                        // 画面単位のJavaScriptに定義されたフォームアクション毎の関数
                        formInfo.actions[handlerId](context);
                    } else if (actions.customs[handlerId]) {
                        // intarfrm-skeleton.jsに定義されたカスタムフォームアクション毎の関数
                        actions.customs[handlerId](context);
                    } else {
                        // intarfrm-skeleton.jsに定義された既定のフォームアクション
                        actions.customs.invokeCommonAction(context);
                    }

                } finally {
                    if (!context.isServerActionInvoking) {
                        // サーバーアクションの実行がtry句内で行われなかった場合、ロックを解除します。
                        actions.releaseLock(context);
                    }
                }
            },
            /**
            * サーバーのアクションメソッドを呼び出し、非同期処理を実行します。<br/>
            * @param {Object} context フォームアクションコンテキスト
            * @param {Function} callBack 非同期処理成功時のコールバック
            */
            invokeServerAction: function (context, callBack) {
                // クライアントのカスタムチェック処理を実装する場合にはコメントを解除してください。
                //var checkResult = context.actionInfo.validation ? validators.customCheck(context) : true;
                //if (!checkResult) {
                //    // メッセージの表示処理を実行します。
                //    messages.renderMessageArea();
                //    return;
                //}

                // 0バイトのファイルが選択されている場合にはアクション処理は実行しません。
                if (utils.hasZeroByteFile(context)) {
                    // 画面にエラーを通知します。
                    messages.renderMessageDialog([formInfo.formUtil.getProjectCommonResource('ZeroByteFileUploadError')]);
                    return;
                }


                // ローディングダイアログを開きます。
                utils.openLoadingDialog();
                try {
                    formInfo.formUtil.invokeAjaxAction(
                        context,
                        utils.closeLoadingDialogCallBack(callBack),
                        actions.commonBeforeSend,
                        actions.commonAlways,
                        utils.closeLoadingDialogCallBack(actions.commonFail));
                } catch (e) {
                    // 例外発生時にはローディングダイアログを閉じます。
                    utils.closeLoadingDialog();
                }
                // サーバーアクション実行中フラグを有効にします。
                context.isServerActionInvoking = true;
            },
            /**
            * フォームアクションの実行結果の標準処理を行います。
            * V16 から np.js で上書きされるため、使用されていません。
            * @param {Object} context コンテキスト。
            * @param {Object} data サーバーから受け取ったデータ。
            * @param {jqXHR} xhr jqXHRオブジェクト。
            */
            formActionCommonCallBack: function (context, data, xhr) {

                if (data && data.__frameworkData) {
                    // URLが指定されている場合には画面遷移を行います。
                    if (actions.changeLocationHref(context, data, xhr)) {
                        // 画面遷移を行った場合はreturnします。
                        return;
                    }

                    // ファイルダウンロードアクションの場合にはファイルダウンロード処理を行います。
                    actions.executeFdw(context, data, xhr);

                    // 部分書き換え用のHTMLが設定されている場合には画面の部分書き換えを行います。
                    actions.replaceHtmlElement(context, data, xhr, formContentSelector);

                    // メッセージを出力します。
                    messages.showMessage();

                    // フォーカス処理を行います。
                    actions.setFocus(context, data, xhr);
                }
            },
            /**
            * アクションの実行結果に応じて画面遷移を行います。<br/>
            * @param {Object} context コンテキスト。
            * @param {Object} data サーバーから受け取ったデータ。
            * @param {jqXHR} xhr jqXHRオブジェクト。
            */
            changeLocationHref: function (context, data, xhr) {
                var fwData = data.__frameworkData;
                if (context.actionInfo.actionId !== 'fdw' && fwData.url) {
                    $(document.body).hide();
                    window.location.href = fwData.url;
                    return true;
                }
                return false;
            },
            /**
            * アクションの実行結果に応じて画面の一部の書き換えを行います。<br/>
            * 書換え対象のIDは以下の順序で決定します。<br/>
            * 1) サーバー側のコントローラで指定された要素ID<br/>
            * 2) アクションの発生元項目のカスタムデータ属性[data-action-target]で指定された要素ID<br/>
            * 3) フォーム全体を囲むdivタグのID["form--content"]<br/>
            * @param {Object} context コンテキスト。
            * @param {Object} data サーバーから受け取ったデータ。
            * @param {jqXHR} xhr jqXHRオブジェクト。
            * @param {String} defaultSelector 対象要素の指定が無い場合に使用する対象要素
            */
            replaceHtmlElement: function (context, data, xhr, defaultSelector) {
                var fwData = data.__frameworkData, targetSelector;
                if (typeof fwData.html === 'string') {
                    if (fwData.targetHtmlElementId) {
                        targetSelector = '#' + fwData.targetHtmlElementId;
                    } else if ($(context.targetElement).data('action-target')) {
                        targetSelector = '#' + $(context.targetElement).data('action-target');
                    } else {
                        targetSelector = defaultSelector;
                    }
                    $(targetSelector).html(fwData.html);
                    if ($.mobile) {
                        if (!(context.type === 'codInit' && !$(fwConstants.codeDialogSelector).hasClass('ui-page'))) {
                            utils.updateJqmStyle(targetSelector);
                        }
                    }
                    $(targetSelector).trigger(htmlUpdatedEventName);
                }
            },
            /**
            * 以下の優先度で特定の要素をフォーカスします。<br/>
            * 1)サーバー側で明示的にフォーカス先要素を指定した場合、指定された要素をフォーカスします。<br/>
            * 2)サーバー側で設定されたメッセージについて、メッセージの対象項目として設定されている要素の先頭の要素をフォーカスします。<br/>
            *   (この処理はフォームアクションまたはコード参照画面の検索処理の場合のみ実行します。)<br/>
            * @param {Object} context コンテキスト。
            * @param {Object} data サーバーから受け取ったデータ。
            * @param {jqXHR} xhr jqXHRオブジェクト。
            */
            setFocus: function (context, data, xhr) {
                var fwData = data.__frameworkData, focusTargets, messages;
                if (fwData.focusTarget) {
                    // フォーカス情報が指定されている場合
                    utils.setFormFocus([fwData.focusTarget]);
                } else {
                    // フォーカスが指定されておらず、メッセージが渡されている場合
                    // 対象が設定されている項目のみを抽出し、その先頭をフォーカス対象に設定します。
                    if (context.type === 'formAction') {
                        // フォームアクションの場合
                        focusTargets = $.map(formInfo.formUtil.getMessages(), function (msg) { return msg.target; });
                        utils.setFormFocus(focusTargets);
                    } else if (context.type === 'codSearch') {
                        // コード検索画面の場合
                        focusTargets = $.map(formInfo.formUtil.getCodeMessages(context.formItemId), function (msg) { return msg.target; });
                        codes.setCodeFocus(context.code.codeInfo.codeId, focusTargets);
                    }
                }
            },
            /**
            * コードアクションの呼び出し処理を行います。<br/>
            * @param {Object} context コンテキスト。
            * @param {Function} callBack 非同期処理成功時のコールバック
            */
            invokeCodeActionCommon: function (context, callBack) {
                var itemInfo = formInfo.formUtil.getFormItemInfoByElement(context.targetElement),
                    codeCallBack = callBack, codeFail = actions.commonFail;
                if (!actions.getLock(context, callBack)) {
                    // アクション実行のロックに失敗した場合には処理を終了します。
                    return;
                }
                try {
                    // クライアントのカスタムチェック処理を実装する場合にはコメントを解除してください。
                    //if (context.type === 'codSearch') {
                    //    var checkResult = validators.customCodeCheck(context);
                    //    if (!checkResult) {
                    //        messages.showCodeMessage(context);
                    //        return;
                    //    }
                    //}

                    if (context.type !== 'autoCog') {
                        // 自動コード取得の場合にはローディングダイアログを開きません。
                        utils.openLoadingDialog();
                        codeCallBack = utils.closeLoadingDialogCallBack(callBack);
                        codeFail = utils.closeLoadingDialogCallBack(actions.commonFail);
                    }

                    if (context.isInit) {
                        //コード参照画面の起動時のみ起動元の情報を保存
                        $(codeDialogSelector).data('parentInfo', {
                            formId: context.formId, itemId: context.formItemId, rowIndex: context.rowIndex, programId: context.programId
                        });
                    }

                    try {
                        // アクション処理を実行する
                        formInfo.formUtil.invokeAjaxAction(
                            context,
                            codeCallBack,
                            actions.commonBeforeSend,
                            actions.commonAlways,
                            codeFail);
                    } catch (e) {
                        if (context.type !== 'autoCog') {
                            // 例外発生時にはローディングダイアログを閉じます。
                            utils.closeLoadingDialog();
                        }
                    }
                    context.isServerActionInvoking = true;
                } finally {
                    if (!context.isServerActionInvoking) {
                        // サーバーアクションの実行がtry句内で行われなかった場合、ロックを解除します。
                        actions.releaseLock(context);
                    }
                }
            },
            /**
            * コード参照について実行結果をサーバーから取得した際の共通後処理を行います。<br/>
            * @param {Object} context コンテキスト。
            * @param {Object} data サーバーから受け取ったデータ。
            * @param {jqXHR} xhr jqXHRオブジェクト。
            */
            codeReferenceCallBack: function (context, data, xhr) {
                var codeInfo = context.code.codeInfo, fwData = data.__frameworkData;

                // 実行結果にURLが指定されている場合には画面遷移を行います。
                actions.changeLocationHref(context, data, xhr);

                // 実行結果にHTMLが指定されている場合には画面の書き換えを行います。
                actions.replaceHtmlElement(context, data, xhr, codeDialogSelector);

                if (context.isInit) {
                    // コード参照画面を起動します。
                    codes.openCodeDialog(context);
                }

                // コード参照画面のエラーが存在する場合、メッセージ領域にメッセージを表示します。
                messages.showCodeMessage(context);

                // フォーカス処理を行います。
                actions.setFocus(context, data, xhr);
            },
            /**
            * コード取得について実行結果をサーバーから取得した際の共通後処理を行います。<br/>
            * @param {Object} context コンテキスト。
            * @param {Object} data サーバーから受け取ったデータ。
            * @param {jqXHR} xhr jqXHRオブジェクト。
            */
            codeGetCallBack: function (context, data, xhr) {
                var formItemId = context.formItemId,
                    rowIndex = context.rowIndex,
                    codeInfo = formInfo.codes[formItemId].codeInfo,
                    codeData = formInfo.codes[formItemId].codeData,
                    fwData = data.__frameworkData;


                if (codeData && codeData.length > 0) {
                    //取得成功時：マッピング情報を元に書き換え
                    $.each(codeInfo.mapping, function (codeItemId, formItemId) {
                        formInfo.formUtil.codeDataTransfer(formItemId, context.rowIndex, codeData[0][codeItemId]);
                    });
                } else {
                    codes.clearCodeViewItem(formItemId, context.rowIndex);
                    messages.showCodeNotFound(formInfo.formUtil.getCurrentCulture());
                }
            },
            /**
            * 自動コード取得について実行結果をサーバーから取得した際の共通後処理を行います。<br/>
            * @param {Object} context コンテキスト。
            * @param {Object} data サーバーから受け取ったデータ。
            * @param {jqXHR} xhr jqXHRオブジェクト。
            */
            autoCodeGetCallBack: function (context, data, xhr) {
                var formItemId = context.formItemId,
                    codeInfo = formInfo.codes[formItemId].codeInfo,
                    codeData = formInfo.codes[formItemId].codeData;

                if (codeData && codeData.length > 0) {
                    //取得成功時：マッピング情報を元に書き換え
                    $.each(codeInfo.mapping, function (codeItemId, formItemId) {
                        formInfo.formUtil.codeDataTransfer(formItemId, context.rowIndex, codeData[0][codeItemId]);
                    });
                } else {
                    codes.clearCodeViewItem(formItemId, context.rowIndex);
                }
                // 予約されている処理がある場合には実行する
                if (intarfrm.reservedActions && intarfrm.reservedActions.length > 0) {
                    actions.releaseLock(context);
                    var rAction = intarfrm.reservedActions.shift(0);
                    if ($.inArray(rAction.context.type, ['codInit', 'cog', 'autoCog']) >= 0) {
                        actions.invokeCodeActionCommon(rAction.context, rAction.callBack);
                    }
                }
            },
            /**
            * Ajax通信前の共通処理を行います。<br/>
            * @param {Object} context コンテキスト。
            * @param {jqXHR} xhr jqXHRオブジェクト。
            * @param {Object} setting 設定。
            */
            commonBeforeSend: function (context, xhr, setting) {
            },
            /**
            * Ajax通信失敗時の共通処理を行います。
            * @param {Object} context コンテキスト。
            * @param {jqXHR} xhr jqXHRオブジェクト。
            * @param {String} status ステータス。
            * @param {String} errorThrown エラー情報。
            */
            commonFail: function (context, xhr, status, errorThrown) {
            },
            /**
            * Ajax通信終了時の共通処理を行います。<br/>
            * @param {Object} context コンテキスト。
            * @param {jqXHR} xhr jqXHRオブジェクト。
            * @param {String} status ステータス。
            */
            commonAlways: function (context, xhr, status) {
                actions.releaseLock(context);
            },
            /**
            * アクションのレスポンスを元にファイルダウンロードアクションの処理を実行します。<br/>
            * @param {Object} context コンテキスト。
            * @param {Object} data サーバーから受け取ったデータ。
            * @param {jqXHR} xhr jqXHRオブジェクト。
            */
            executeFdw: function (context, data, xhr) {
                var fwData = data.__frameworkData;

                if (context.actionInfo.actionId === 'fdw' && fwData.url) {
                    window.location.href = fwData.url;
                }
                return;
            },
            /**
            * 共通アクション
            */
            customs: {
                /**
                * アクションの既定処理を行います。<br/>
                * 個別のアクションがJavaScript上で定義されていなかった場合にはこの処理が実行されます。<br/>
                * @param {Object} context コンテキスト。
                */
                invokeCommonAction: function (context) {
                    // フォームアクション実行
                    actions.invokeServerAction(context, function (context, data, xhr) {
                        var fwData = data.__frameworkData;
                        /* アクションの実行結果に対する拡張処理はここに記述します。*/

                        // フレームワーク標準のアクション結果に対する共通処理
                        actions.formActionCommonCallBack(context, data, xhr);
                    });
                }
                //// サーバー側で追加した共通アクションについて個別の実装を行うにはここに追加してください。
                // コード例
                //invoke[フォームアクション名(先頭大文字)]: function (context) {
                //    // フォームアクション実行
                //     actions.invokeServerAction(context, function (context, data, xhr) {
                //        var fwData = data.__frameworkData;
                //        /* アクションの実行結果に対する拡張処理はここに記述します。*/
                // 
                //        // フレームワーク標準のアクション結果に対する共通処理
                //        actions.formActionCommonCallBack(context, data, xhr);
                //    });
                //}
            }
        };

        // 各種ユーティリティメソッド
        utils = {
            /**
            * このフォームのformタグ内に存在する要素にのみ有効なイベントハンドラを設定する<br />
            * 配列で複数のイベントタイプ、セレクタを指定した場合、or 条件として扱います。<br/>
            * このメソッドは、form要素自体とその外側にある要素に対しては使用できません。<br/>
            * その場合は $(document).on(types, selector, data, fn, one) を使用してください。
            * @param {String} eventTypes イベントタイプ文字列
            * @param {String|Array} selectors セレクタ文字列もしくはその配列
            * @param {Function} handler イベントハンドラ
            */
            addFormEventListener: function (eventTypes, selectors, handler) {
                var formPrefix = formSelector + ' ',
                    selector = formPrefix + ($.isArray(selectors) ? selectors.join("," + formPrefix) : selectors);

                $(document).on(eventTypes, selector, handler);
            },
            /**
            * addFormEventListener で設定したイベントハンドラを解除する<br />
            * 引数には addFormEventListener に渡したものと同じものを指定してください。<br />
            * （複数のタイプ、セレクタで登録したイベントの場合、一部だけを解除することはできません。）
            * @param {String} eventTypes イベントタイプ文字列
            * @param {String|Array} selectors セレクタ文字列もしくはその配列
            * @param {Function} handler イベントハンドラ
            */
            removeFormEventListener: function (eventTypes, selectors, handler) {
                var formPrefix = formSelector + ' ',
                    selector = formPrefix + ($.isArray(selectors) ? selectors.join("," + formPrefix) : selectors);

                $(document).off(eventTypes, selector, handler);
            },
            /**
            * フォーム項目の入出力コントロールにイベントをバインドします。引数は以下のパターンを許可します。<br/>
            *  addFormItemEventListener(eventName, formItemId, handler)<br/>
            *  ・ document上のフォーム項目についてeventNameで指定したイベントにhandlerをバインドします。<br/>
            *  ・ 明細項目の場合には全明細行の項目が対象になります。（この場合、'[FORM_ID]-[FORM_ITEM_ID]-' で始まる id を持つ、標題以外の要素が対象になります。）<br/>
            *  addFormItemEventListener(eventName, formItemId, rowIndex, handler)<br/>
            *  ・ document上の特定行の明細項目についてeventNameで指定したイベントにhandlerをバインドします。
            * @param {String} eventTypes イベントタイプ文字列
            * @param {String} formItemId フォーム項目ID
            * @param {String} rowIndex 明細行インデックス
            * @param {Function} handler イベントハンドラ
            */
            addFormItemEventListener: function (eventTypes, formItemId, rowIndex, handler) {
                var selector;

                if ($.isFunction(rowIndex)) {
                    // addEventListener(eventTypes,  formItemId, handler)の場合
                    handler = rowIndex;
                    rowIndex = null;
                }
                selector = formInfo.formUtil.getFormItemElementsSelector(formItemId, rowIndex);
                if (selector) {
                    $(document).on(eventTypes, selector, handler);
                }
            },
            /**
            * addFormItemEventListenerで登録したイベントを解除します。<br/>
            * 引数には addFormItemEventListener で指定したものと同じものを指定してください。<br/>
            * @param {String} eventTypes イベントタイプ文字列
            * @param {String} formItemId フォーム項目ID
            * @param {String} rowIndex 明細行インデックス
            * @param {Function} handler イベントハンドラ
            */
            removeFormItemEventListener: function (eventTypes, formItemId, rowIndex, handler) {
                var selector;

                if ($.isFunction(rowIndex)) {
                    // addEventListener(eventName, formItemId, handler)の場合
                    handler = rowIndex;
                    rowIndex = null;
                }
                selector = formInfo.formUtil.getFormItemElementsSelector(formItemId, rowIndex);
                if (selector) {
                    $(document).off(eventTypes, selector, handler);
                }
            },
            /**
            * INTARFRMが独自のイベント'ifmChange'に対してイベントハンドラを設定します。<br/>
            * focusイベント発生時に入力項目の入力値を要素に対して$.data()を用いて保存し、<br/>
            * blurイベント発生時に保存した入力値と現在の入力値を比較し、値が変更されている場合のみイベントハンドラを実行します。<br/>
            * このメソッドは、form要素自体とその外側にある要素に対しては使用できません。<br/>
            * @param {String|Array} selectors セレクタ文字列もしくはその配列
            * @param {Function} handler イベントハンドラ
            */
            addIfmChangeEventListener: function (selectors, handler) {
                var formPrefix = formSelector + ' ',
                    selector = formPrefix + ($.isArray(selectors) ? selectors.join("," + formPrefix) : selectors);

                $(document)
                    .off('focus', selector, utils.ifmFocus)
                    .on('focus', selector, utils.ifmFocus)
                    .on('ifmChange', selector, handler);
            },
            /**
            * addIfmChangeEventListenerで登録したイベントを解除します。<br/>
            * 引数には addIfmChangeEventListener で指定したものと同じものを指定してください。<br/>
            * @param {String|Array} selectors セレクタ文字列もしくはその配列
            * @param {Function} handler イベントハンドラ
            */
            removeIfmChangeEventListener: function (selectors, handler) {
                var formPrefix = formSelector + ' ',
                    selector = formPrefix + ($.isArray(selectors) ? selectors.join("," + formPrefix) : selectors);
                $(document).off('ifmChange', selector, handler);
            },
            /**
            * addIfmChangeEventListenerの実行時に使用されるイベントハンドラ。<br/>
            * イベント発生要素についてfocus時とデータの状態を参照し、値が変更されている場合カスタムイベントを発生させます。<br/>
            * このメソッドは直接実行しないでください。<br/>
            * @param {Object} event イベント。
            */
            ifmBlur: function (event) {
                var target = $(this);
                if (target.data(fwConstants.ifmChangeKey) !== target.val()) {
                    target.trigger('ifmChange');
                }
            },
            /**
            * addIfmChangeEventListenerの実行時に使用されるイベントハンドラ。<br/>
            * フォーカス時にイベント発生要素について値を保存し、utils.ifmBlurをバインドします。<br/>
            * このメソッドは直接実行しないでください。<br/>
            * @param {Object} event イベント。
            */
            ifmFocus: function (event) {
                var target = $(this);
                target.data(fwConstants.ifmChangeKey, target.val());
                target.off('blur', utils.ifmBlur).on('blur', utils.ifmBlur);
            },
            /**
            * ローディング時のダイアログを展開します。
            * V16 から np.js で上書きされるため、使用されていません。
            */
            openLoadingDialog: function () {
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
                    height: 60,
                    width: 40,
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
            },
            /**
            * ローディング時のダイアログを閉じます。<br/>
            * 閉じる際にopenLoadingDialogを実行した際に状態がactiveであった項目にフォーカスを戻します。
            */
            closeLoadingDialog: function () {
                var focusItem;

                if ($.mobile) {
                    // ローディング画像／メッセージ表示
                    $.mobile.loading('hide');
                    $(document.activeElement).blur();
                }
                else {
                    if ($(loadDialogSelector).hasClass('ui-dialog-content')) {
                        focusItem = $(loadDialogSelector).data('focusItem');
                        $(loadDialogSelector).dialog('close');
                        $(loadDialogSelector).dialog('destroy');
                        $(loadDialogSelector).html('');
                        if (focusItem) {
                            $(focusItem).focus();
                        }
                    }
                }
            },
            /**
            * ローディングダイアログを閉じる関数処理を返します。
            * 引数に指定したコールバック関数はローディングダイアログを閉じた後に実行されます。
            * @param {Function} callBack コールバック関数
            * @returns {Function} ダイアログを閉じるfunction
            */
            closeLoadingDialogCallBack: function (callBack) {
                return function () {
                    utils.closeLoadingDialog();
                    if ($.isFunction(callBack)) {
                        callBack.apply(this, arguments);
                    }
                };
            },
            /**
            * コントロールのプロテクト状態を設定します。<br/>
            * 現在のグループのコントロールのみ設定することが可能です。<br/>
            * 対象となるコントロールは「TXT/TX2/PWD/DRL/RDO/CHK/CHL/LST/SUB/BTN/CLR」です。<br/>
            * プロテクト状態に設定された項目はアクション実行時に入力されている値は送信されません。<br/>
            * プロテクト状態になった項目のスタイル設定はifm.cssで行ってください。
            * @param {String} formItemId フォーム項目ID。
            * @param {Number} rowIndex 行インデックス。
            * @param {Boolean} protect true=プロテクト。false=プロテクト解除。
            */
            setProtect: function (formItemId, rowIndex, protect) {
                var readOnlyTypes = ['text', 'password', 'search', 'tel', 'url', 'email', 'number', 'datetime', 'datetime-local', 'month', 'week', 'date', 'time'],
                    protectedClass = 'ifm-protected',
                    elemnts = formInfo.formUtil.getElementsByFormItemId(formItemId, rowIndex),
                    protectAttribute = ($(elemnts).is('textarea') || $.inArray($(elemnts).attr('type'), readOnlyTypes) >= 0) ? 'readonly' : 'disabled';

                if (protect) {
                    $(elemnts).attr(protectAttribute, protectAttribute).addClass(protectedClass);
                } else {
                    $(elemnts).filter('.' + protectedClass).removeAttr(protectAttribute).removeClass(protectedClass);
                }
            },
            /**
            * フォームの項目に対してフォーカスを設定します。
            * @param {Array} focusTargets フォーカスターゲットの配列
            * returns {Boolean} フォーカスを設定したらtrue。それ以外はfalse。
            */
            setFormFocus: function (focusTargets) {
                if ($.mobile) { return false; }

                var result = false;
                $.each(focusTargets, function () {
                    var focusElement;
                    if (!this || !this.formItemId) {
                        return true; // eachのcontinue
                    }
                    utils.activateParentTab(formInfo.formUtil.getElementsByFormItemId(this.formItemId, this.rowIndex));

                    focusElement = formInfo.formUtil.getCheckedOrFirstElement(formInfo.formUtil.getElementsByFormItemId(this.formItemId, this.rowIndex));

                    if (focusElement) {
                        $(focusElement).focus();
                        result = true;
                        return false;// eachのbreak
                    }
                });
                return result;
            },
            /**
             * 指定した要素が所属するタブを有効にします。
             * タブに対して親タブが存在する場合、再帰的にタブを有効にします。
             * @param {HTMLElement} 対象要素
             */
            activateParentTab: function (element) {
                var tabPanel = $(element).closest('.ui-tabs-panel'), tab, tabId;
                if (tabPanel.length > 0) {
                    tab = tabPanel.closest('.ui-tabs');
                    tabId = tabPanel.attr('aria-labelledby');
                    tab.find('.ui-tabs-nav a.ui-tabs-anchor').each(function (index, elem) {
                        if (elem.id === tabId) {
                            tab = tabPanel.closest('.ui-tabs').tabs({ active: index });
                            return false;// eachのbreak
                        }
                    });
                    utils.activateParentTab(tab);
                }
            },
            /**
            * 現在のフォーム上のファイルアップロード項目について0バイトのファイルが指定されていないか判定します。<br/>
            * フレームワークはIE等の一部のブラウザにおいて0バイトのファイルのアップロード処理時に問題が発生する可能性があるため、<br/>
            * 既定の処理として0バイトのファイルのアップロードを禁止しています。<br/>
            * 0バイトのファイルのアップロード処理を許可する場合にはこの関数の処理を修正してください。<br/>
            *<br/>
            * この関数はactions.invokeServerAction()の実行時に呼び出され、0バイトのファイルが指定されている場合にはtrueを返します。<br/>
            * 0バイトのファイルが指定されていない場合にはfalseを返します。<br/>
            * また、アクションのデータ送信設定がオフの場合には常にfalseを返します。<br/>
            * @param {Object} context フォームアクションコンテキスト
            * @returns {Boolean} 0バイトのファイルが指定されている場合はtrue。それ以外はfalse。
            */
            hasZeroByteFile: function (context) {
                var flag;
                if (context && !context.actionInfo.isSubmitAction) {
                    return false;
                }
                // フォーム全体のチェックを行います。
                $(formSelector).find(':file').each(function () {
                    if (this.files) {
                        $.each(this.files, function (i, e) {
                            if (this.size === 0) {
                                flag = true;
                            }
                        });
                    }
                });
                return flag;
            },

            /**
            * jQuery Mobile のスタイルを再適用する
            * @param {String} targetSelector 再適用する要素
            */
            updateJqmStyle: function (targetSelector) {
                var target = $(targetSelector).closest('[data-role=page],[data-role=dialog]');
                if (typeof target.enhanceWithin === 'function') {
                    // for 1.4
                    target.enhanceWithin().find('[data-role=content]').addClass('ui-content');
                }
                return $(targetSelector);
            },
            /**
            * 指定した要素が画面内に表示されるようにスクロールする
            * @param {String} selector 要素のセレクタ
            * @param {Function} callback スクロール完了後に実行される関数
            */
            scrollToElement: function (selector, callback) {
                var count = 10, interval = 100, t, ps, height = $(window).height(), cacheY = 0;
                t = function () {
                    var el = $(selector)[0], top;
                    if (el) {
                        top = $(el).offset().top;
                        if (cacheY === top) {
                            if ($.isFunction(callback)) {
                                $.mobile.silentScroll(top - 50);
                                callback(true);
                            }
                            return;
                        }
                        else {
                            cacheY = top;
                        }
                    }
                    if (count-- > 0) { setTimeout(t, interval); }
                    else { callback(false); }
                };
                setTimeout(t, interval);
            }
        };

        // コード参照 共通処理
        codes = {
            /**
            * コード参照を起動します。
            * V16 から np.js で上書きされるため、使用されていません。
            * @param {Object} context　コンテキスト。
            */
            openCodeDialog: function (context) {
                var windowInfo = context.code.windowInfo.sizes, formItemId = context.formItemId, wrapper;

                // ダイアログを表示
                if ($.mobile) {
                    $.mobile.changePage(fwConstants.codeDialogSelector, { changeHash: false });
                    $(codeDialogSelector + ' .ifm-code-close-button').on('click', function () {
                        codes.onCloseCodeDialog();
                    });
                }
                else {
                    wrapper = $('<div />').attr('style', 'position:relative; white-space: pre-wrap;').appendTo('body');
                    $(codeDialogSelector).dialog({
                        height: windowInfo.height, width: windowInfo.width,
                        title: context.code.caption,
                        modal: true, autoOpen: false,
                        resizable: false,
                        appendTo: wrapper,
                        close: function (event, ui) {
                            codes.onCloseCodeDialog(true);
                            wrapper.remove();
                        }
                    }).dialog('open');
                }
            },
            /**
            * コード参照ダイアログを閉じます。
            * V16 から np.js 経由で参照されます。
            * @param {Boolean} onClosed ダイアログのcloseイベントから発生している場合かを示すフラグ。直接呼び出す際にはfalseを設定してください。
            */
            onCloseCodeDialog: function (onClosed) {
                var parentInfo = $(codeDialogSelector).data('parentInfo'), ps;

                if (!onClosed) {
                    if ($(codeDialogSelector).hasClass('ui-dialog-content')) {
                        $(codeDialogSelector).dialog('close');
                        return;
                    }
                }
                if ($.mobile) {
                    ps = function () {
                        // 親画面復帰後にスクロール位置をもとに戻す
                        var keyItemId, selector, codeInfo;
                        $(formContentSelector).off('pageshow', ps);
                        codeInfo = formInfo.codes[parentInfo.itemId].codeInfo;
                        keyItemId = codeInfo.mapping[codeInfo.codeKeys[0]];
                        selector = formInfo.formUtil.getFormItemElementsSelector(keyItemId, parentInfo.rowIndex);
                        utils.scrollToElement(selector, function () {
                            // $(selector).eq(0).focus();
                        });
                    };
                    $(formContentSelector).on('pageshow', ps);
                    $.mobile.changePage(formContentSelector, { changeHash: false });
                }
                else if ($(codeDialogSelector).hasClass('ui-dialog-content')) {
                    if (onClosed) {
                        $(codeDialogSelector).dialog('destroy');
                    }
                }
                if (parentInfo) {
                    if (!$.mobile) {
                        $(formInfo.formUtil.getElementsByFormItemId(parentInfo.itemId, parentInfo.rowIndex)).focus();
                    }
                    $(codeDialogSelector).removeData('parentInfo');
                }
                $(codeDialogSelector).html('');
            },
            /**
            * 明細項目選択時の処理を行います。
            * @param {Number} index コード参照画面で選択された検索結果明細の明細行インデックス。
            * @param {String} formId フォームID。
            * @param {String} formItemId フォーム項目ID。
            * @param {Number} originRowIndex コード参照画面を呼び出した親画面項目の明細行インデックス。
            */
            codeDataTransfer: function (index, formId, formItemId, originRowIndex) {
                var mapInfo = formInfo.codes[formItemId].codeInfo.mapping,
                    data = formInfo.codes[formItemId].codeData,
                    codeId = formInfo.codes[formItemId].codeInfo.codeId;
                $.each(mapInfo, function (i, itemId) {
                    //各データを設定します。
                    formInfo.formUtil.codeDataTransfer(itemId, originRowIndex, data[index][i]);
                });
                codes.onCloseCodeDialog(false);
            },
            /**
            * 指定したコード項目に紐づいているフォーム項目の入力値をクリアします。
            * このメソッドはコード取得又はコード名称自動取得の実行時に
            * 検索結果が0件の場合に実行されます。
            * @param {String} formItemId フォーム項目ID
            * @param {String} rowIndex 明細行インデックス
            */
            clearCodeViewItem: function (formItemId, rowIndex) {
                var codeInfo, itemInfo, elements;
                if (!formInfo.codes[formItemId]) { return; }// フォーム項目にコードが紐づけられていない場合
                codeInfo = formInfo.codes[formItemId].codeInfo;

                $.each(codeInfo.mapping, function (codeItem, codeFormItem) {
                    itemInfo = formInfo.formItems[codeFormItem];
                    if ($.inArray(codeItem, codeInfo.codeKeys) >= 0 || !itemInfo) { return true; }
                    elements = formInfo.formUtil.getElementsByFormItemId(itemInfo.itemId, rowIndex);

                    if (itemInfo.controlId === 'rdo' || itemInfo.controlId === 'chl') {
                        $.each(elements, function () { this.checked = false; });
                    } else if (itemInfo.controlId === 'chk') {
                        elements[0].checked = false;
                    } else if (itemInfo.controlId !== 'drl') {
                        $(elements).val('');
                    }
                });
                return;
            },
            /**
            * コード参照画面の項目に対してフォーカスを設定します。
            * @param {String} codeId コードID
            * @param {Array} focusTargets フォーカスターゲットの配列
            * returns {Boolean} フォーカスを設定したらtrue。それ以外はfalse。
            */
            setCodeFocus: function (codeId, focusTargets) {
                if ($.mobile) { return false; }
                var result = false;
                $.each(focusTargets, function () {
                    var focusElement;
                    if (!this || !this.formItemId) {
                        return true;//eachのcontinue
                    }
                    focusElement = formInfo.formUtil.getCheckedOrFirstElement(formInfo.formUtil.getCodeElementsByItemId(codeId, this.formItemId));
                    if (focusElement) {
                        $(focusElement).focus();
                        result = true;
                        return false;//eachのbreak
                    }
                });

                return result;
            },
            // コード固有イベントハンドラ
            codeEvents: {
                /**
                * コード参照画面のサブミット処理を行います。
                * @param {Object} event イベント。
                */
                submit: function (event) {
                    // バブリング停止, 同一要素のイベントも停止
                    event.stopImmediatePropagation();
                    // デフォルトのsubmitイベントも停止
                    event.preventDefault();
                },
                /**
                * フォーカス時処理を行います。
                * @param {Object} event イベント。
                */
                focus: function (event) {
                    var target = event.currentTarget, targetInfo = formInfo.formUtil.getFormItemInfoByElement(target);

                    if (targetInfo) {
                        // IMEモードの設定
                        helpers.utils.setImeMode(target);
                        // フォーマット処理
                        if (configurations.autoFormat && $(target).val() !== '') {
                            if (formInfo.formUtil.isFormatableControl(targetInfo.controlId)) {
                                // トリム処理
                                $(target).val(formInfo.formUtil.trim($(target).val(), targetInfo));
                                $(target).val(formInfo.formUtil.parseByItemInfo(targetInfo, $(target).val()));
                            }
                        }
                        // 入力値の選択
                        window.setTimeout(function () {
                            if (target === document.activeElement) {
                                $(target).select();
                            }
                        }, 0);
                    }
                },
                /**
                * ブラ―時処理を行います。
                * @param {Object} event イベント。
                */
                blur: function (event) {
                    var target = event.currentTarget, targetInfo = formInfo.formUtil.getFormItemInfoByElement(target);

                    if (targetInfo) {
                        if (formInfo.formUtil.isFormatableControl(targetInfo.controlId)) {
                            //フォーマット処理
                            if (configurations.autoFormat && $(target).val() !== '') {
                                // トリム処理
                                $(target).val(formInfo.formUtil.trim($(target).val(), targetInfo));
                                $(target).val(formInfo.formUtil.formatByItemInfo(targetInfo, $(target).val()));
                            }
                        }
                    }
                },
                /**
                *　コード参照画面のキー押し下げ時処理を行います。
                * @param {Object} event イベント。
                */
                keydown: function (event) {
                    var parentInfo = $(codeDialogSelector).data('parentInfo');
                    if (configurations.tabOnEnter) {
                        // Enterキー押下時制御
                        if (!helpers.utils.codeTabOnEnter(event, parentInfo)) {
                            return false;
                        }
                    }
                },
                /**
                *　コード参照画面のキープレス時処理を行います。
                * @param {Object} event イベント。
                */
                keypress: function (event) {
                    var parentInfo = $(codeDialogSelector).data('parentInfo');
                    if (configurations.keyFilter) {
                        // 入力値フィルタ制御
                        if (!helpers.utils.codeKeyFilter(event, parentInfo)) {
                            return false;
                        }
                    }
                },
                /**
                * 明細のページング、ソーティング、検索実行時の処理を行います。
                * @param {Object} event イベント。
                */
                search: function (event) {
                    var parentInfo = $(codeDialogSelector).data('parentInfo');
                    formInfo.codes[parentInfo.itemId].events.search(event);
                },
                /**
                * コード参照画面の検索結果選択時の処理を行います。
                * @param {Object} event イベント。
                */
                searchResultSelect: function (event) {
                    var parentInfo = $(codeDialogSelector).data('parentInfo');
                    formInfo.codes[parentInfo.itemId].events.codeDataTransfer(event);
                },
                /**
                * メッセージエリアに出力されたメッセージをクリックした際のフォーカス制御を行います。
                * @param {Object} event イベント。
                */
                errorMessageClick: function (event) {
                    var targetItem = $(event.currentTarget).data('message-target');
                    $(targetItem).focus();
                }
            },

            /**
            * コード画面のイベントを設定します。
            * @param {String} codeId コードID
            */
            codeInitialize: function (codeId) {
                // イベントの設定
                var codeSelector = '#' + fwConstants.codeItemIdPrefix + codeId,
                    txt = ':text[readonly!=readonly]',//TXT
                    chl = ':checkbox',                //CHL
                    rdo = ':radio',                   //RDO
                    drl = 'select:not([multiple])',   //DRL
                    lst = 'select[multiple]',         //LST
                    lnk = 'a[href]',
                    search = '[data-action-id="_code_reference"]',
                    transfer = '[data-action-type="transfer"]',
                    errorMessage = fwConstants.codeMessageArea(codeId, true) + ' [data-message-type]',
                    codeEvents = codes.codeEvents;

                // 検索画面制御
                $(codeSelector).on('focus', txt, codeEvents.focus);
                $(codeSelector).on('blur', txt, codeEvents.blur);
                $(codeSelector).on('keydown', [txt, rdo, drl, lst, chl].join(', '), codeEvents.keydown);
                $(codeSelector).on('keypress', txt, codeEvents.keypress);

                // 検索の実行ボタン、ページング、ソーティング
                $(codeSelector).on('click', search, codeEvents.search);

                // 親画面への転送処理
                $(codeSelector).on('click', transfer, codeEvents.searchResultSelect);

                // エラーメッセージのフォーカス処理
                $(codeSelector).on('click', errorMessage, codeEvents.errorMessageClick);
                // サブミット制御
                $(codeSelector).on('submit', codeEvents.submit);
            }
        };

        // メッセージ 共通処理
        messages = {
            /**
            * 画面に出力するメッセージのフォーマット
            */
            messageFormats: configurations.messageFormats,

            /** 
            * サーバーから受け取ったメッセージ情報から画面に出力するメッセージを生成します。<br/>
            * メッセージはconfigurations.messageFormatsに設定された形式に変換されます。<br/>
            * メッセージ情報にメッセージIDが設定されている場合とされていない場合で、それぞれ以下の設定を使用します。<br/>
            * メッセージIDが設定されている場合：configurations.messageFormats.idAndText<br/>
            * メッセージIDが設定されていない場合：configurations.messageFormats.textOnly<br/>
            * @param {Object} messageInfo メッセージ情報
            * @returns {String} テンプレート形式に変換されたメッセージ
            */
            createText: function (messageInfo) {
                if (!messageInfo) { return ''; }

                if (messageInfo.id) {
                    return (messages.messageFormats.idAndText[messageInfo.type] || messages.messageFormats.idAndText[100])
                        .replace('%MESSAGE_ID%', messageInfo.id).replace('%MESSAGE%', messageInfo.text);
                }
                return (messages.messageFormats.textOnly[messageInfo.type] || messages.messageFormats.textOnly[100])
                    .replace('%MESSAGE%', messageInfo.text);
            },
            /**
            *  メッセージを表示します。
            * V16 から np.js で上書きされるため、使用されていません。
            */
            showMessage: function () {
                this.renderMessageArea();
            },
            /**
            *  メッセージをダイアログを使用して表示します。
            * V16 から np.js で上書きされるため、使用されていません。
            * @param {Array} messageTexts 表示したいメッセージの配列
            * @param {Function} [callBack] ダイアログを閉じる際のコールバック
            */
            renderMessageDialog: function (messageTexts, callBack) {
                var ul, div, wrapper, anchor;

                if ($.isArray(messageTexts)) {
                    ul = $('<ul/>');
                    $(messageTexts).each(function () {
                        ul.append($('<li/>').text(this));
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
                        utils.updateJqmStyle(formDialogSelector);
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
                            dialogClass: "ifm-message-dialog",
                            appendTo: wrapper,
                            buttons: {
                                "Close": function () {
                                    $(formDialogSelector).dialog('close');
                                    if ($.isFunction(callBack)) {
                                        callBack();
                                    }
                                    wrapper.remove();
                                }
                            }
                        }).dialog('open');
                    }
                }
            },
            /**
            * 画面上のメッセージ領域にメッセージを出力します。
            * V16 から np.js で上書きされるため、使用されていません。
            */
            renderMessageArea: function () {
                var ul, targetElements, firstTargetElements, targetItemInfo, firstTargetItemInfo, focusTargetId,
                    formMessages = formInfo.formUtil.getMessages('lf'), index, firstIndex, firstListInfo, listInfo,
                    messageArea = $(fwConstants.formMessageArea(formId, true));

                /* フレームワーク標準のメッセージ出力 */

                if (!formMessages) {
                    // メッセージオブジェクトがない場合は、メッセージを変更しない
                    return;
                }

                // 現在メッセージ対象項目に設定されている画面項目のclassを取り除きます。
                $(formSelector + ' .' + fwConstants.messageTargetItem).removeClass(fwConstants.messageTargetItem);

                if (formMessages.length === 0) {
                    // メッセージなし
                    messageArea.html('').hide();
                    return;
                }

                // メッセージ領域のHTMLを構成します。
                ul = $('<ul/>');

                $.each(formMessages, function (i, info) {
                    // メッセージの追加
                    var a = $('<a href="javascript:void(0)" />')
                                .attr('id', formId + '-message-' + i)
                                .css('white-space', 'pre-wrap')
                                .attr('data-message-type', info.type).text(messages.createText(info));

                    // メッセージ対象項目へのフォーカス情報をメッセージの要素に設定します。
                    if ($.isArray(info.target) && info.target.length > 0) {
                        firstTargetItemInfo = formInfo.formUtil.getFormItemInfoByFormItemId(info.target[0].formItemId);
                        firstListInfo = formInfo.formLists[firstTargetItemInfo.listId];
                        if (firstListInfo) {
                            if (info.target[0].absIndex >= 0 && info.target[0].absIndex != info.target[0].rowIndex) {
                                firstIndex = info.target[0].absIndex - firstListInfo.startIndex;
                            } else {
                                firstIndex = info.target[0].rowIndex;
                            }
                        }
                        firstTargetElements = formInfo.formUtil.getElementsByFormItemId(info.target[0].formItemId, firstIndex);
                        if (firstTargetItemInfo.controlId === 'rdo' || firstTargetItemInfo.controlId === 'chl') {
                            //RDO ,CHL
                            a.data('message-target', formInfo.formUtil.getCheckedOrFirstElement(firstTargetElements));
                        } else {
                            a.data('message-target', firstTargetElements[0]);
                        }

                        // メッセージのスタイル設定
                        $.each(info.target, function (j, messageTarget) {
                            targetItemInfo = formInfo.formUtil.getFormItemInfoByFormItemId(messageTarget.formItemId);
                            listInfo = formInfo.formLists[targetItemInfo.listId];
                            if (listInfo) {
                                if (messageTarget.absIndex >= 0 && messageTarget.absIndex != messageTarget.rowIndex) {
                                    index = messageTarget.absIndex - listInfo.startIndex;
                                } else {
                                    index = messageTarget.rowIndex;
                                }
                                if (index < 0) { return true; }
                            }
                            targetElements = formInfo.formUtil.getElementsByFormItemId(messageTarget.formItemId, index);
                            if (targetItemInfo && (targetItemInfo.controlId === 'chl' || targetItemInfo.controlId === 'rdo')) {
                                $.each(targetElements, function () {
                                    $(this).parent().addClass(fwConstants.messageTargetItem);
                                });
                            } else {
                                $(targetElements).eq(0).addClass(fwConstants.messageTargetItem);
                            }
                        });
                    }

                    $('<li/>').append(a).appendTo(ul);
                });

                messageArea.html('').append(ul).show();
                if ($.mobile) {
                    // モバイルの場合はエラーメッセージを表示するためにフォーカスを当てる
                    setTimeout(function () { ul.find('li:first a').focus(); }, 0);
                }
            },
            /**
            * 画面上のメッセージ領域に出力したメッセージを削除します。<br/>
            * 表示されているメッセージは削除されていますが、JavaScript上で管理されているメッセージオブジェクトは削除されません。<br/>
            */
            clearMessageArea: function () {
                $(fwConstants.formMessageArea(formId, true)).html('');
            },
            /**
            * コード参照実行時のエラーメッセージを表示します。
            * V16 から np.js で上書きされるため、使用されていません。
            * @param {Object} コンテキスト。
            */
            showCodeMessage: function (context) {
                var formId = context.formId, formItemId = context.formItemId, codeItemInfo,
                    codes = formInfo.codes[formItemId], codeId = codes.codeInfo.codeId,
                    codeMessageAreaSelector = fwConstants.codeMessageArea(codeId, true),
                    codeMessages = formInfo.formUtil.getCodeMessages(formItemId, 'lf'),
                    messagePrefix = fwConstants.codeItemIdPrefix + codeId + '-message',
                    template, targetItemId, targetElements, messageTarget, ul;

                if (!codes.messages) {
                    // メッセージオブジェクトがない場合は、メッセージを変更しない
                    return;
                }

                // 現在メッセージ対象項目に設定されている画面項目のclassを取り除きます。
                $(codeDialogSelector + ' .' + fwConstants.messageTargetItem).removeClass(fwConstants.messageTargetItem);

                if (codes.messages.length === 0) {
                    // メッセージなし
                    $(codeMessageAreaSelector).html('').hide();
                }

                ul = $('<ul />');

                $.each(codeMessages, function (i, info) {
                    var a, targetItemId = info.target && info.target[0] && info.target[0].formItemId ? info.target[0].formItemId : '',
                    targetItemInfo;
                    a = $('<a href="javascript:void(0)" />')
                            .attr('id', messagePrefix + '-' + i)
                            .attr('data-message-type', info.type)
                            .css('white-space', 'pre-wrap')
                            .text(messages.createText(info));

                    messageTarget = targetItemId ? fwConstants.codeItemIdPrefix + codeId + '-' + targetItemId : '';
                    if (targetItemId) {
                        targetItemInfo = codes.formItems[targetItemId];
                        if (targetItemInfo && (targetItemInfo.controlId === 'rdo' || targetItemInfo.controlId === 'chl')) {
                            //RDO ,CHL
                            a.data('message-target', formInfo.formUtil.getCheckedOrFirstElement($('[name=' + messageTarget + ']').toArray()));
                        } else {
                            a.data('message-target', $('#' + messageTarget)[0]);
                        }
                        // メッセージのスタイル設定
                        $.each(info.target, function (j, mt) {
                            messageTarget = mt.formItemId ? fwConstants.codeItemIdPrefix + codeId + '-' + mt.formItemId : '';
                            targetElements = $('[name=' + messageTarget + ']');
                            if (targetItemInfo && (targetItemInfo.controlId === 'chl' || targetItemInfo.controlId === 'rdo')) {
                                $.each(targetElements, function () {
                                    $(this).parent().addClass(fwConstants.messageTargetItem);
                                });
                            } else {
                                $(targetElements).eq(0).addClass(fwConstants.messageTargetItem);
                            }
                        });
                    }
                    $('<li/>').append(a).appendTo(ul);
                });
                $(codeMessageAreaSelector).html('').append(ul).show();
            },
            /**
            * コード取得実行時のエラーメッセージを表示します。
            *  @param {String} ロケール文字列
            */
            showCodeNotFound: function (culture) {
                formInfo.formUtil.loadProjectCommonResource('CodeNotFoundMessage');
                messages.renderMessageDialog([formInfo.formUtil.getProjectCommonResource('CodeNotFoundMessage') || '']);
            }
        };

        // 入力チェック 共通処理
        validators = {
            /**
            * クライアントチェックを行います。実行結果を必ずtrue又はfalseで返してください。<br/>
            * メッセージの追加についてはhelpers.messages.addMessageを使用してください。
            * @param {Object} context アクションコンテキスト
            * @returns {Boolean} クライアントチェック成功時：true 失敗時:false 
            */
            customCheck: function (context) {
                var result = true, formResult;
                /* アプリケーション共通のチェック処理はここに記述してください。*/

                /* 画面単位のカスタムチェック処理を呼び出します。*/
                formResult = formInfo.actions.customCheck(context);
                result = result && formResult;

                return result;
            },
            /**
            * コード参照画面のクライアントチェックを行います。実行結果を必ずtrue又はfalseで返してください。<br/>
            * メッセージの追加についてはhelpers.messages.addCodeErrorを使用してください。
            * @param {Object} context アクションコンテキスト
            * @returns {Boolean} クライアントチェック成功時：true 失敗時:false 
            */
            customCodeCheck: function (context) {
                var result = true, codeResult;
                /* アプリケーション共通のチェック処理はここに記述してください。*/

                /* 画面単位のカスタムチェック処理を呼び出します。*/
                codeResult = formInfo.codes[context.formItemId].actions.customCheck(context);
                result = result && codeResult;

                return result;
            }
        };

        // フォーム共通イベントハンドラ
        events = {
            /**
            * 画面のロード時処理を行います。<br/>
            * HTMLドキュメント全体がロードされた際に一度だけ実行されます。<br/>
            * 以下の優先度で特定の要素をフォーカスします。<br/>
            * 1)サーバー側で明示的にフォーカス先要素を指定した場合、指定された要素をフォーカスします。<br/>
            * 2)サーバー側で設定されたメッセージについて、メッセージの対象項目として設定されている要素の先頭の要素をフォーカスします。<br/>
            * 3)フォーカス先が指定されていない場合には先頭の入力項目をフォーカスします。<br/>
            * このイベントはAjaxを使用したアクション処理によるHTMLの部分書き換え時には実行されません。
            */
            load: function () {
                var messageFocustTargets;
                window.fujitsu.intarfrm.kitnp.initialize(formInfo);
                // メッセージ表示
                messages.showMessage();
                if (!$.mobile) {
                    // フォーカス先が指定されている場合には特定の要素をフォーカスします。
                    if (!utils.setFormFocus([window.fujitsu.intarfrm.focusTarget])) {
                        // フォーカスが指定されておらず、メッセージが渡されている場合
                        // 対象が設定されている項目のみを抽出し、その先頭をフォーカス対象に設定します。
                        messageFocustTargets = $.map(formInfo.formUtil.getMessages(), function (msg) { return msg.target; });

                        if (!utils.setFormFocus(messageFocustTargets)) {
                            // フォーカス先が指定されていない場合には先頭の入力項目にフォーカスします。
                            $(formInfo.formUtil.getFirstFocusableElement()).focus();
                        }
                    }
                }
            },
            /**
            * フォームのサブミット時処理を行います。
            * @param {Object} event イベント。
            */
            submit: function (event) {
                event.preventDefault();
                // サブミット処理の実行時には常に画面で先頭のサブミット項目に設定されたフォームアクションが実行されます。
                var submitItem = $(event.currentTarget).find('[data-action-id]:submit:first')[0], context, formUtil = formInfo.formUtil;
                if (submitItem) {
                    context = formUtil.getActionContext($(submitItem).data('action-id'), submitItem);
                    actions.invokeFormAction(context);
                }
                return false;
            },
            /**
            * フォーカス時処理を行います。
            * @param {Object} event イベント。
            */
            focus: function (event) {
                var target = event.currentTarget, targetInfo = formInfo.formUtil.getFormItemInfoByElement(target);

                if (targetInfo) {
                    // IMEモードの設定
                    helpers.utils.setImeMode(target);
                    // MaxLengthの設定
                    if (targetInfo.maxLengthControl && !$(target).is('[maxLength]')) {
                        helpers.utils.setMaxLength(target, targetInfo);
                    }
                    // フォーマット処理
                    if (configurations.autoFormat && $(target).val() !== '') {
                        if (formInfo.formUtil.isFormatableControl(targetInfo.controlId)) {
                            // トリム処理
                            $(target).val(formInfo.formUtil.trim($(target).val(), targetInfo));
                            $(target).val(formInfo.formUtil.parseByItemInfo(targetInfo, $(target).val()));
                        }
                    }
                    // 自動タブ処理
                    if (configurations.autoTabFilter && targetInfo.autoTabSetting) {
                        // 自動タブ実行時にchangeイベントをトリガするための値を保存します。
                        helpers.utils.storeCurrentValue(target);
                    }
                    // 入力値の選択
                    window.setTimeout(function () {
                        if (target === document.activeElement) {
                            $(target).select();
                        }
                    }, 0);
                }
            },
            /**
            * ブラ―時処理を行います。
            * @param {Object} event イベント。
            */
            blur: function (event) {
                var target = event.currentTarget, targetInfo = formInfo.formUtil.getFormItemInfoByElement(target);

                if (targetInfo) {
                    if (formInfo.formUtil.isFormatableControl(targetInfo.controlId)) {
                        //フォーマット処理
                        if (configurations.autoFormat && $(target).val() !== '') {
                            // トリム処理
                            $(target).val(formInfo.formUtil.trim($(target).val(), targetInfo));
                            $(target).val(formInfo.formUtil.formatByItemInfo(targetInfo, $(target).val()));
                        }
                    }
                }
            },
            /**
            * キー押し下げ時処理を行います。
            * @param {Object} event イベント。
            */
            keydown: function (event) {
                if (configurations.tabOnEnter) {
                    // Enterキー押下時制御
                    if (!helpers.utils.tabOnEnter(event)) {
                        return false;
                    }
                }
                if (configurations.tabOnSpace) {
                    // Spaceキー押下時制御
                    if (!helpers.utils.tabOnSpace(event)) {
                        return false;
                    }
                }
            },
            /**
            * キープレス時処理を行います。
            * @param {Object} event イベント。
            */
            keypress: function (event) {
                if (configurations.keyFilter) {
                    // 入力値フィルタ制御
                    if (!helpers.utils.keyFilter(event)) {
                        return false;
                    }
                }
                if (configurations.autoTabFilter) {
                    // 自動タブ制御
                    if (!helpers.utils.autoTabFilter(event)) {
                        return false;
                    }
                }
            },
            /**
            * キー押し上げ時処理を行います。
            * @param {Object} event イベント。
            */
            keyup: function (event) {
                if (configurations.tabOnSpace
                    && (event.charCode || event.keyCode) === 32
                    && (event.shiftKey || event.ctrlKey)
                    && $(event.target).is('select,:radio,:checkbox,:file')) {
                    // Space key
                    return false;
                }
            },
            /**
            * フォームアクションの呼び出し処理を行います。
            * @param {Object} event イベント。
            */
            formActionEventHandler: function (event) {
                // バブリング停止, 同一要素のイベントも停止
                event.stopImmediatePropagation();
                // デフォルトのイベントも停止
                event.preventDefault();
                // フォームアクション処理の実行
                formInfo.events.formAction(event);
            },
            /**
            * コード参照ウィンドウの呼び出し処理を行います。
            * @param {Object} event イベント。
            */
            codeReferenceButtonClick: function (event) {
                formInfo.events.codeReference(event);
            },
            /**
            * コード取得処理の呼び出し処理を行います。
            * @param {Object} event イベント。
            */
            codeGetButtonClick: function (event) {
                formInfo.events.codeGet(event);
            },
            /**
            * blurイベント時に自動コード取得の処理を行います。<br/>
            * 自動コード取得のキー項目に設計された項目について、<br/>
            * focusイベント時に保存した値と比較して値が変更されている場合には自動コード取得の処理を行います。<br/>
            * イベント発生元項目が複数のコードのキー項目としてマッピングされている場合、<br/>
            * フォームの設計情報「フォーム項目順序」が若い方が優先されます。
            * @param {Object} event イベント。
            */
            autoCodeGet: function (event) {
                var target = event.currentTarget, targetInfo = formInfo.formUtil.getFormItemInfoByElement(target), code,
                rowIndex = formInfo.formUtil.getRowIndexByElement(target);
                if (targetInfo) {
                    // 自動コード取得でキー値に設定されている項目の場合、コード情報を取得します。
                    code = formInfo.formUtil.getMappedAutoCodeGetInfo(targetInfo.itemId);
                    if (code) {
                        if (!formInfo.formUtil.hasEmptyAutoCodeKey(target, code)) {
                            // 自動コード取得の実行
                            formInfo.events.autoCodeGet(event, code);
                        } else {
                            // キー項目のいずれかが入力されていない場合にはキー項目以外にマッピングされた項目をクリアします。
                            codes.clearCodeViewItem(code.formItemId, rowIndex);
                        }
                    }
                }
            },
            /**
            * メッセージエリアに出力されたメッセージをクリックした際のフォーカス制御を行います。
            * @param {Object} event イベント
            */
            errorMessageClick: function (event) {
                var target = event.currentTarget, targetItem = $(target).data('message-target');
                $(targetItem).focus();
            }
        };

        // フォームのイベントを設定します。
        initialize = function () {
            var messageSelector = '#' + formId + '----message_area',
                txt = ':text:not([readonly]):not([disabled])',
                tx2 = 'textarea:not([readonly]):not([disabled])',
                pwd = ':password:not([readonly]):not([disabled])',
                btn = ':button:not([disabled])',
                sub = ':submit:not([disabled])',
                chk = ':checkbox',
                rdo = ':radio',
                drl = 'select:not([multiple])',
                lst = 'select[multiple]',
                lnk = 'a[href]',
                fup = ':file',
                clr = ':reset',
                cod = '[data-code-type="cod"]',
                cog = '[data-code-type="cog"]',
                action = '[data-action-id]',
                errorMessage = messageSelector + ' [data-message-type]';

            // 二度目は実行しない
            initialize = function () { };

            // コード自動取得
            utils.addIfmChangeEventListener([txt, tx2, pwd, drl], events.autoCodeGet);
            // テキストボックスのフォーカス処理（アンフォーマット処理、IMEモード制御）
            utils.addFormEventListener('focus', [txt, tx2, pwd], events.focus);
            // テキストボックスのフォーカスアウト処理（フォーマット処理）
            utils.addFormEventListener('blur', [txt, tx2, pwd], events.blur);
            // フォームアクションが設定されたボタンのクリック
            utils.addFormEventListener('click', [lnk + action, btn + action, sub + action], events.formActionEventHandler);
            // コード参照ボタンのクリック
            utils.addFormEventListener('click', [lnk + cod, btn + cod], events.codeReferenceButtonClick);
            // コード取得ボタンのクリック
            utils.addFormEventListener('click', [lnk + cog, btn + cog], events.codeGetButtonClick);
            // エラーメッセージのフォーカス処理
            utils.addFormEventListener('click', errorMessage, events.errorMessageClick);

            // キー入力制御（Enterキー移動、キーフィルター、自動タブ制御など）
            $(document).on('keydown', formSelector, events.keydown);
            $(document).on('keypress', formSelector, events.keypress);
            $(document).on('keyup', formSelector, events.keyup);

            // フォームのサブミット制御
            $(document).on('submit', formSelector, events.submit);

            // DOMツリー構築完了
            $(document).on('ready', function () { $(this).trigger(htmlUpdatedEventName); });

            // ロード時制御
            $(window).on('load', events.load);


            // jQuery mobile 用初期化ロジック
            if ($.mobile) {
                // jQuery mobile のAjaxによる画面遷移を無効化
                $.mobile.ajaxEnabled = false;

                // 全画面 loading 中のTABキーによるフォーカスを防止する
                $(document).on('keydown', 'html.ui-loading *', function (e) {
                    if ((e.keyCode || e.which) === 9) { // TAB key
                        e.preventDefault();
                    }
                });
                //メッセージダイアログ用のボタン
                $(document).on('click', '[data-dialog-button="close"]', function (e) {
                    $.mobile.changePage(fwConstants.formContentSelector, { changeHash: false });
                });
            }

            // IE11 bfcache対策
            // キャッシュ防止用のイベントハンドラ
            $(window).on('beforeunload', function (e) { });
            $(window).on('unload', function (e) { });
            // キャッシュ検知用イベントハンドラ
            if (window.addEventListener) {
                window.addEventListener('pageshow', function (e) {
                    if (e.persisted) {
                        // キャッシュから読み込まれた場合、強制リロードする
                        $(document.body).hide();
                        location.reload();
                    }
                });
            }
        };

        // メンバーを公開する
        return {
            programId: programId,
            formId: formId,
            formInfo: formInfo,
            formats: formats,
            validators: validators,
            codes: codes,
            actions: actions,
            events: events,
            messages: messages,
            utils: utils,
            initialize: initialize
        };
    };
}(window));