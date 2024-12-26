// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.tyu010we.tyu01002.inherits.codes;

import java.io.Serializable;

import com.fujitsu.intarfrm.codes.storesch.StoreschCodeActions;
import com.fujitsu.intarfrm.helpers.commons.codes.data.CodeMapping;

/**
 * <p>項目[BTNSEARCH]に割り当てたコード定義クラス。</p>
 *
 * 項目名：[Button Search]（標題：Search）<br>
 * コードID：[STORESCH]、コード名：[Store Search]（標題：）<br>
 * 
 * @author INTARFRM継承ファイル
 */
public class BtnsearchCodeActionBase
        extends StoreschCodeActions.StoreschCodeAction {
    
    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;
    
    /**
     * <p>コンストラクタ。</p>
     */
    public BtnsearchCodeActionBase() {
        this(new StoreschCodeActions());
    }

    /**
     * <p>コンストラクタ。</p>
     */
    public BtnsearchCodeActionBase(StoreschCodeActions actions) {
		actions.super();
		super.setCodeType(com.fujitsu.intarfrm.helpers.commons.codes.CodeType.COD);
    }

    /**
     * {@inheritDoc}
     */
	@Override
	protected CodeMapping createCodeMapping() {
		return new BtnsearchCodeMapping();
	}

    /**
     * 項目名：[Button Search]（標題：Search）に割り当てたコード：[Store Search] のコードマッピング情報クラス
     */
    public class BtnsearchCodeMapping extends CodeMapping implements Serializable {

        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * 項目ID
         */
        private static final String CODE_ACTION_ITEM_ID = "Btnsearch";

        /**
         * <p>コンストラクタ。</p>
         */
        public BtnsearchCodeMapping() {
            super(CODE_ACTION_ITEM_ID);
            this.add(CODE_ACTION_ITEM_ID, "STOREID", "STOREID");
            this.add(CODE_ACTION_ITEM_ID, "STORENAME", "STORENAME");
        }
    }
}
