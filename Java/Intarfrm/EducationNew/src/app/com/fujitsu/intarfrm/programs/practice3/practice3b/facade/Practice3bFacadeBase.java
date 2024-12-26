
package com.fujitsu.intarfrm.programs.practice3.practice3b.facade;


import com.fujitsu.intarfrm.programs.practice3.practice3b.inherits.Practice3bFormBean;
import com.fujitsu.intarfrm.programs.practice3.practice3b.inherits.Practice3bFormBean.Practice3bFormInfo;
import com.fujitsu.intarfrm.programs.practice3.practice3b.facade.Practice3bDataMapper.DataMapperType;
import com.fujitsu.intarfrm.helpers.models.transactions.IfmConnection;
import com.fujitsu.intarfrm.skeletons.projectCommons.facades.ModelContext;
import com.fujitsu.intarfrm.skeletons.projectCommons.facades.ProjectBaseFacade;

/**
 * <p>フォーム[演習３－２]の業務処理クラス。</p>					<p> Business processing class of form [Practice 3-2]. </ p>
 * 
 * このフォームに定義した各アクションの行処理を実行します。<br>			Performs row processing for each action defined in this form. <br>
 * 
 * @author INTARFRM
 */
public class Practice3bFacadeBase extends ProjectBaseFacade {


    /**
     * <p>データをロードします。</p>							<p> Load the data. </ p>
     * 
     * @param context コンテキストオブジェクト					@param context Context object
     * @param conn コネクション								@param conn connection
     * @throws Exception データベース操作で失敗した場合		@throws Exception If the database operation fails 
     */
    protected void loadInternal(ModelContext<Practice3bFormBean> context, IfmConnection conn) throws Exception {

        Practice3bFormInfo info = (Practice3bFormInfo)context.getFormBean().INFO;

        if  (info.getCurrentGroup() == info.G1) {
            this.selectG1Card(context, conn);
        }
    }


    /**
     * <p>グループ「G1」に属するカード部の情報を取得します。</p>		 <p> Acquires the information of the card part belonging to the group "G1". </ p>
     * 
     * @param context コンテキストオブジェクト					@param context Context object
     * @param conn コネクション								@param conn connection
     * @throws Exception データベース操作で失敗した場合		@throws Exception If the database operation fails 
     */
    protected void selectG1Card(ModelContext<Practice3bFormBean> context, IfmConnection conn) throws Exception {
    }



    /**
     * <p>フォームデータを更新する。</p>						<p> Update the form data. </ p>
     * 
     * @param context コンテキストオブジェクト					@param context Context object
     * @param conn コネクション								@param conn connection
     * @param mapperType フォームアクション					@param mapperType Form action
     * @throws Exception データベース操作で失敗した場合		@throws Exception If the database operation fails 
     */
    protected void update(ModelContext<Practice3bFormBean> context, IfmConnection conn, DataMapperType mapperType) throws Exception {

        //カード部														Card part
        this.updateCard(context, conn, mapperType);
        //条件に応じて、insertCard, deleteCardメソッドを使用することができます。	You can use the insertCard and deleteCard methods depending on the conditions.
        //業務仕様に従って実装してください。									Please implement according to the business specifications.
        //カード部の更新処理												Card part update process
        //this.insertCard(context, conn);							
        //カード部の更新処理												Card part update process
        //this.deleteCard(context, conn, mapperType);							
    }



    /**
     * <p>カードデータからエンティティをupdateします。</p>						 <p> Update the entity from the card data. </ p>
     * 
     * @param context モデルコンテキスト						 			@param context Model context			 
     * @param conn コネクション						 					@param conn connection	 
     * @param mapperType フォームアクション						 		@param mapperType Form action				 
     * @throws Exception データベース操作で失敗した場合					@throws Exception If the database operation fails	 						 
     */
    protected void updateCard(ModelContext<Practice3bFormBean> context, IfmConnection conn, DataMapperType mapperType)throws Exception {
    }



    /**
     * <p>カードデータからエンティティをinsertします。</p>						<p> Insert an entity from the card data. </ p>
     * 
     * @param context モデルコンテキスト									@param context Model context
     * @param conn コネクション											@param conn connection
     * @param mapperType フォームアクション								@param mapperType Form action
     * @throws Exception データベース操作で失敗した場合					@param mapperType Form action
     */
    protected void insertCard(ModelContext<Practice3bFormBean> context, IfmConnection conn, DataMapperType mapperType)throws Exception {
    }



    /**
     * <p>カードデータからエンティティをdeleteします。</p>
     * 
     * @param context モデルコンテキスト
     * @param conn コネクション
     * @throws Exception データベース操作で失敗した場合
     */
    protected void deleteCard(ModelContext<Practice3bFormBean> context, IfmConnection conn) throws Exception {
    }





}
