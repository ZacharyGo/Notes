// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.codes.product_cod.inherits;

import com.fujitsu.intarfrm.entities.M_productEntity;

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
 * <p>コード[PRODUCT_COD]の情報クラス。<p>
 *
 * コードID：[PRODUCT_COD]、コード名：[PRODUCT_COD]<br>
 *
 * @author INTARFRM継承ファイル
 */
public class Product_codCodeInfo extends CodeInfo {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

	/**
	 * コード項目「商品ID」のコード項目情報を取得する
	 */
	public CodeItemInfo getPRODUCTID() {
		return this.get("PRODUCTID");
	}

	/**
	 * コード項目「商品名」のコード項目情報を取得する
	 */
	public CodeItemInfo getPRODUCTNAME() {
		return this.get("PRODUCTNAME");
	}

	/**
	 * コード項目「値段」のコード項目情報を取得する
	 */
	public CodeItemInfo getPRICE() {
		return this.get("PRICE");
	}

    /**
     * <p>コンストラクタ</p>
     */
    public Product_codCodeInfo() {
        this.codeId = "product_cod";
        this.codeName = "PRODUCT_COD";
        this.displayRow = 10;
        this.windowHeight = 420;
        this.windowWidth = 600;
        this.searchOnInit = !false;
        this.maxDisplayRow = 0;
        M_productEntity entity = null;
        try {
            entity = new M_productEntity();
        } catch (DatabaseException ex) {
            throw new CodeException(ex.getMessage());
        }

        {
            CodeItemInfo item = new CodeItemInfo();
            item.setColumn(entity.PRODUCTID);
            item.setDispOrder(0);
            item.setFixedCondition("");
            item.setFormat(FormatManager.ITEM.getFormatInfo("00"));
            item.setWidth(70);
            item.setKeyOrder(1);
            item.setName("商品ID");
            item.setOrder(1);
            item.setId("PRODUCTID");
            item.setSortOrder(0);
            item.setSortable(false);
            this.items.add(item);
        }

        {
            CodeItemInfo item = new CodeItemInfo();
            item.setColumn(entity.PRODUCTNAME);
            item.setDispOrder(1);
            item.setFixedCondition("");
            item.setFormat(FormatManager.ITEM.getFormatInfo("00"));
            item.setWidth(500);
            item.setKeyOrder(0);
            item.setName("商品名");
            item.setOrder(2);
            item.setId("PRODUCTNAME");
            item.setSortOrder(0);
            item.setSortable(true);
            {
                CodeItemSearchInfo search = new CodeItemSearchInfo(item);
                search.setControlType(ItemControl.TXT);
                search.setOrder(1);
                search.setSearchType(CodeSearchType.CONTAINS);
                search.setAttribute(AttributeManager.getInstance().getAttributeInfo("SN4"));
                search.setImeMode(ImeMode.ON);
                search.setRequiredCheck(false);
                
                item.setSearchItem(search);
            }
            this.items.add(item);
        }

        {
            CodeItemInfo item = new CodeItemInfo();
            item.setColumn(entity.PRICE);
            item.setDispOrder(2);
            item.setFixedCondition("");
            item.setFormat(FormatManager.ITEM.getFormatInfo("11"));
            item.setWidth(100);
            item.setKeyOrder(0);
            item.setName("値段");
            item.setOrder(3);
            item.setId("PRICE");
            item.setSortOrder(0);
            item.setSortable(true);
            this.items.add(item);
        }

        for (CodeItemInfo item : this.items) {
            this.tableColumns.add(item.getColumn());
        }
    }
}
