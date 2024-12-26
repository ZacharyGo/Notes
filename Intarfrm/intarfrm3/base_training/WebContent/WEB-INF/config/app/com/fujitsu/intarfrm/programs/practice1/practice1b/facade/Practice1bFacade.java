
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
     */
    public void do_Load(ModelContext<Practice1bFormBean> context) throws Exception {
    }


    /**
     * <p>フォームアクション[PRACTICE1B_戻る(PRACTICE1B_FRM)]の処理を実行する。</p>
     *
     * アクション: 他フォーム(FRM)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doPractice1b_frm(ModelContext<Practice1bFormBean> context) throws Exception {
    }

}
