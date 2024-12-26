
/**
* @fileOverview INTARFRM JavaScript Form
* @name intarfrm-form-practice5.js
* @author INTARFRM
*/
(function (window) {
    'use strict';

    var intarfrm = window.fujitsu.intarfrm,
        helpers = intarfrm.helpers,
        actions, events, setFormEventHandler,
        programId = 'practice5', formId = 'practice5',
        formInfo = intarfrm.forms[formId],
        formUtil = formInfo.formUtil = new intarfrm.FormUtil(programId, formId),
        skeleton = formInfo.skeleton = new intarfrm.Skeleton(programId, formId);

    formInfo.actions = actions = {

        /**
        * フォームアクション[PRACTICE5_他フォーム]の処理を実行します。
        * @param context フォームアクションコンテキスト
        */
        invokePractice5_frm: function (context) {
            /* このアクションの実行前の拡張処理はここに記述します。*/			The extended processing before executing this action is described here.
            // ADD START---------------------------------------------------
            // idがdialogのdivタグにダイアログに表示するメッセージを作成する。	Create a message to be displayed in the dialog in the div tag whose id is dialog. 
            $('#dialog').html('Are you sure you want to delete?');

            // idがdialogのdivタグをダイアログとして表示する。				Display the div tag with id dialog as a dialog.
            // オプションに位置を中央、モーダルON、ボタンの配置を設定する。		Set the position to center, modal ON, and button placement in the options.
            // ボタンを押した時の処理をそれぞれに実装する。					Implement the processing when the button is pressed. 
            $('#dialog').dialog({
                position: {
                    of: window,
                    at: "center",
                    my: "center"
                },
                modal: true,
                buttons: {
                    'Yes': function () {
                        // [はい]が選択された場合の処理を実装する。						Implement the process when [Yes] is selected.
                        // [はい]が選択された場合は後続の処理を実行するため、				If [Yes] is selected, the subsequent processing will be executed, so
                        // 後続の処理[skeleton.actions.invokeServerAction]を行う。		Perform subsequent processing [skeleton.actions.invokeServerAction].												
						// ZG Code Added (20211208) {Begin}
						
						// ZG Code Added (20211208) {End}
                    	//処理が完了した後はダイアログをクローズする。						Close the dialog after the process is complete. 
                        $(this).dialog('close');
                    },
                    'No': function () {
                        // [いいえ]が選択された場合の処理を実装する。						Implement the process when [No] is selected.
                        // [いいえ]が選択された場合は後続の処理を実行しない。				If [No] is selected, the subsequent processing will not be executed. 

                        //処理が完了した後はダイアログをクローズする。						Close the dialog after the process is complete. 
                        $(this).dialog('close');
                    }
                }
            });
            // ADD END-----------------------------------------------------
            // フォームアクション実行														Form action execution 
            skeleton.actions.invokeServerAction(context, function (context, data, xhr) {
                var fwData = data.__frameworkData;
                /* アクションの実行結果に対する拡張処理はここに記述します。*/					/*The extended processing for the execution result of the action is described here.*/

                skeleton.actions.formActionCommonCallBack(context, data, xhr);

            });
        },
        /**
        * この画面専用のカスタムチェック処理を行います。
        */
        customCheck: function (context) {
            return true;
        },
        /**
        * コード参照ウィンドウの呼び出し処理を行います。
        * 呼び出し時及び、呼び出し結果の取得後の拡張処理を実装する場合にはこのメソッドに実装してください。
        * @param {Object} context コードコンテキスト
        */
        invokeCodeReference: function (context) {
            /*コード参照ウィンドウの呼び出し前の拡張処理はここに記述します。*/
            skeleton.actions.invokeCodeActionCommon(context, function (context, data, xhr) {
                var fwData = data.__frameworkData;
                /* コード参照ウィンドウの呼び出しの実行結果に対する拡張処理はここに記述します。*/

                skeleton.actions.codeReferenceCallBack(context, data, xhr);
            });
        },
        /**
        * コード取得処理の呼び出し処理を行います。
        * 呼び出し時及び、呼び出し結果の取得後の拡張処理を実装する場合にはこのメソッドに実装してください。
        * @param {Object} context コードコンテキスト
        */
        invokeCodeGet: function (context) {
            /*コード取得の呼び出し前の拡張処理はここに記述します。*/
            skeleton.actions.invokeCodeActionCommon(context, function (context, data, xhr) {
                var fwData = data.__frameworkData;
                /* コード取得の呼び出しの実行結果に対する拡張処理はここに記述します。*/

                skeleton.actions.codeGetCallBack(context, data, xhr);
            });
        },
        /**
        * 自動コード名称処理の呼び出し処理を行います。
        * 呼び出し時及び、呼び出し結果の取得後の拡張処理を実装する場合にはこのメソッドに実装してください。
        * @param {Object} context コードコンテキスト。
        */
        invokeAutoCodeGet: function (context) {

            /* 自動コード名称取得の呼び出し前の拡張処理はここに記述します。*/
            skeleton.actions.invokeCodeActionCommon(context, function (context, data, xhr) {
                var fwData = data.__frameworkData;
                /* 自動コード名称取得の呼び出しの実行結果に対する拡張処理はここに記述します。*/
                skeleton.actions.autoCodeGetCallBack(context, data, xhr);

            });
        },
        /**
        * コード参照　出口ルーチン
        * この処理はコード画面の検索結果項目の選択時の親画面へのデータの転送後に実行されます。
        * 拡張処理を実装する場合にはこのメソッドに実装してください。
        * @param {Object} rowIndex コード参照画面で選択したレコードの明細行インデックス
        * @param {Object} codeId コードID
        * @param {Object} formItemId コード実行元項目ID
        * @param {Object} originRowIndex コード実行元項目明細行インデックス
        */
        onCodeDataTransfer: function (rowIndex, codeId, formItemId, originRowIndex) {
            return;
        }
    };

    formInfo.events = events = {
        /**
        * DOMの構築が完了した時のイベント処理を実行します。
        * replaceHtmlElementによりHTMLが変更された際には実行されません。
        * @param {Object} event イベント情報。
        */
        ready: function (event) {
        },
        /**
        * DOMの構築が完了した時及び、replaceHtmlElementによりHTMLが変更された際の
        * イベント処理を実行します。
        * @param {Object} event イベント情報。
        */
        ifmHtmlUpdated: function (event) {

        },
        /**
        * フォームアクションの呼び出し処理を行います。
        * @param {Object} event イベント情報。
        */
        formAction: function (event) {
            var context = formUtil.getActionContextByEvent(event);
            skeleton.actions.invokeFormAction(context);
        },
        /**
        * コード参照ウィンドウの呼び出し処理を行います。
        * @param {Object} event イベント情報。
        */
        codeReference: function (event) {
            var context = formUtil.getCodeContextByEvent(event, 'codInit');
            actions.invokeCodeReference(context);
        },
        /**
        * コード取得処理の呼び出し処理を行います。
        * @param {Object} event イベント情報。
        */
        codeGet: function (event) {
            var context = formUtil.getCodeContextByEvent(event, 'cog');
            actions.invokeCodeGet(context);
        },
        /**
        * 自動コード名称取得処理を行います。
        * @param {Object} event イベント情報。
        * @param {Object} code コード情報。
        */
        autoCodeGet: function (event, code) {
            var context = formUtil.getAutoCodeContext(event, code);
            actions.invokeAutoCodeGet(context);
        }
    };
    /**
    * イベントの初期化処理を行います。
    */
    setFormEventHandler = function () {
        // フレームワーク既定のイベント初期化処理
        skeleton.initialize(formId);

        // readyイベント時の処理をバインドします。
        $(document).on('ready', events.ready);

        // ifmHtmlUpdatedイベント時の処理をバインドします。
        $(document).on(helpers.fwConstants.htmlUpdatedEventName, events.ifmHtmlUpdated);

        // イベント処理を拡張したい場合にはここに記述してください
        //
        // フォーム項目に対するイベント付与の例
        // skeleton.utils.addFormItemEventListener(eventName, [FORM_ITEM_ID], function (event) {[イベント処理]});
        //
        // jQueryによる任意の要素に対するイベント付与の例
        // $(document).on(eventName, selector, function (event) { [イベント処理] });
    };

    // この処理はJavaScriptが読み込まれた時点で実行されます。
    (function () {

        // この画面のイベントの初期化処理を呼び出します。
        setFormEventHandler();


    }());

}(window));