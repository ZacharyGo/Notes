
/**
* @fileOverview INTARFRM JavaScript Form
* @name intarfrm-form-practice4.js
* @author INTARFRM
*/
(function (window) {
    'use strict';

    var intarfrm = window.fujitsu.intarfrm,
        helpers = intarfrm.helpers,
        actions, events, setFormEventHandler,
        programId = 'practice4', formId = 'practice4',
        formInfo = intarfrm.forms[formId],
        formUtil = formInfo.formUtil = new intarfrm.FormUtil(programId, formId),
        skeleton = formInfo.skeleton = new intarfrm.Skeleton(programId, formId);

    formInfo.actions = actions = {

        /**
        * フォームアクション[PRACTICE4_（その他の動作）]の処理を実行します。
        * @param context フォームアクションコンテキスト
        */
        invokePractice4_etc: function (context) {
            /* このアクションの実行前の拡張処理はここに記述します。*/

            // フォームアクション実行
            skeleton.actions.invokeServerAction(context, function (context, data, xhr) {
                var fwData = data.__frameworkData;
                /* アクションの実行結果に対する拡張処理はここに記述します。*/

                skeleton.actions.formActionCommonCallBack(context, data, xhr);

            });
        },
        /**
        * 明細共通アクション。明細[M1]のページング処理を実行します。
        * @param context フォームアクションコンテキスト
        */
        invoke_m1_paging: function (context) {
            /* このアクションの実行前の拡張処理はここに記述します。*/

            // フォームアクション実行
            skeleton.actions.invokeServerAction(context, function (context, data, xhr) {
                var fwData = data.__frameworkData;
                /* アクションの実行結果に対する拡張処理はここに記述します。*/

                skeleton.actions.formActionCommonCallBack(context, data, xhr);
            });
        },

        /**
        * 明細共通アクション。明細[M1]のソーティング処理を実行します。
        * @param context フォームアクションコンテキスト
        */
        invoke_m1_sorting: function (context) {
            /* このアクションの実行前の拡張処理はここに記述します。*/

            // フォームアクション実行
            skeleton.actions.invokeServerAction(context, function (context, data, xhr) {
                var fwData = data.__frameworkData;
                /* アクションの実行結果に対する拡張処理はここに記述します。*/

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