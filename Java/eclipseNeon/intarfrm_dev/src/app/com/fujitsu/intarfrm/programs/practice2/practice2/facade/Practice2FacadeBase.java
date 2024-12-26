
package com.fujitsu.intarfrm.programs.practice2.practice2.facade;


import com.fujitsu.intarfrm.programs.practice2.practice2.beans.Practice2M1RowData;
import com.fujitsu.intarfrm.programs.practice2.practice2.inherits.Practice2FormBean;
import com.fujitsu.intarfrm.programs.practice2.practice2.inherits.Practice2FormBean.Practice2FormInfo;
import com.fujitsu.intarfrm.programs.practice2.practice2.facade.Practice2DataMapper.DataMapperType;
import com.fujitsu.intarfrm.programs.practice2.practice2.beans.Practice2M1Bean;
import com.fujitsu.intarfrm.helpers.commons.beans.DataStateType;
import com.fujitsu.intarfrm.helpers.commons.beans.SelectedRowCollection;
import com.fujitsu.intarfrm.helpers.models.transactions.IfmConnection;
import com.fujitsu.intarfrm.skeletons.projectCommons.facades.ModelContext;
import com.fujitsu.intarfrm.skeletons.projectCommons.facades.ProjectBaseFacade;

/**
 * <p>フォーム[演習２]の業務処理クラス。</p>
 * 
 * このフォームに定義した各アクションの行処理を実行します。<br>
 * 
 * @author INTARFRM
 */
public class Practice2FacadeBase extends ProjectBaseFacade {


    /**
     * <p>データをロードします。</p>
     * 
     * @param context コンテキストオブジェクト
     * @param conn コネクション
     * @throws Exception データベース操作で失敗した場合
     */
    protected void loadInternal(ModelContext<Practice2FormBean> context, IfmConnection conn) throws Exception {

        Practice2FormInfo info = (Practice2FormInfo)context.getFormBean().INFO;

        if  (info.getCurrentGroup() == info.G1) {
            this.selectG1Card(context, conn);
            this.selectM1(context, conn);
        }
    }


    /**
     * <p>グループ「G1」に属するカード部の情報を取得します。</p>
     * 
     * @param context コンテキストオブジェクト
     * @param conn コネクション
     * @throws Exception データベース操作で失敗した場合
     */
    protected void selectG1Card(ModelContext<Practice2FormBean> context, IfmConnection conn) throws Exception {
    }


    /**
     * <p>明細「M1」の情報を取得します。</p>
     * 
     * グループ：[G1]<br>
     * 明細モード：[明細モード２（全件データ取得）]<br>
     * 
     * @param context コンテキストオブジェクト
     * @param conn コネクション
     * @throws Exception データベース操作で失敗した場合
     */
    protected void selectM1(ModelContext<Practice2FormBean> context, IfmConnection conn) throws Exception {
    }


    /**
     * <p>フォームデータを更新する。</p>
     * 
     * @param context コンテキストオブジェクト
     * @param conn コネクション
     * @param mapperType フォームアクション
     * @throws Exception データベース操作で失敗した場合
     */
    protected void update(ModelContext<Practice2FormBean> context, IfmConnection conn, DataMapperType mapperType) throws Exception {

        //カード部
        this.updateCard(context, conn, mapperType);
        //条件に応じて、insertCard, deleteCardメソッドを使用することができます。
        //業務仕様に従って実装してください。
        //カード部の更新処理
        //this.insertCard(context, conn);
        //カード部の更新処理
        //this.deleteCard(context, conn, mapperType);
        //明細[M1]
        this.updateM1(context, conn, mapperType);
    }



    /**
     * <p>カードデータからエンティティをupdateします。</p>
     * 
     * @param context モデルコンテキスト
     * @param conn コネクション
     * @param mapperType フォームアクション
     * @throws Exception データベース操作で失敗した場合
     */
    protected void updateCard(ModelContext<Practice2FormBean> context, IfmConnection conn, DataMapperType mapperType)throws Exception {
    }



    /**
     * <p>カードデータからエンティティをinsertします。</p>
     * 
     * @param context モデルコンテキスト
     * @param conn コネクション
     * @param mapperType フォームアクション
     * @throws Exception データベース操作で失敗した場合
     */
    protected void insertCard(ModelContext<Practice2FormBean> context, IfmConnection conn, DataMapperType mapperType)throws Exception {
    }



    /**
     * <p>カードデータからエンティティをdeleteします。</p>
     * 
     * @param context モデルコンテキスト
     * @param conn コネクション
     * @throws Exception データベース操作で失敗した場合
     */
    protected void deleteCard(ModelContext<Practice2FormBean> context, IfmConnection conn) throws Exception {
    }


    /**
     * 明細M1データを更新します。
     * @param context コンテキストオブジェクト
     * @param conn コネクション
     * @param mapperType フォームアクション
     * @throws Exception 更新に失敗した場合
     */
    protected void updateM1(ModelContext<Practice2FormBean> context, IfmConnection conn, DataMapperType mapperType) throws Exception {
        Practice2FormBean form = context.getFormBean();

        //明細データ
        Practice2M1Bean listBean = form.M1;

        //削除された行データの削除処理を実行します
        DataStateType[] dst = new DataStateType[1];
        dst[0] = DataStateType.DELETED;
        this.deleteM1Data(context, listBean.select(dst), conn);
        
        //追加された行データの追加処理を実行します
        dst[0] = DataStateType.ADDED;
        this.insertM1Data(context, listBean.select(dst), conn, mapperType);
        
        //更新された行データの更新処理を実行します
        dst[0] = DataStateType.MODIFIED;
        this.updateM1Data(context, listBean.select(dst), conn, mapperType);
    }

    /**
     * <p>明細M1データからエンティティをupdateします。</p>
     * 
     * @param context モデルコンテキスト
     * @param targetData 更新対象データ
     * @param conn コネクション
     * @param mapperType フォームアクション
     * @throws Exception データベース操作で失敗した場合
     */
    protected void updateM1Data(ModelContext<Practice2FormBean> context, SelectedRowCollection<?> targetData, IfmConnection conn, DataMapperType mapperType) throws Exception {
    }


    /**
     * <p>明細M1データからエンティティをinsertします。</p>
     * 
     * @param context モデルコンテキスト
     * @param targetData 更新対象データ
     * @param conn コネクション
     * @param mapperType フォームアクション
     * @throws Exception データベース操作で失敗した場合
     */
    protected void insertM1Data(ModelContext<Practice2FormBean> context, SelectedRowCollection<?> targetData, IfmConnection conn, DataMapperType mapperType) throws Exception {
    }


    /**
     * <p>明細M1データからエンティティをdeleteします。</p>
     * 
     * @param context モデルコンテキスト
     * @param targetData 更新対象データ
     * @param conn コネクション
     * @throws Exception データベース操作で失敗した場合
     */
    protected void deleteM1Data(ModelContext<Practice2FormBean> context, SelectedRowCollection<?> targetData, IfmConnection conn) throws Exception {
    }




}
