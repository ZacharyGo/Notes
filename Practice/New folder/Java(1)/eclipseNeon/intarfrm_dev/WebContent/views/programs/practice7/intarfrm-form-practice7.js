
/**
* @fileOverview INTARFRM JavaScript Form
* @name intarfrm-form-practice7.js
* @author INTARFRM
*/
(function (window) {
    'use strict';

    var intarfrm = window.fujitsu.intarfrm,
        helpers = intarfrm.helpers,
        actions, events, setFormEventHandler,
        programId = 'practice7', formId = 'practice7',
        formInfo = intarfrm.forms[formId],
        formUtil = formInfo.formUtil = new intarfrm.FormUtil(programId, formId),
        skeleton = formInfo.skeleton = new intarfrm.Skeleton(programId, formId);

    formInfo.actions = actions = {

        /**
        * フォームアクション[PRACTICE4_ETC]の処理を実行します。
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
        * フォームアクション[PRACTICE7_DBU_DELETE]の処理を実行します。
        * @param context フォームアクションコンテキスト
        */
        invokePractice7_dbu_delete: function (context) {
            /* このアクションの実行前の拡張処理はここに記述します。*/

            // フォームアクション実行
            skeleton.actions.invokeServerAction(context, function (context, data, xhr) {
                var fwData = data.__frameworkData;
                /* アクションの実行結果に対する拡張処理はここに記述します。*/

                skeleton.actions.formActionCommonCallBack(context, data, xhr);

            });
        },
        /**
        * フォームアクション[PRACTICE7_FRM_ADD]の処理を実行します。
        * @param context フォームアクションコンテキスト
        */
        invokePractice7_frm_add: function (context) {
            /* このアクションの実行前の拡張処理はここに記述します。*/

            // フォームアクション実行
            skeleton.actions.invokeServerAction(context, function (context, data, xhr) {
                var fwData = data.__frameworkData;
                /* アクションの実行結果に対する拡張処理はここに記述します。*/

                skeleton.actions.formActionCommonCallBack(context, data, xhr);

            });
        },
        /**
        * フォームアクション[PRACTICE7_FRM_DETAILS]の処理を実行します。
        * @param context フォームアクションコンテキスト
        */
        invokePractice7_frm_details: function (context) {
            /* このアクションの実行前の拡張処理はここに記述します。*/

            // フォームアクション実行
            skeleton.actions.invokeServerAction(context, function (context, data, xhr) {
                var fwData = data.__frameworkData;
                /* アクションの実行結果に対する拡張処理はここに記述します。*/

                skeleton.actions.formActionCommonCallBack(context, data, xhr);

            });
        },
        /**
        * フォームアクション[PRACTICE7_FRM_EDIT]の処理を実行します。
        * @param context フォームアクションコンテキスト
        */
        invokePractice7_frm_edit: function (context) {
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
        
        //--- START
        function incrementValue(val) {
            var value = val;
            return function() {
                return ++value;
            }
        }

        var inc0 = incrementValue(0);
        var inc5 = incrementValue(5);

        console.log("----- Reviewer #2 START ----- ");
        console.log(inc0());
        console.log(inc5());
        console.log(inc0());
        console.log(inc5());
        console.log("----- Reviewer #2 END ----- ");
        
        var promise = new Promise(function(resolve, reject) {
            if(1) { 
                resolve("start"); 
            } else { 
                 reject(Error("error.")); 
            }
         });

        promise
        .then(function() { 
        	console.log("----- Reviewer #5 START ----- "); 
        	console.log("step1.");
        })
        .then(function() { 
            reject();
            console.log("step2."); 
        })
        	.catch(function(err) { 
            	console.log("err1."); 
            })
        	.then(function() { 
            	console.log("step3."); 
             }, function(err) { 
            	 console.log("err2."); 
             })
             	.catch(function(err) { 
                	console.log("err3."); 
                })
        		.then(function() { 
                	console.log("end."); 
                	console.log("----- Reviewer #5 END ----- ");
                });
        
        console.log("----- Reviewer #30 START ----- ");
        var array = {key1:"value1", key2:"value2", key3:"value3"};
        for (var key in array) {
            console.log(key + "." + array[key]);
        }
        Object.keys(array).forEach(function(key){
            console.log(key + ":" + this[key])
        }, array);
//        array.forEach(function(value, key, array) {
//            console.log(key + ':' + value);
//        }, array);
        $.each(array, function(key, value) {
            console.log(key + ':' + value);
        });
        console.log("----- Reviewer #30 END ----- ");
        
        console.log("----- Reviewer #51 START ----- ");
        console.log("typeof [] = " + typeof []);
        console.log("typeof class C {} = " + typeof class C {});
        console.log("typeof Date() = " + typeof Date());
        console.log("typeof null = " + typeof null);
        console.log("typeof NaN = " + typeof NaN);
        console.log("----- Reviewer #51 END ----- ");

        console.log("----- Reviewer #61 START ----- ");
        console.log("Boolean('') : "+ Boolean(''));
        console.log("Boolean(new Number(0)) : "+ Boolean(new Number(0)));
        console.log("Boolean(0) : "+ Boolean(0));
        console.log("Boolean(NaN) : "+ Boolean(NaN));
        console.log("----- Reviewer #61 END ----- ");
        
        //--- END
        
        console.log("----- Reviewer #93 START ----- ");
        var val = "10";
        if (val == 10) {
        	console.log("The value is 10");
        }else {
        	console.log("The value is not 10");
        }
        if (val === 10) {
        	console.log("The value is 10");
        } else {
        	console.log("The value is not 10");
        }
        console.log("----- Reviewer #93 END ----- ");
        
        
    }());

}(window));