package com.fujitsu.intarfrm.skeletons.projectCommons.codes;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import com.fujitsu.intarfrm.helpers.commons.beans.FormDataSet;
import com.fujitsu.intarfrm.helpers.commons.codes.CodeType;
import com.fujitsu.intarfrm.helpers.commons.codes.data.CodeMapping;
import com.fujitsu.intarfrm.helpers.commons.codes.inherits.CodeDrlFixedItem;
import com.fujitsu.intarfrm.helpers.commons.codes.inherits.CodeItemInfo;
import com.fujitsu.intarfrm.helpers.commons.items.SelectableItem;
import com.fujitsu.intarfrm.helpers.commons.items.SelectableItemCollection;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageInfo;
import com.fujitsu.intarfrm.helpers.commons.resources.CodeResourceManager;
import com.fujitsu.intarfrm.helpers.commons.resources.CodeResourceSet;
import com.fujitsu.intarfrm.helpers.commons.utils.CultureInvariantHelper;
import com.fujitsu.intarfrm.helpers.models.entity.DbRecord;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.skeletons.commons.codes.CodeHelper;
import com.fujitsu.intarfrm.skeletons.commons.codes.contexts.CodeSearchContext;
import com.fujitsu.intarfrm.skeletons.commons.codes.itemcommands.ICodeDrlCommand;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;

/**
 * コード参照ドロップダウンコマンドの基本クラス
 *
 * @author INTARFRM
 */
public abstract class ProjectCodeDrlCommand extends ProjectCodeCommandBase implements ICodeDrlCommand {

	/**
	 * シリアルID
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * コード種別を取得する
	 */
	public final CodeType getCodeType() {
		return CodeType.DRL;
	}

	/**
	 * 取得対象の表示行インデックスを取得または設定する
	 */
	private int displayRowIndex;

	/**
	 * 取得対象の表示行インデックスを取得する
	 * @return 表示行インデックス
	 */
	public int getDisplayRowIndex() {
		return this.displayRowIndex;
	}

	/**
	 * 取得対象の表示行インデックスを設定する
	 * @param index 表示行インデックス
	 */
	public void setDisplayRowIndex(int index) {
		this.displayRowIndex = index;
	}

	/**
	 * コード参照DRLの親フォームデータを取得する
	 * @return
	 */
	protected FormDataSet getOwnerFormData() {
		return this.getOwnerFormItem().getOwnerForm().getOwnerData();
	}

	/**
	 * DRLで複数の表示項目が指定されたときのセパレータを取得または設定する。
	 */
	private String labelSeparator;

	/**
	 * DRLで複数の表示項目が指定されたときのセパレータを取得する。
	 * @return セパレータ
	 */
	protected String getLabelSeparator() {
		return this.labelSeparator;
	}

	/**
	 * DRLで複数の表示項目が指定されたときのセパレータを設定する。
	 * @param separator セパレータ
	 */
	protected void setLabelSeparator(String separator) {
		this.labelSeparator = separator;
	}

	/**
	 * コンストラクタ
	 */
	public ProjectCodeDrlCommand() {
		this.labelSeparator = " - ";
	}

	/**
	 * このオブジェクトが明細行ごとに異なるデータを作成するかどうかを取得する
	 * @return true=作成する、false=作成しない
	 */
	public boolean createRowsData() {
		return false;
	}

	/**
	 * 作成した選択リストのキャッシュ
	 */
	private SelectableItemCollection cache;

	/**
	 * コード参照ドロップダウンのデータを作成する
	 * @param context
	 * @param displayRowIndex
	 * @return
	 * @throws DatabaseException
	 */
	public SelectableItemCollection getDrlData(FormActionContext context, int displayRowIndex) throws DatabaseException {
		if (this.createRowsData()) {
			//キャッシュを使用しない場合
			this.displayRowIndex = displayRowIndex;
			return this.createSelectableList(context);
		} else {
			//キャッシュを使用する場合
			if (cache == null || !cache.getLanguage().equals(context.getCurrentLanguage())) {
				//キャッシュが無効な場合は取得する
				this.displayRowIndex = displayRowIndex;
				this.cache = this.createSelectableList(context);
			}
			return cache;
		}
	}

	/**
	 * ドロップダウンリストの選択項目のコレクションを作成する。
	 * このメソッドは、コード検索を実行し、取得されたデータから選択項目のリストを作成します。
	 * このメソッドは、CreatesRowsData が true を返す場合、表示する明細行の単位で呼び出されます。
	 * （表示行インデックスは this.DisplayRowIndex から取得できます。）
	 * @param context FormActionContext
	 * @return ドロップダウンリストに表示される選択項目のリスト
	 * @throws DatabaseException
	 */
	protected SelectableItemCollection createSelectableList(FormActionContext context) throws DatabaseException {
		//現在の言語を取得する
		LanguageInfo lang = context.getCurrentLanguage();

		SelectableItemCollection retval = new SelectableItemCollection(lang);

		//DBを検索
		List<DbRecord> records = this.getCodeDrlRecords(context);

		//検索したデータの値をコード項目の設計に従いフォーマットする
		List<HashMap<String, String>> formattedRecords = CodeHelper.formatDbRecord(this.getCodeInfo(), records, lang);

		for (int i = 0; i < records.size(); i++) {
			DbRecord record = records.get(i);
			HashMap<String, String> formattedRecord = formattedRecords.get(i);
			CodeItemInfo keyItem = this.getFirstItem(this.getCodeInfo().iteratorKeyItem());

			//文字列化した値
			String value = CultureInvariantHelper.toString(record.getValue(keyItem.getColumn().getSqlText().toUpperCase()));

			//標題
            StringBuilder label = new StringBuilder();
            if (this.getOwnerFormItem().getCode().isShowKeyItem()) {
                label.append(formattedRecord.get(keyItem.getColumn().getSqlText().toUpperCase()));
            }
            for (CodeItemInfo item : this.getCodeInfo().iteratorDispItem()) {
                if (label.length() > 0) {
                    label.append(this.labelSeparator);
                }
                label.append(formattedRecord.get(item.getColumn().getSqlText().toUpperCase()));
            }

            retval.add(new SelectableItem(value, label.toString()));
		}

		//固定項目追加
		CodeDrlFixedItem fixedItem = this.getCodeInfo().getFixedItem();

		if (fixedItem != null && this.getItemCodeInfo().isUseStaticItem()) {
			CodeResourceManager res = CodeResourceManager.createInstance();
			res.initialize(this.getCodeInfo().getCodeId(), lang);
			String fixedItemCaption = ((CodeResourceSet)res.getResourceSet()).getFixedItem();
			SelectableItem fi = new SelectableItem(fixedItem.getValue(), fixedItemCaption, true);
			switch (fixedItem.getFixedItemPosition()) {
				case TOP:
					retval.add(0, fi);
					break;
				case BOTTOM:
					retval.add(fi);
					break;
				default:
					break;
			}
		}
		return retval;
	}

	/**
	 * 最初の項目を取得します
	 * @param infos
	 * @return
	 */
	private CodeItemInfo getFirstItem(Iterable<CodeItemInfo> infos) {
		Iterator<CodeItemInfo> it = infos.iterator();
		if (it.hasNext()) {
			return it.next();
		} else {
			return null;
		}
	}

	/**
	 * ドロップダウンリストの選択肢の元になるデータベースレコードのリストを取得する。
	 * このメソッドは、CreatesRowsData が true を返す場合、表示する明細行の単位で呼び出されます。
	 * （対象の表示行インデックスは this.DisplayRowIndex から取得できます。）
	 * @param context FormActionContext
	 * @return ドロップダウンリストに表示するデータ
	 * @throws DatabaseException
	 */
	protected List<DbRecord> getCodeDrlRecords(FormActionContext context) throws DatabaseException {
		CodeSearchContext searchContext = this.createDrlSearchContext(context);
		return this.getFinder().find(searchContext, 0, this.getCodeInfo().getMaxDisplayRow());
	}

	/**
	 * ドロップダウンリストに表示するデータの抽出条件を作成する。
	 * このメソッドは、CreatesRowsData が true を返す場合、表示する明細行の単位で呼び出されます。
	 * （対象の表示行インデックスは this.DisplayRowIndex から取得できます。）
	 * @param context FormActionContext
	 * @return CodeSearchContext
	 */
	protected CodeSearchContext createDrlSearchContext(FormActionContext context) {
		CodeSearchContext ret = new CodeSearchContext();
		ret.setLanguage(this.getOwnerFormItem().getOwnerForm().getLanguage());
		return ret;
	}

	/**
	 *  ドロップダウンリストのマッピング定義を取得する（常にnullを返します）
	 *  @return null値
	 */
	protected final CodeMapping createCodeMapping() {
		return null;
	}
}
