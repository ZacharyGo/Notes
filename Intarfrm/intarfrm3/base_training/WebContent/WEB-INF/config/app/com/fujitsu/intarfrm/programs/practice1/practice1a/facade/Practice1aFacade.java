
package com.fujitsu.intarfrm.programs.practice1.practice1a.facade;

import com.fujitsu.intarfrm.programs.practice1.practice1a.inherits.Practice1aFormBean;
import com.fujitsu.intarfrm.programs.practice1.practice1a.facade.Practice1aDataMapper.DataMapperType;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.helpers.models.transactions.DbTransaction;
import com.fujitsu.intarfrm.helpers.models.transactions.IfmConnection;
import com.fujitsu.intarfrm.skeletons.projectCommons.facades.ModelContext;


/**
 * <p>フォーム[演習１－１]の業務処理クラス。</p>
 *
 * このフォームに定義した各アクションの行処理を実行します。<br>
 *
 * @author INTARFRM
 */
public final class Practice1aFacade extends Practice1aFacadeBase {

    /**
     * <p>ロード処理を実行する。</p>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void do_Load(ModelContext<Practice1aFormBean> context) throws Exception {
    }


    /**
     * <p>フォームアクション[PRACTICE1A_自画面遷移(PRACTICE1A_FRM)]の処理を実行する。</p>
     *
     * アクション: 他フォーム(FRM)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doPractice1a_frm(ModelContext<Practice1aFormBean> context) throws Exception {
    }

    /**
     * <p>フォームアクション[PRACTICE1A_他画面遷移(PRACTICE1A_FRM1)]の処理を実行する。</p>
     *
     * アクション: 他フォーム(FRM)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doPractice1a_frm1(ModelContext<Practice1aFormBean> context) throws Exception {
    }

}
