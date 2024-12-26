/**
* @fileOverview INTARFRM JavaScript Cod
* @name intarfrm-code-product_cod.js
* @author INTARFRM
*/

(function (window) {
    'use strict';
    var intarfrm = window.fujitsu.intarfrm, setFormEventHandler,
        helpers = intarfrm.helpers,
        fwConstants = helpers.fwConstants,
        paretnInfo = $(fwConstants.codeDialogSelector).data('parentInfo'),
        formId = paretnInfo.formId,
        programId = paretnInfo.programId,
        formItemId = paretnInfo.itemId,
        originRowIndex = paretnInfo.rowIndex,
        formInfo = intarfrm.forms[formId],
        codeId = 'product_cod',
        codes = formInfo.codes[formItemId],
        skeleton = formInfo.skeleton,
        actions, initialize, events,
        formUtil = formInfo.formUtil;

    //コード画面のアクション処理
    codes.actions = actions = {
        /**
        * 検索処理を行います。
        * @param {Object} context コードコンテキスト
        */
        codeSearch: function (context) {
            /* 検索の呼び出し前の拡張処理はここに記述します。*/

            skeleton.actions.invokeCodeActionCommon(context, function (context, data, xhr) {
                var fwData = data.__frameworkData;
                /* 検索処理の実行結果に対する拡張処理はここに記述します。*/

                skeleton.actions.codeReferenceCallBack(context, data, xhr);
            });
        },
        /**
        * この画面専用のカスタムチェック処理を行います。
        */
        customCheck: function (context) {
            return true;
        },
    };

    //画面のイベント処理
    codes.events = events = {
        /**
        * 明細のページング、ソーティング、検索実行時の処理を行います。
        * @param {Object} event イベント情報。
        */
        search: function (event) {
            var context = formUtil.getCodeContextByEvent(event, 'codSearch', formItemId);

            actions.codeSearch(context);
        },
        /**
        * 検索結果選択時の処理を行います。
        * @param {Object} event イベント情報。
        */
        codeDataTransfer: function (event) {
            var rowIndex = $(event.currentTarget).data("action-row");

            //コード参照出口ルーチン
            skeleton.codes.codeDataTransfer(rowIndex, formId, formItemId, originRowIndex);
           
		    formInfo.actions.onCodeDataTransfer(rowIndex, codeId, formItemId, originRowIndex);
            

        },
    };

    /**
    * イベントの初期化処理を行います。
    */
    setFormEventHandler = function () {
        // イベント処理を拡張したい場合にはここに記述してください

        // フレームワーク既定のイベント初期化処理
        skeleton.codes.codeInitialize(codeId);
    }

    // この処理はJavaScriptが読み込まれた時点で実行されます。
    (function () {

        // この画面のイベントの初期化処理を呼び出します。
        setFormEventHandler();

    });

}(window));