
package com.fujitsu.intarfrm.programs.practice4.practice4.beans;

import com.fujitsu.intarfrm.programs.practice4.practice4.inherits.Practice4FormBean;
import com.fujitsu.intarfrm.programs.practice4.practice4.inherits.Practice4FormBean.Practice4FormInfo;
import com.fujitsu.intarfrm.helpers.commons.beans.ManagedListData;

/**
 * <p>明細[M1]のデータクラス。</p>
 * 
 * 明細ID：[M1]、明細標題：[明細部１]<br>
 * 明細モード：[明細モード２（全件データ取得）]、表示件数：[5]
 * このクラスは明細[M1]の全データを管理します。<br>
 * また、このクラスから明細情報を参照することも可能です。<br>
 * 
 * @author INTARFRM継承ファイル
 */
public class Practice4M1Bean extends ManagedListData<Practice4FormBean.Practice4M1Info, Practice4M1RowData> {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     * 
     * @param owner フォームデータ
     */
    public Practice4M1Bean(Practice4FormBean owner) {
        super(owner);
        Practice4FormInfo info = (Practice4FormInfo)owner.INFO;
        super.setInfo(info.M1);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Practice4M1RowData newRow(boolean autoAdding) {
        Practice4M1RowData data = new Practice4M1RowData(this);
        if (autoAdding) {
            this.addRow(data);
        }
        return data;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    protected Practice4M1RowData createNewRow() {
        return new Practice4M1RowData(this);
    }
}