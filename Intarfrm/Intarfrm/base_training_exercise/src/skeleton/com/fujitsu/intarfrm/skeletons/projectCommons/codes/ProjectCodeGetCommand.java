package com.fujitsu.intarfrm.skeletons.projectCommons.codes;

import java.util.List;

import com.fujitsu.intarfrm.helpers.commons.beans.FormDataSet;
import com.fujitsu.intarfrm.helpers.commons.beans.ListRowData;
import com.fujitsu.intarfrm.helpers.commons.codes.CodeKey;
import com.fujitsu.intarfrm.helpers.commons.codes.CodeKeyElement;
import com.fujitsu.intarfrm.helpers.commons.codes.CodeType;
import com.fujitsu.intarfrm.helpers.commons.codes.data.CodeMapping;
import com.fujitsu.intarfrm.helpers.commons.codes.inherits.CodeItemInfo;
import com.fujitsu.intarfrm.helpers.commons.items.FormItemInfo;
import com.fujitsu.intarfrm.helpers.models.entity.DbRecord;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.skeletons.commons.codes.contexts.CodeGetContext;
import com.fujitsu.intarfrm.skeletons.commons.codes.contexts.CodeSearchContext;
import com.fujitsu.intarfrm.skeletons.commons.codes.itemcommands.ICodeGetCommand;

/**
 * コード取得の処理を制御する基底クラス。
 * このクラスは全てのコード取得処理クラスの最上位のスーパークラスです。
 * このクラスはシステムレベルでの業務処理実行時の共通処理を行うことができます。
 * このクラスで処理することで、業務処理から共通処理を隠蔽化させることが可能です。
 *
 * @author INTARFRM
 */
public abstract class ProjectCodeGetCommand extends ProjectCodeCommandBase implements ICodeGetCommand {

	/**
	 *  シリアルバージョンID
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * コードタイプ
	 */
	private CodeType codeType;

	@Override
	public final CodeType getCodeType() {
		return this.codeType;
	}

	/**
	 * コードタイプを設定する
	 * @param type コードタイプ
	 */
	protected void setCodeType(CodeType type) {
		this.codeType = type;
	}

	/**
	 * コード取得処理を実行する。
	 * @param context コンテキスト
	 * @exception DatabaseException DBアクセスエラー
	 */
	public void codeGet(CodeGetContext context) {

		// コードキーの取得
		CodeKey codeKey = this.getCodeKey(context);

        if (!this.isFilledKeys(codeKey)) {
        	// 空のキー値が含まれている場合は取得失敗
            return;
        }

        // キー値を検索条件に設定する
        CodeSearchContext searchContext = this.createCodeKeySearchContext(context, codeKey);
        // 検索実行
        List<DbRecord> list;
		try {
			list = this.getFinder().find(searchContext, 0, 0);
		} catch (DatabaseException e) {
			//例外が発生した場合は処理を中断
			return;
		}
        // 検索結果をコンテキストにセットする
        DbRecord record = new DbRecord();
        if (list.size() > 0) {
        	record = list.get(0);
        }
        context.setResult(record);
	}

	/**
	 * コードチェック処理を実行する。
	 */
	public void codeCheck(CodeGetContext context) throws DatabaseException {
		// コードキーの取得
		CodeKey codeKey = this.getCodeKey(context);

		if (!this.isFilledKeys(codeKey)) {
			// 空のキー値が含まれている場合は取得失敗
			return;
		}

        // キー値を検索条件に設定する
        CodeSearchContext searchContext = this.createCodeKeySearchContext(context, codeKey);
        // 検索実行
        List<DbRecord> list =  this.getFinder().find(searchContext, 0, 0);
        // 検索結果をコンテキストにセットする
        DbRecord record = new DbRecord();
        if (list.size() > 0) {
        	record = list.get(0);
        	context.setResult(record);
        }
	}

	/**
	 * コードのキー値に基づいた検索条件のオブジェクトを作成する（コード取得、コードチェック用）
	 * このメソッドは、コード取得、コードチェックで使用されます。
	 * コード取得・コードチェックの検索条件の拡張を行う場合は、このメソッドをオーバーライドして、作成されたコンテキストに対して検索条件を追加してください。
	 * @param context コードアクションコンテキスト
	 * @param codeKey コードのキー値
	 * @return コードのキー値の検索条件が設定された<see cref="CodeSearchContext"/>
	 */
    protected CodeSearchContext createCodeKeySearchContext(CodeGetContext context, CodeKey codeKey) {
        CodeSearchContext ret = new CodeSearchContext(codeKey);
        ret.setLanguage(context.getFormActionContext().getCurrentLanguage());
        return ret;
    }

    /**
     * 親フォームの項目からコードのキー値を取得する
     * @param context コードコンテキスト
     * @return 取得したコードのキー値
     */
    protected CodeKey getCodeKey(CodeGetContext context) {
    	// 親フォームのフォームデータ
    	FormDataSet formBean = context.getParentForm();
    	// コード項目マッピング
        CodeMapping mapping = this.getMapping();
        // キー項目の値を取得する
        CodeKey codeKey = new CodeKey();
        for (CodeItemInfo info : this.getCodeInfo().iteratorKeyItem()) {
            FormItemInfo formItemInfo = formBean.INFO.getItems().get(mapping.getFormItemFromCodeItem(info.getId()));
            Object value;
            if (formItemInfo.isCardItem()) {
                value = formBean.CARD.get(formItemInfo);
            } else {
                ListRowData row = context.getTargetRowData();
                value = row.get(formItemInfo);
            }
            codeKey.addKey(info, value);
        }
        return codeKey;
    }

    /**
     * キー項目の値がcodeKeyに設定されているかを調べます。
     * @param codeKey キー
     * @return キー項目の値がすべて設定されていたらtrue。
     */
    private boolean isFilledKeys(CodeKey codeKey) {
        for (CodeItemInfo info : this.getCodeInfo().iteratorKeyItem()) {
            if (!codeKey.containsKey(info.getColumn().getSqlText())) {
                return false;
            }
            CodeKeyElement key = codeKey.get(info.getColumn().getSqlText());
            if (key == null) {
            	return false;
            } else if (key.getValue() instanceof String && key.getValue().toString().length() == 0) {
            	return false;
            }
        }
        return true;
    }
}
