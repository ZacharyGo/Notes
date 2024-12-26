
package com.fujitsu.intarfrm.programs.practice1.practice1b.facade;

import com.fujitsu.intarfrm.programs.practice1.practice1b.inherits.Practice1bFormBean;
import com.fujitsu.intarfrm.programs.practice1.practice1b.facade.Practice1bDataMapper.DataMapperType;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.helpers.models.transactions.DbTransaction;
import com.fujitsu.intarfrm.helpers.models.transactions.IfmConnection;
import com.fujitsu.intarfrm.skeletons.projectCommons.facades.ModelContext;


/**
 * <p>フォーム[演習１－２]の業務処理クラス。</p>
 *
 * このフォームに定義した各アクションの行処理を実行します。<br>
 *
 * @author INTARFRM
 */
public final class Practice1bFacade extends Practice1bFacadeBase {

    /**
     * <p>ロード処理を実行する。</p>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     * * < p > Performs a load operation. </p >
	 *
	 * @ param context context object
	 * @ throws Exception exception
     */
    public void do_Load(ModelContext<Practice1bFormBean> context) throws Exception {
    }


    /**
     * <p>フォームアクション[PRACTICE1B_戻る(PRACTICE1B_FRM)]の処理を実行する。</p>
     * * < p > Performs processing of form action [PRACTICE1B _ Back (PRACTICE1B _ FRM)]. </p >
     *
            * アクション: 他フォーム(FRM)<br>
     * Action: Alternate Form (FRM) < br >
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     * @ param context context object
     * @ throws Exception exception
     */
    public void doPractice1b_frm(ModelContext<Practice1bFormBean> context) throws Exception {
    }

}
