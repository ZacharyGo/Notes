
package com.fujitsu.intarfrm.programs.tyu010we.tyu01002.beans;

import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.inherits.Tyu01002FormBean;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.inherits.Tyu01002FormBean.Tyu01002FormInfo;
import com.fujitsu.intarfrm.helpers.commons.beans.DisplayListData;

/**
 * <p>明細[M1]のデータクラス。</p>
 * 
 * 明細ID：[M1]、明細標題：[Customer List]<br>
 * 明細モード：[明細モード１（ページ毎のデータ取得）]、表示件数：[10]
 * このクラスは明細[M1]の全データを管理します。<br>
 * また、このクラスから明細情報を参照することも可能です。<br>
 * 
 * @author INTARFRM継承ファイル
 */
public class Tyu01002M1Bean extends DisplayListData<Tyu01002FormBean.Tyu01002M1Info, Tyu01002M1RowData> {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     * 
     * @param owner フォームデータ
     */
    public Tyu01002M1Bean(Tyu01002FormBean owner) {
        super(owner);
        Tyu01002FormInfo info = (Tyu01002FormInfo)owner.INFO;
        super.setInfo(info.M1);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Tyu01002M1RowData newRow(boolean autoAdding) {
        Tyu01002M1RowData data = new Tyu01002M1RowData(this);
        if (autoAdding) {
            this.addRow(data);
        }
        return data;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    protected Tyu01002M1RowData createNewRow() {
        return new Tyu01002M1RowData(this);
    }
}