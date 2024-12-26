
package com.fujitsu.intarfrm.programs.practice1.practice1a.facade;

import com.fujitsu.intarfrm.programs.practice1.practice1a.inherits.Practice1aFormBean;
import com.fujitsu.intarfrm.programs.practice1.practice1a.facade.Practice1aDataMapper.DataMapperType;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.helpers.models.transactions.DbTransaction;
import com.fujitsu.intarfrm.helpers.models.transactions.IfmConnection;
import com.fujitsu.intarfrm.skeletons.projectCommons.facades.ModelContext;


/**
 * <p>フォーム[演習１－１]の業務処理クラス。</p>
 *<p> Business processing class of form [Practice 1-1]. </ p>
 *
  * このフォームに定義した各アクションの行処理を実行します。<br>
 * Performs row processing for each action defined in this form. <br>
 *
 * @author INTARFRM
 */
public final class Practice1aFacade extends Practice1aFacadeBase {

    /**
     * <p>ロード処理を実行する。</p>
     * <p> Execute the load process. </ p>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void do_Load(ModelContext<Practice1aFormBean> context) throws Exception {
    }


    /**
     * <p>フォームアクション[PRACTICE1A_自画面遷移(PRACTICE1A_FRM)]の処理を実行する。</p>
     * <p> Execute the process of the form action [PRACTICE1A_self-screen transition (PRACTICE1A_FRM)]. </ p>
     *
           * アクション: 他フォーム(FRM)<br>
     * Action: Other Form (FRM) <br>
     *
     * @param context コンテキストオブジェクト Context object
     * @throws Exception 例外 exception
     */
    public void doPractice1a_frm(ModelContext<Practice1aFormBean> context) throws Exception {
    }

    /**
     * <p>フォームアクション[PRACTICE1A_他画面遷移(PRACTICE1A_FRM1)]の処理を実行する。</p>
     * <p> Executes the processing of the form action [PRACTICE1A_other screen transition (PRACTICE1A_FRM1)]. </ p>
     *
            *  アクション: 他フォーム(FRM)<br>
     * Action: Other Form (FRM) <br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doPractice1a_frm1(ModelContext<Practice1aFormBean> context) throws Exception {
    }

}
