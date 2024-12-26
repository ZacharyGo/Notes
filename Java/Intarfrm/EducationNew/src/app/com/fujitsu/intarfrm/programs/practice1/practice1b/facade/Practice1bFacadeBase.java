
package com.fujitsu.intarfrm.programs.practice1.practice1b.facade;


import com.fujitsu.intarfrm.programs.practice1.practice1b.inherits.Practice1bFormBean;
import com.fujitsu.intarfrm.programs.practice1.practice1b.inherits.Practice1bFormBean.Practice1bFormInfo;
import com.fujitsu.intarfrm.programs.practice1.practice1b.facade.Practice1bDataMapper.DataMapperType;
import com.fujitsu.intarfrm.helpers.models.transactions.IfmConnection;
import com.fujitsu.intarfrm.skeletons.projectCommons.facades.ModelContext;
import com.fujitsu.intarfrm.skeletons.projectCommons.facades.ProjectBaseFacade;

/**
 * <p>フォーム[演習１－２]の業務処理クラス。</p>
 * 
 * このフォームに定義した各アクションの行処理を実行します。<br>
 * 
 * @author INTARFRM
 */
public class Practice1bFacadeBase extends ProjectBaseFacade {


    /**
     * <p>フォームデータを更新する。</p>
     * 
     * @param context コンテキストオブジェクト
     * @param conn コネクション
     * @param mapperType フォームアクション
     * @throws Exception データベース操作で失敗した場合
     * * < p > Refresh the form data. </p >
     *
     * @ param context context object
 	 * @ param conn connection
	 * @ param mapperType Form Action
	 * @ throws Exception Database operation failed
     */
    protected void update(ModelContext<Practice1bFormBean> context, IfmConnection conn, DataMapperType mapperType) throws Exception {

    }



}
