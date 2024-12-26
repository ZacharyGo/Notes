package com.fujitsu.intarfrm.skeletons.np;

import com.fujitsu.intarfrm.helpers.commons.items.FormGroupInfo;
import com.fujitsu.intarfrm.helpers.commons.items.FormGroupType;
import com.fujitsu.intarfrm.helpers.commons.items.FormItemInfo;
import com.fujitsu.intarfrm.helpers.views.taglibs.controllers.BranchTagBase;

public class HasRequiredItemTag extends BranchTagBase {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * 対象グループ
     */
    private FormGroupType group;

    /**
     * 対象となるグループIDを設定する
     * @param param グループID
     */
    public void setGroup(String param) {
        this.group = FormGroupType.valueOf("G" + param);
    }

    /**
     * タグを評価する直前に呼び出され、条件分岐タグの結果を返す。
     * @return 条件分岐タグの結果
     */
    @Override
    protected boolean getFlag() {
    	FormGroupInfo grpInfo = super.getFormInfo().getGroup(group);
    	for (FormItemInfo itemInfo : grpInfo.getItems()) {
    		if (itemInfo.isDataItem() && itemInfo.getDataInfo().needRequiredCheck()) {
    			return true;
    		}
    	}
    	return false;
    }
}
