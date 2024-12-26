
package com.fujitsu.intarfrm.codes.product_cod;

import java.io.Serializable;

import com.fujitsu.intarfrm.codes.product_cod.inherits.Product_codCodeInfo;
import com.fujitsu.intarfrm.codes.product_cod.inherits.Product_codFormBean;

import com.fujitsu.intarfrm.helpers.commons.codes.data.CodeFormDataSet;
import com.fujitsu.intarfrm.helpers.commons.codes.inherits.CodeInfo;
import com.fujitsu.intarfrm.helpers.commons.items.FormListMode;
import com.fujitsu.intarfrm.helpers.models.entity.RawSqlSelectBuilder;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.skeletons.commons.codes.contexts.CodeReferenceContext;
import com.fujitsu.intarfrm.skeletons.commons.codes.contexts.CodeSearchContext;
import com.fujitsu.intarfrm.skeletons.projectCommons.codes.ProjectCodeDrlCommand;
import com.fujitsu.intarfrm.skeletons.projectCommons.codes.ProjectCodeFinder;
import com.fujitsu.intarfrm.skeletons.projectCommons.codes.ProjectCodeReferenceCommand;

/**
 * <p>コード[PRODUCT_COD]を処理するクラス。</p>
 *
 *
 * @author INTARFRM
 */
public class Product_codCodeActions implements Serializable {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * コード参照[PRODUCT_COD]を処理するクラス。
     */
    public abstract class Product_codCodeAction extends ProjectCodeReferenceCommand {
        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * コンストラクタ
         */
        public Product_codCodeAction() {
            this.setFinder(new Product_codCodeFinder(this.getCodeInfo()));
            this.setListMode(FormListMode.MODE_1);
        }

        /**
         * コード参照フォームのフォームデータを作成する
         * @param context CodeReferenceContext
         * @return コード参照フォームのフォームデータ
         */
         @Override
         protected CodeFormDataSet createFormBean(CodeReferenceContext context) {
            Product_codFormBean formBean = new Product_codFormBean(this.getCodeInfo(), context.getFormActionContext().getCurrentLanguage());

            //コード参照フォームデータを拡張します

            return formBean;
        }

        /**
         * コード情報を作成する
         * @return コード情報
         */
        @Override
        protected CodeInfo createCodeInfo() {
             Product_codCodeInfo info = new Product_codCodeInfo();

             // コード参照・コード取得のコード情報を拡張します

             return info;
        }
    }

    /**
     * コードDRLを処理するコマンドクラス
     */
    public abstract class Product_codDrlAction extends ProjectCodeDrlCommand implements Serializable {
        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * コンストラクタ
         */
        public Product_codDrlAction() {
            this.setFinder(new Product_codCodeFinder(this.getCodeInfo()));
        }

        /**
         * コード情報を作成する
         * @return コード情報
         */
        @Override
        protected CodeInfo createCodeInfo() {
            Product_codCodeInfo info = new Product_codCodeInfo();

            // コードDRLのコード情報を拡張します

            return info;
        }
    }

    /**
     * コード検索を実行するクラス
     */
    public class Product_codCodeFinder extends ProjectCodeFinder implements Serializable {
        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * コンストラクタ
         */
        public Product_codCodeFinder() {
            this(new Product_codCodeInfo());
        }

        /**
         * コード情報を設定するコンストラクタ
         */
        public Product_codCodeFinder(CodeInfo codeInfo) {
            super(codeInfo);
        }

        /**
         * コード検索で使用するRawSqlSelectBuilderを作成する
         * @param コード情報
         * @param CodeSearchContext
         * @return コード検索を実行するためのRawSqlSelectBuilder
         */
        @Override
        protected RawSqlSelectBuilder createFindCommandBuilder(CodeInfo codeInfo, CodeSearchContext searchContext) throws DatabaseException {
            RawSqlSelectBuilder builder = super.createFindCommandBuilder(codeInfo, searchContext);

            //コード検索のSQL文を拡張します

            return builder;
        }
    }
}