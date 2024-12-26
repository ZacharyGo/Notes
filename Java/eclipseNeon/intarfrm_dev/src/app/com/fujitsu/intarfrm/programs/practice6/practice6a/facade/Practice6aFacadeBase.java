
package com.fujitsu.intarfrm.programs.practice6.practice6a.facade;


import com.fujitsu.intarfrm.programs.practice6.practice6a.inherits.Practice6aFormBean;
import com.fujitsu.intarfrm.programs.practice6.practice6a.inherits.Practice6aFormBean.Practice6aFormInfo;
import com.fujitsu.intarfrm.programs.practice6.practice6a.facade.Practice6aDataMapper.DataMapperType;
import com.fujitsu.intarfrm.helpers.models.transactions.IfmConnection;
import com.fujitsu.intarfrm.skeletons.projectCommons.facades.ModelContext;
import com.fujitsu.intarfrm.skeletons.projectCommons.facades.ProjectBaseFacade;

/**
 * <p>フォーム[演習６ー１]の業務処理クラス。</p>
 * 
 * このフォームに定義した各アクションの行処理を実行します。<br>
 * 
 * @author INTARFRM
 */
public class Practice6aFacadeBase extends ProjectBaseFacade {


    /**
     * <p>データをロードします。</p>
     * 
     * @param context コンテキストオブジェクト
     * @param conn コネクション
     * @throws Exception データベース操作で失敗した場合
     */
    protected void loadInternal(ModelContext<Practice6aFormBean> context, IfmConnection conn) throws Exception {

        Practice6aFormInfo info = (Practice6aFormInfo)context.getFormBean().INFO;

        if  (info.getCurrentGroup() == info.G1) {
            this.selectG1Card(context, conn);
        }
    }


    /**
     * <p>グループ「G1」に属するカード部の情報を取得します。</p>
     * 
     * @param context コンテキストオブジェクト
     * @param conn コネクション
     * @throws Exception データベース操作で失敗した場合
     */
    protected void selectG1Card(ModelContext<Practice6aFormBean> context, IfmConnection conn) throws Exception {
    }



    /**
     * <p>フォームデータを更新する。</p>
     * 
     * @param context コンテキストオブジェクト
     * @param conn コネクション
     * @param mapperType フォームアクション
     * @throws Exception データベース操作で失敗した場合
     */
    protected void update(ModelContext<Practice6aFormBean> context, IfmConnection conn, DataMapperType mapperType) throws Exception {

        //カード部
        this.updateCard(context, conn, mapperType);
        //条件に応じて、insertCard, deleteCardメソッドを使用することができます。
        //業務仕様に従って実装してください。
        //カード部の更新処理
        //this.insertCard(context, conn);
        //カード部の更新処理
        //this.deleteCard(context, conn, mapperType);
    }



    /**
     * <p>カードデータからエンティティをupdateします。</p>
     * 
     * @param context モデルコンテキスト
     * @param conn コネクション
     * @param mapperType フォームアクション
     * @throws Exception データベース操作で失敗した場合
     */
    protected void updateCard(ModelContext<Practice6aFormBean> context, IfmConnection conn, DataMapperType mapperType)throws Exception {
    }



    /**
     * <p>カードデータからエンティティをinsertします。</p>
     * 
     * @param context モデルコンテキスト
     * @param conn コネクション
     * @param mapperType フォームアクション
     * @throws Exception データベース操作で失敗した場合
     */
    protected void insertCard(ModelContext<Practice6aFormBean> context, IfmConnection conn, DataMapperType mapperType)throws Exception {
    }



    /**
     * <p>カードデータからエンティティをdeleteします。</p>
     * 
     * @param context モデルコンテキスト
     * @param conn コネクション
     * @throws Exception データベース操作で失敗した場合
     */
    protected void deleteCard(ModelContext<Practice6aFormBean> context, IfmConnection conn) throws Exception {
    }





}