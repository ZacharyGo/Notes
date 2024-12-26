package com.fujitsu.intarfrm.skeletons.commons.codes.itemcommands;

import com.fujitsu.intarfrm.helpers.commons.codes.ICodeItemCommand;
import com.fujitsu.intarfrm.helpers.commons.items.SelectableItemCollection;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;

/**
 * コード参照、コードドロップダウンコマンドのインターフェイスクラス
 */
public interface ICodeDrlCommand extends ICodeItemCommand {

	/**
	 * コード参照ドロップダウンのデータを作成する
	 * @param context the FormController
	 * @param displayRowIndex 表示行インデックス（カード項目の場合はnull）
	 * @return コード参照ドロップダウンのデータ
	 */
	SelectableItemCollection getDrlData(FormActionContext context, int displayRowIndex) throws DatabaseException;

	/**
	 * このオブジェクトが明細行ごとに異なるデータを作成するかどうかを取得する。
	 * @return true=作成する、false=作成しない
	 */
	boolean createRowsData();
}
