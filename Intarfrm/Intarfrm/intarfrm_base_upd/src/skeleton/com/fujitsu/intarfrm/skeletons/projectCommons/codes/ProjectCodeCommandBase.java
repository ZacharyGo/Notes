package com.fujitsu.intarfrm.skeletons.projectCommons.codes;

import java.io.Serializable;

import com.fujitsu.intarfrm.helpers.commons.codes.CodeType;
import com.fujitsu.intarfrm.helpers.commons.codes.ICodeItemCommand;
import com.fujitsu.intarfrm.helpers.commons.codes.data.CodeMapping;
import com.fujitsu.intarfrm.helpers.commons.codes.inherits.CodeInfo;
import com.fujitsu.intarfrm.helpers.commons.items.FormItemInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemCodeInfo;

/**
 * コード参照、コードドロップダウンコマンドの基底クラス
 *
 * @author INTARFRM
 */
public abstract class ProjectCodeCommandBase implements ICodeItemCommand, Serializable {

	/**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;
	
	/**
	 * 汎用コード検索ロジックを提供するオブジェクト
	 */
	private ProjectCodeFinder finder;

	private FormItemInfo ownerFormItem;

	private CodeInfo codeInfo;

	/**
	 * コードマッピング定義
	 */
	private CodeMapping mapping;

	private ItemCodeInfo itemCodeInfo;

	protected ProjectCodeFinder getFinder() {
		return this.finder;
	}

	protected void setFinder(ProjectCodeFinder finder) {
		this.finder = finder;
	}

	public FormItemInfo getOwnerFormItem() {
		return this.ownerFormItem;
	}

	/**
	 * コード参照の種別を取得する
	 */
	public abstract CodeType getCodeType();

	public void setOwnerFormItem(FormItemInfo item) {
		this.ownerFormItem = item;
	}

	/**
	 * コード情報を取得する
	 */
	public CodeInfo getCodeInfo() {
		if (this.codeInfo == null) {
			this.codeInfo = this.createCodeInfo();
		}
		return this.codeInfo;
	}

	/**
	 * コードマッピング定義を取得する。
	 */
	public CodeMapping getMapping() {
		if (this.mapping == null) {
			this.mapping = createCodeMapping();
		}
		return this.mapping;
	}

	public ItemCodeInfo getItemCodeInfo() {
		return this.itemCodeInfo;
	}

	public void setItemCodeInfo(ItemCodeInfo value) {
		this.itemCodeInfo = value;
	}

	protected abstract CodeInfo createCodeInfo();

	protected abstract CodeMapping createCodeMapping();

}
