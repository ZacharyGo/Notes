
package com.fujitsu.intarfrm.programs.practice7.practice7a.codes;

import com.fujitsu.intarfrm.helpers.commons.items.SelectableItemCollection;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.skeletons.commons.codes.contexts.CodeSearchContext;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;
import com.fujitsu.intarfrm.programs.practice7.practice7a.inherits.codes.DrlcodeCodeActionBase;

/**
 * <p>項目[DRLCODE]に割り当てたコード定義クラス。</p>
 *
 * 項目名：[DRLCODE]（標題：Dropdown using Code (key value display)）<br>
 * コードID：[PRODUCT_COD]、コード名：[PRODUCT_COD]（標題：）<br>
 * <br>
 * このクラスのメソッド内に拡張コードを記述することで、個別にコード参照の処理を拡張（変更）することが可能です。<br>
 * <br>
 *
 * @author INTARFRM
 */
public class DrlcodeCodeAction extends DrlcodeCodeActionBase {

     /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * コードDRLの検索条件を作成する
     * @param context <see cref="FormActionContext"/>
     * @return コードDRLの検索条件が設定されたCodeSearchContextオブジェクト
     */
    @Override
    protected CodeSearchContext createDrlSearchContext(FormActionContext context) {
        CodeSearchContext searchContext = super.createDrlSearchContext(context);

        // コードDRLの検索条件を拡張します

        return searchContext;
    }

    /**
     * ドロップダウンリストの選択項目のコレクションを作成する
     * このメソッドは、コード検索を実行し、取得されたデータから選択項目のリストを作成します。
     * @param context <see cref="FormActionContext"/>
     * @return ドロップダウンリストに表示される選択項目のリスト
     */
    @Override
    protected SelectableItemCollection createSelectableList(FormActionContext context) throws DatabaseException {
        SelectableItemCollection list = super.createSelectableList(context);

        // 作成された選択項目のリストを拡張します

        return list;
    }
}
