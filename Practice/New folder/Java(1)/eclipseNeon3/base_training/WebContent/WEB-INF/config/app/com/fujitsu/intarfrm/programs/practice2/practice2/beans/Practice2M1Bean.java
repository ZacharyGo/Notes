
package com.fujitsu.intarfrm.programs.practice2.practice2.beans;

import com.fujitsu.intarfrm.programs.practice2.practice2.inherits.Practice2FormBean;
import com.fujitsu.intarfrm.programs.practice2.practice2.inherits.Practice2FormBean.Practice2FormInfo;
import com.fujitsu.intarfrm.helpers.commons.beans.ManagedListData;

/**
 * <p>明細[M1]のデータクラス。</p>
 * 
 * 明細ID：[M1]、明細標題：[]<br>
 * 明細モード：[明細モード２（全件データ取得）]、表示件数：[0]
 * このクラスは明細[M1]の全データを管理します。<br>
 * また、このクラスから明細情報を参照することも可能です。<br>
 * 
 * @author INTARFRM継承ファイル
 */
public class Practice2M1Bean extends ManagedListData<Practice2FormBean.Practice2M1Info, Practice2M1RowData> {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     * 
     * @param owner フォームデータ
     */
    public Practice2M1Bean(Practice2FormBean owner) {
        super(owner);
        Practice2FormInfo info = (Practice2FormInfo)owner.INFO;
        super.setInfo(info.M1);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Practice2M1RowData newRow(boolean autoAdding) {
        Practice2M1RowData data = new Practice2M1RowData(this);
        if (autoAdding) {
            this.addRow(data);
        }
        return data;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    protected Practice2M1RowData createNewRow() {
        return new Practice2M1RowData(this);
    }
}