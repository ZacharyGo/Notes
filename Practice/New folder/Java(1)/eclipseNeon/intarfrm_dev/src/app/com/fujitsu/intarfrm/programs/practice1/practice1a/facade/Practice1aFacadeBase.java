
package com.fujitsu.intarfrm.programs.practice1.practice1a.facade;


import com.fujitsu.intarfrm.programs.practice1.practice1a.inherits.Practice1aFormBean;
import com.fujitsu.intarfrm.programs.practice1.practice1a.inherits.Practice1aFormBean.Practice1aFormInfo;
import com.fujitsu.intarfrm.programs.practice1.practice1a.facade.Practice1aDataMapper.DataMapperType;
import com.fujitsu.intarfrm.helpers.models.transactions.IfmConnection;
import com.fujitsu.intarfrm.skeletons.projectCommons.facades.ModelContext;
import com.fujitsu.intarfrm.skeletons.projectCommons.facades.ProjectBaseFacade;

/**
 * <p>フォーム[演習１－１]の業務処理クラス。</p>
 * 
 * このフォームに定義した各アクションの行処理を実行します。<br>
 * 
 * @author INTARFRM
 */
public class Practice1aFacadeBase extends ProjectBaseFacade {


    /**
     * <p>フォームデータを更新する。</p>
     * 
     * @param context コンテキストオブジェクト
     * @param conn コネクション
     * @param mapperType フォームアクション
     * @throws Exception データベース操作で失敗した場合
     */
    protected void update(ModelContext<Practice1aFormBean> context, IfmConnection conn, DataMapperType mapperType) throws Exception {

    }



}
