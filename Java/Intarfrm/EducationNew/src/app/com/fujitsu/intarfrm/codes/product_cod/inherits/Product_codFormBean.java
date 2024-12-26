// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.codes.product_cod.inherits;


import com.fujitsu.intarfrm.helpers.commons.beans.FormDataSet;
import com.fujitsu.intarfrm.helpers.commons.codes.data.CodeCardData;
import com.fujitsu.intarfrm.helpers.commons.codes.data.CodeFormDataSet;
import com.fujitsu.intarfrm.helpers.commons.codes.data.CodeFormDataSetExtension;
import com.fujitsu.intarfrm.helpers.commons.codes.data.CodeFormInfoExtension;
import com.fujitsu.intarfrm.helpers.commons.codes.data.CodeFormItemAttribute;
import com.fujitsu.intarfrm.helpers.commons.codes.data.CodeFormItemConstant;
import com.fujitsu.intarfrm.helpers.commons.codes.data.CodeListData;
import com.fujitsu.intarfrm.helpers.commons.codes.inherits.CodeInfo;
import com.fujitsu.intarfrm.helpers.commons.items.FormItemInfo;
import com.fujitsu.intarfrm.helpers.commons.items.FormBorderType;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageInfo;



/**
 * <p>コード[PRODUCT_COD]のデータクラス。<p>
 *
 * コードID：[PRODUCT_COD]、コード名：[PRODUCT_COD]<br>
 * このクラスはフォーム（カード部、明細部）のデータを管理します。<br>
 *
 * @author INTARFRM継承ファイル
 */
public final class Product_codFormBean extends CodeFormDataSetExtension<Product_codFormBean.Product_codCardBean, Product_codFormBean.Product_codFormInfo, Product_codFormBean.Product_codCardItems, Product_codFormBean.Product_codM1Items> {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     *
     * @param codeInfo コード情報
     * @param lang 言語情報
     */
    public Product_codFormBean(CodeInfo codeInfo, LanguageInfo lang) {
		super(codeInfo);
		this.INFO = new Product_codFormInfo(this, codeInfo, lang);
		super.setInfo(this.INFO);
		this.CARD = new Product_codCardBean(this);
		super.setCard(this.CARD);
		this.listDataMap.put(FormBorderType.M1, new CodeListData(this, this.INFO.getListInfo(FormBorderType.M1)));
	}

    /**
     * <p>カード部のデータクラス</p>
     */
    public class Product_codCardBean extends CodeCardData {

        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * コード検索項目「商品名」の値を取得または設定する
         * 項目標題：[商品名]
         */
        public String getPRODUCTNAME() {
            return (String) this.get("PRODUCTNAME-SEARCH");
        }

        /**
         * コード検索項目「商品名」の値を取得または設定する
         * 項目標題：[商品名]
         */
        public void setPRODUCTNAME(Object value) {
            this.put("PRODUCTNAME-SEARCH", value);
        }

        /**
         * コンストラクタ
         * @param owner コード参照フォームデータ
         */
        public Product_codCardBean(CodeFormDataSet owner) {
            super(owner);
        }
    }

    /**
     * <p>コード[PRODUCT_COD]のフォーム設計情報定義クラス。</p>
     *
     * コードID：[PRODUCT_COD]、コード名：[PRODUCT_COD]<br>
     * このクラスはフォームの設計定義情報を保持します。<br>
     *
     * @author INTARFRM継承ファイル
     */
    public final class Product_codFormInfo extends CodeFormInfoExtension <Product_codFormBean.Product_codCardItems, Product_codFormBean.Product_codM1Items> {

        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * <p>コンストラクタ。</p>
         *
         * @param form 親フォームデータ
         * @param codeInfo コード情報
         * @param lang 言語情報
         */
        public Product_codFormInfo(FormDataSet form, CodeInfo codeInfo, LanguageInfo lang) {
			super(form, codeInfo, lang, new Product_codCardItems(), new Product_codM1Items());
        }
    }

    /**
     * <p>カード（検索データ）に属する項目の項目情報定義クラス。</p>
     *
     * コードID：[PRODUCT_COD]、コード名：[PRODUCT_COD]<br>
     */
    public final class Product_codCardItems extends CodeFormItemConstant {

        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * コード検索項目「商品名」
         * 項目標題：[商品名]
         */
        @CodeFormItemAttribute(order=100, codeItemId="PRODUCTNAME", borderType=FormBorderType.CARD)
        public FormItemInfo PRODUCTNAME;

        public FormItemInfo PRODUCTNAME() {
            return super.items.get("PRODUCTNAME-SEARCH");
        }

    }

    /**
     * <p>明細[M1]（検索結果データ）の設計定義情報クラス。</p>
     *
     * コードID：[PRODUCT_COD]、コード名：[PRODUCT_COD]<br>
     * このクラスは明細、明細項目の情報を保持します。<br>
     */
    public final class Product_codM1Items extends CodeFormItemConstant {

        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * コード検索明細項目「商品名」
         * 項目標題：[商品名]
         */
        @CodeFormItemAttribute(order=100, codeItemId="PRODUCTNAME", borderType=FormBorderType.M1)
        public FormItemInfo PRODUCTNAME;

        public FormItemInfo PRODUCTNAME() {
            return super.items.get("PRODUCTNAME");
        }

        /**
         * コード検索明細項目「値段」
         * 項目標題：[値段]
         */
        @CodeFormItemAttribute(order=200, codeItemId="PRICE", borderType=FormBorderType.M1)
        public FormItemInfo PRICE;

        public FormItemInfo PRICE() {
            return super.items.get("PRICE");
        }

    }

}
