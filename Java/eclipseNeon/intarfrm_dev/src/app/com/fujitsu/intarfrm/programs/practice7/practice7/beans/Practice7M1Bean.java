
package com.fujitsu.intarfrm.programs.practice7.practice7.beans;

import com.fujitsu.intarfrm.programs.practice7.practice7.inherits.Practice7FormBean;
import com.fujitsu.intarfrm.programs.practice7.practice7.inherits.Practice7FormBean.Practice7FormInfo;
import com.fujitsu.intarfrm.helpers.commons.beans.ManagedListData;

/**
 * <p>明細[M1]のデータクラス。</p>
 * 
 * 明細ID：[M1]、明細標題：[List1]<br>
 * 明細モード：[明細モード２（全件データ取得）]、表示件数：[5]
 * このクラスは明細[M1]の全データを管理します。<br>
 * また、このクラスから明細情報を参照することも可能です。<br>
 * 
 * @author INTARFRM継承ファイル
 */
public class Practice7M1Bean extends ManagedListData<Practice7FormBean.Practice7M1Info, Practice7M1RowData> {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     * 
     * @param owner フォームデータ
     */
    public Practice7M1Bean(Practice7FormBean owner) {
        super(owner);
        Practice7FormInfo info = (Practice7FormInfo)owner.INFO;
        super.setInfo(info.M1);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Practice7M1RowData newRow(boolean autoAdding) {
        Practice7M1RowData data = new Practice7M1RowData(this);
        if (autoAdding) {
            this.addRow(data);
        }
        return data;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    protected Practice7M1RowData createNewRow() {
        return new Practice7M1RowData(this);
    }
}