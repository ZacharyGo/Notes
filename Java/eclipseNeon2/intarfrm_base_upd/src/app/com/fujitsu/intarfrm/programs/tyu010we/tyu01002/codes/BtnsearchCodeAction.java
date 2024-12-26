
package com.fujitsu.intarfrm.programs.tyu010we.tyu01002.codes;

import com.fujitsu.intarfrm.codes.storesch.inherits.StoreschFormBean;
import com.fujitsu.intarfrm.helpers.commons.codes.CodeKey;
import com.fujitsu.intarfrm.helpers.commons.codes.data.CodeFormDataSet;
import com.fujitsu.intarfrm.skeletons.commons.codes.contexts.CodeGetContext;
import com.fujitsu.intarfrm.skeletons.commons.codes.contexts.CodeReferenceContext;
import com.fujitsu.intarfrm.skeletons.commons.codes.contexts.CodeSearchContext;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.inherits.codes.BtnsearchCodeActionBase;

/**
 * <p>項目[BTNSEARCH]に割り当てたコード定義クラス。</p>
 *
 * 項目名：[Button Search]（標題：Search）<br>
 * コードID：[STORESCH]、コード名：[Store Search]（標題：Store Search）<br>
 * <br>
 * このクラスのメソッド内に拡張コードを記述することで、個別にコード参照の処理を拡張（変更）することが可能です。<br>
 * <br>
 *
 * @author INTARFRM
 */
public class BtnsearchCodeAction extends BtnsearchCodeActionBase {

     /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * コード参照フォームのフォームデータを作成する
     * @param context CodeReferenceContext
     * @return コード参照フォームのフォームデータ
     */
     @Override
     protected CodeFormDataSet createFormBean(CodeReferenceContext context) {
         StoreschFormBean formBean = (StoreschFormBean) super.createFormBean(context);

         // コード参照フォームデータを拡張します

         return formBean;
     }

    /**
     * コード参照の検索条件を作成する
     * @param context CodeReferenceContext
     * @param codeForm コード参照フォームのフォームデータ
     * @return コード参照の検索条件が設定されたCodeSearchContextオブジェクト
     */
     @Override
     protected CodeSearchContext createCodeReferenceSearchContext(CodeReferenceContext context, CodeFormDataSet codeForm) {
         CodeSearchContext searchContext = super.createCodeReferenceSearchContext(context, codeForm);

         // コード参照の検索条件を拡張します

         return searchContext;
     }

    /**
     * コード取得・コードチェックの検索条件を作成する
     * @param context CodeGetContext
     * @param CodeKey コードのキー値が設定されたCodeKeyオブジェクト
     * @return コード取得・コードチェックの検索条件が設定されたCodeSearchContextオブジェクト
     */
    @Override
    protected CodeSearchContext createCodeKeySearchContext(CodeGetContext context, CodeKey codeKey) {
        CodeSearchContext searchContext = super.createCodeKeySearchContext(context, codeKey);

        // コード取得・コードチェックの検索条件を拡張します

        return searchContext;
    }

}
