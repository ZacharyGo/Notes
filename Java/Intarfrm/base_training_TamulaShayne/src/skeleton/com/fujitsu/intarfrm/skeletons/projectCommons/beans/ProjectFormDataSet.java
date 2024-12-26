package com.fujitsu.intarfrm.skeletons.projectCommons.beans;

import com.fujitsu.intarfrm.helpers.commons.beans.CardData;
import com.fujitsu.intarfrm.helpers.commons.beans.FormDataSet;
import com.fujitsu.intarfrm.helpers.commons.items.FormInfo;

/**
 * プロジェクト固有のメンバーを持つフォームデータの基底クラス
 *
 * フォーム設計情報から自動生成される全てのフォームデータクラスは、このクラスを継承します。
 * 
 * @author INTARFRM
 */
public class ProjectFormDataSet<TFormInfo extends FormInfo, TCardBean extends CardData> extends FormDataSet {
	
	/**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;
    
    /**
     * フォーム情報
     */
    public TFormInfo INFO;
    
    /**
     * カード部のデータ
     */
    public TCardBean CARD;
    
    /**
     * フォーム情報を設定する
     * @param info フォーム情報
     */
    public void setInfo(FormInfo info) {
    	super.INFO = info;
    }
    
    /**
     * カード部データを設定する
     * @param card カード部データ
     */
    public void setCard(CardData card) {
    	super.CARD = card;
    }
    
    // プロジェクト固有のメンバーを追加します
    
}