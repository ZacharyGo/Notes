
package com.fujitsu.intarfrm.codes.sotresch;

import java.io.Serializable;

import com.fujitsu.intarfrm.codes.sotresch.inherits.SotreschCodeInfo;
import com.fujitsu.intarfrm.codes.sotresch.inherits.SotreschFormBean;

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
 * <p>コード[Store Search]を処理するクラス。</p>
 *
 *
 * @author INTARFRM
 */
public class SotreschCodeActions implements Serializable {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * コード参照[Store Search]を処理するクラス。
     */
    public abstract class SotreschCodeAction extends ProjectCodeReferenceCommand {
        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * コンストラクタ
         */
        public SotreschCodeAction() {
            this.setFinder(new SotreschCodeFinder(this.getCodeInfo()));
            this.setListMode(FormListMode.MODE_1);
        }

        /**
         * コード参照フォームのフォームデータを作成する
         * @param context CodeReferenceContext
         * @return コード参照フォームのフォームデータ
         */
         @Override
         protected CodeFormDataSet createFormBean(CodeReferenceContext context) {
            SotreschFormBean formBean = new SotreschFormBean(this.getCodeInfo(), context.getFormActionContext().getCurrentLanguage());

            //コード参照フォームデータを拡張します

            return formBean;
        }

        /**
         * コード情報を作成する
         * @return コード情報
         */
        @Override
        protected CodeInfo createCodeInfo() {
             SotreschCodeInfo info = new SotreschCodeInfo();

             // コード参照・コード取得のコード情報を拡張します

             return info;
        }
    }

    /**
     * コードDRLを処理するコマンドクラス
     */
    public abstract class SotreschDrlAction extends ProjectCodeDrlCommand implements Serializable {
        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * コンストラクタ
         */
        public SotreschDrlAction() {
            this.setFinder(new SotreschCodeFinder(this.getCodeInfo()));
        }

        /**
         * コード情報を作成する
         * @return コード情報
         */
        @Override
        protected CodeInfo createCodeInfo() {
            SotreschCodeInfo info = new SotreschCodeInfo();

            // コードDRLのコード情報を拡張します

            return info;
        }
    }

    /**
     * コード検索を実行するクラス
     */
    public class SotreschCodeFinder extends ProjectCodeFinder implements Serializable {
        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * コンストラクタ
         */
        public SotreschCodeFinder() {
            this(new SotreschCodeInfo());
        }

        /**
         * コード情報を設定するコンストラクタ
         */
        public SotreschCodeFinder(CodeInfo codeInfo) {
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