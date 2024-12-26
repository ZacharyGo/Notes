// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.codes.storesch.inherits;


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
 * <p>コード[Store Search]のデータクラス。<p>
 *
 * コードID：[STORESCH]、コード名：[Store Search]<br>
 * このクラスはフォーム（カード部、明細部）のデータを管理します。<br>
 *
 * @author INTARFRM継承ファイル
 */
public final class StoreschFormBean extends CodeFormDataSetExtension<StoreschFormBean.StoreschCardBean, StoreschFormBean.StoreschFormInfo, StoreschFormBean.StoreschCardItems, StoreschFormBean.StoreschM1Items> {

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
    public StoreschFormBean(CodeInfo codeInfo, LanguageInfo lang) {
		super(codeInfo);
		this.INFO = new StoreschFormInfo(this, codeInfo, lang);
		super.setInfo(this.INFO);
		this.CARD = new StoreschCardBean(this);
		super.setCard(this.CARD);
		this.listDataMap.put(FormBorderType.M1, new CodeListData(this, this.INFO.getListInfo(FormBorderType.M1)));
	}

    /**
     * <p>カード部のデータクラス</p>
     */
    public class StoreschCardBean extends CodeCardData {

        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * コード検索項目「Store name」の値を取得または設定する
         * 項目標題：[]
         */
        public String getSTORENAME() {
            return (String) this.get("STORENAME-SEARCH");
        }

        /**
         * コード検索項目「Store name」の値を取得または設定する
         * 項目標題：[]
         */
        public void setSTORENAME(Object value) {
            this.put("STORENAME-SEARCH", value);
        }

        /**
         * コンストラクタ
         * @param owner コード参照フォームデータ
         */
        public StoreschCardBean(CodeFormDataSet owner) {
            super(owner);
        }
    }

    /**
     * <p>コード[Store Search]のフォーム設計情報定義クラス。</p>
     *
     * コードID：[STORESCH]、コード名：[Store Search]<br>
     * このクラスはフォームの設計定義情報を保持します。<br>
     *
     * @author INTARFRM継承ファイル
     */
    public final class StoreschFormInfo extends CodeFormInfoExtension <StoreschFormBean.StoreschCardItems, StoreschFormBean.StoreschM1Items> {

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
        public StoreschFormInfo(FormDataSet form, CodeInfo codeInfo, LanguageInfo lang) {
			super(form, codeInfo, lang, new StoreschCardItems(), new StoreschM1Items());
        }
    }

    /**
     * <p>カード（検索データ）に属する項目の項目情報定義クラス。</p>
     *
     * コードID：[STORESCH]、コード名：[Store Search]<br>
     */
    public final class StoreschCardItems extends CodeFormItemConstant {

        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * コード検索項目「Store name」
         * 項目標題：[]
         */
        @CodeFormItemAttribute(order=100, codeItemId="STORENAME", borderType=FormBorderType.CARD)
        public FormItemInfo STORENAME;

        public FormItemInfo STORENAME() {
            return super.items.get("STORENAME-SEARCH");
        }

    }

    /**
     * <p>明細[M1]（検索結果データ）の設計定義情報クラス。</p>
     *
     * コードID：[STORESCH]、コード名：[Store Search]<br>
     * このクラスは明細、明細項目の情報を保持します。<br>
     */
    public final class StoreschM1Items extends CodeFormItemConstant {

        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * コード検索明細項目「Store ID」
         * 項目標題：[]
         */
        @CodeFormItemAttribute(order=100, codeItemId="STOREID", borderType=FormBorderType.M1)
        public FormItemInfo STOREID;

        public FormItemInfo STOREID() {
            return super.items.get("STOREID");
        }

        /**
         * コード検索明細項目「Store name」
         * 項目標題：[]
         */
        @CodeFormItemAttribute(order=200, codeItemId="STORENAME", borderType=FormBorderType.M1)
        public FormItemInfo STORENAME;

        public FormItemInfo STORENAME() {
            return super.items.get("STORENAME");
        }

    }

}
