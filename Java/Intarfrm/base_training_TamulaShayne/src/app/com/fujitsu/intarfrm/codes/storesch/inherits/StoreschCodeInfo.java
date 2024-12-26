// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.codes.storesch.inherits;

import com.fujitsu.intarfrm.entities.M_storeEntity;

import com.fujitsu.intarfrm.helpers.commons.attributes.AttributeManager;
import com.fujitsu.intarfrm.helpers.commons.codes.CodeException;
import com.fujitsu.intarfrm.helpers.commons.codes.inherits.CodeInfo;
import com.fujitsu.intarfrm.helpers.commons.codes.inherits.CodeItemInfo;
import com.fujitsu.intarfrm.helpers.commons.codes.inherits.CodeItemSearchInfo;
import com.fujitsu.intarfrm.helpers.commons.codes.inherits.CodeSearchType;
import com.fujitsu.intarfrm.helpers.commons.items.ItemControl;
import com.fujitsu.intarfrm.helpers.commons.items.ImeMode;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.skeletons.projectCommons.formats.FormatManager;

/**
 * <p>コード[Store Search]の情報クラス。<p>
 *
 * コードID：[STORESCH]、コード名：[Store Search]<br>
 *
 * @author INTARFRM継承ファイル
 */
public class StoreschCodeInfo extends CodeInfo {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

	/**
	 * コード項目「StoreID」のコード項目情報を取得する
	 */
	public CodeItemInfo getSTOREID() {
		return this.get("STOREID");
	}

	/**
	 * コード項目「StoreName」のコード項目情報を取得する
	 */
	public CodeItemInfo getSTORENAME() {
		return this.get("STORENAME");
	}

    /**
     * <p>コンストラクタ</p>
     */
    public StoreschCodeInfo() {
        this.codeId = "storesch";
        this.codeName = "Store Search";
        this.displayRow = 10;
        this.windowHeight = 600;
        this.windowWidth = 600;
        this.searchOnInit = !false;
        this.maxDisplayRow = 0;
        M_storeEntity entity = null;
        try {
            entity = new M_storeEntity();
        } catch (DatabaseException ex) {
            throw new CodeException(ex.getMessage());
        }

        {
            CodeItemInfo item = new CodeItemInfo();
            item.setColumn(entity.STOREID);
            item.setDispOrder(1);
            item.setFixedCondition("");
            item.setFormat(FormatManager.ITEM.getFormatInfo("00"));
            item.setWidth(50);
            item.setKeyOrder(1);
            item.setName("StoreID");
            item.setOrder(1);
            item.setId("STOREID");
            item.setSortOrder(0);
            item.setSortable(false);
            this.items.add(item);
        }

        {
            CodeItemInfo item = new CodeItemInfo();
            item.setColumn(entity.STORENAME);
            item.setDispOrder(2);
            item.setFixedCondition("");
            item.setFormat(FormatManager.ITEM.getFormatInfo("00"));
            item.setWidth(300);
            item.setKeyOrder(0);
            item.setName("StoreName");
            item.setOrder(2);
            item.setId("STORENAME");
            item.setSortOrder(0);
            item.setSortable(false);
            {
                CodeItemSearchInfo search = new CodeItemSearchInfo(item);
                search.setControlType(ItemControl.TXT);
                search.setOrder(1);
                search.setSearchType(CodeSearchType.CONTAINS);
                search.setAttribute(AttributeManager.getInstance().getAttributeInfo("SN5"));
                search.setImeMode(ImeMode.ON);
                search.setRequiredCheck(false);
                
                item.setSearchItem(search);
            }
            this.items.add(item);
        }

        for (CodeItemInfo item : this.items) {
            this.tableColumns.add(item.getColumn());
        }
    }
}
