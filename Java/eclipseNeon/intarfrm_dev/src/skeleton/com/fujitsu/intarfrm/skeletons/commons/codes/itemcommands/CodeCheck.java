package com.fujitsu.intarfrm.skeletons.commons.codes.itemcommands;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.fujitsu.intarfrm.helpers.commons.attributes.AttributeDataType;
import com.fujitsu.intarfrm.helpers.commons.beans.AbstractListData;
import com.fujitsu.intarfrm.helpers.commons.beans.CardData;
import com.fujitsu.intarfrm.helpers.commons.beans.FormDataSet;
import com.fujitsu.intarfrm.helpers.commons.beans.ListRowData;
import com.fujitsu.intarfrm.helpers.commons.beans.ManagedListData;
import com.fujitsu.intarfrm.helpers.commons.codes.CodeException;
import com.fujitsu.intarfrm.helpers.commons.codes.CodeServerMessage;
import com.fujitsu.intarfrm.helpers.commons.codes.CodeType;
import com.fujitsu.intarfrm.helpers.commons.codes.data.CodeMapping;
import com.fujitsu.intarfrm.helpers.commons.codes.inherits.CodeInfo;
import com.fujitsu.intarfrm.helpers.commons.codes.inherits.CodeItemInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ControlDisplayMode;
import com.fujitsu.intarfrm.helpers.commons.items.FormBorderType;
import com.fujitsu.intarfrm.helpers.commons.items.FormItemInfo;
import com.fujitsu.intarfrm.helpers.commons.items.FormListInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemCodeInfo;
import com.fujitsu.intarfrm.helpers.commons.messages.MessageFormItem;
import com.fujitsu.intarfrm.helpers.commons.utils.StringHelper;
import com.fujitsu.intarfrm.helpers.commons.validating.ListErrorMessageMode;
import com.fujitsu.intarfrm.helpers.commons.validating.ListValidationMode;
import com.fujitsu.intarfrm.helpers.commons.validating.ValidationError;
import com.fujitsu.intarfrm.helpers.commons.validating.ValidationErrorTypes;
import com.fujitsu.intarfrm.helpers.models.entity.DbRecord;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.skeletons.commons.codes.contexts.CodeGetContext;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;


/**
 * コードチェックを実行するクラスです。
 *
 * @author INTARFRM
 */
public class CodeCheck {

	/**
	 * カード項目のときのエラー
	 */
    private static final String CardError = "S107";

    /**
     * 表示されている明細項目のときのエラー
     */
    private static final String DispListError = "S307";

    /**
     * 全明細のときのエラー
     */
    private static final String AllListCardError = "S407";

    /**
     * コードアクションを実行しているフォーム全体のチェックを実行する
     * @param context フォームアクションコンテキスト
     * @param dataSet フォームの情報
     * @return チェック結果
     */
    public boolean checkForm(FormActionContext context, FormDataSet dataSet) {
        boolean ret = true;
        // カードのチェック
        for (FormItemInfo info : dataSet.INFO.getCardInfo().getItems()){
            ItemCodeInfo codeInfo = info.getCode();
            if (codeInfo != null && codeInfo.needValidation()) {
                ICodeCheckCommand instance = (ICodeCheckCommand)info.getCode().getCodeCommand();
                // コードチェック必要?
                if (!this.needsCodeCheck(instance, dataSet, dataSet.CARD, null)) {
                    continue;
                }

                // コードチェック必要
                CodeCheckSelectedValues result;
				try {
					result = this.cardCheck(context, instance, dataSet.CARD);
				} catch (DatabaseException e) {
					result = null;
				}

                // チェック失敗
                if (result == null) {
                    ret = false;
                    this.markError(instance, dataSet, dataSet.CARD, null);
                }

                // コード上書き
                if (codeInfo.needOverwrite()) {
                    overwrite(instance, result, dataSet.CARD, null);
                }
            }
        }

        // 明細のチェック
        for (FormListInfo listInfo : dataSet.INFO.getListBorders()) {
            if (!this.checkList(context, dataSet, listInfo)) {
                ret = false;
            }
        }

        return ret;
    }

    /**
     * 指定した明細部のチェックを実行する
     * @param context フォームアクションコンテキスト
     * @param dataSet フォームの情報
     * @param listInfo チェック対象明細情報
     * @return チェック結果
     */
    public boolean checkList(FormActionContext context, FormDataSet dataSet, FormListInfo listInfo) {
        boolean ret = true;
        // 明細のチェック
        for (FormItemInfo info : listInfo.getItems()) {
            ItemCodeInfo codeInfo = info.getCode();
            if (codeInfo != null && codeInfo.needValidation()) {
                ICodeCheckCommand instance = (ICodeCheckCommand) codeInfo.getCodeCommand();
                AbstractListData<?, ?> listData = dataSet.getListData(info.getOwnerBorder());
                ListValidationMode validation = listData.getInfo().getListValidationMode();
                if (validation == ListValidationMode.ALL_ROWS) {
                    // 全件チェック
                    Iterable<?> rows;
                    if (listData instanceof ManagedListData) {
                        ManagedListData<?, ?> managed = (ManagedListData<?, ?>)listData;
                        rows = managed.rows();
                    } else {
                        rows = listData.displayRows();
                    }

                    for (Object row : rows) {
                        // コードチェック必要
                        if (!this.needsCodeCheck(instance, dataSet, dataSet.CARD, (ListRowData)row)) {
                            continue;
                        }

                        // チェック
                        CodeCheckSelectedValues result;
						try {
							result = this.listCheck(context, instance, (ListRowData)row);
						} catch (DatabaseException e) {
							result = null;
						}
                        if (result == null) {
                            this.markError(instance, dataSet, dataSet.CARD, (ListRowData)row);
                            ret = false;
                        }

                        // 上書き
                        if (codeInfo.needOverwrite()) {
                            this.overwrite(instance, result, dataSet.CARD, (ListRowData)row);
                        }
                    }
                } else if (validation == ListValidationMode.PAGE_ROWS_ONLY) {
                    // 表示部分だけチェック
                    for (Object row : listData.displayRows()) {
                        // コードチェック必要
                        if (!this.needsCodeCheck(instance, dataSet, dataSet.CARD, (ListRowData)row)) {
                            continue;
                        }

                        // チェック
                        CodeCheckSelectedValues result;
						try {
							result = this.listCheck(context, instance, (ListRowData)row);
						} catch (DatabaseException e) {
							result = null;
						}
                        if (result == null) {
                            this.markError(instance, dataSet, dataSet.CARD, (ListRowData)row);
                            ret = false;
                        }

                        // 上書き
                        if (codeInfo.needOverwrite()) {
                            this.overwrite(instance, result, dataSet.CARD, (ListRowData)row);
                        }
                    }
                } else {
                    throw new CodeException("Unexpected check mode.");
                }
            }
        }
        return ret;
    }

    /**
     * カード部のチェックを実行する
     * @param context フォームアクションコンテキスト
     * @param code コード情報
     * @param card カード部情報
     * @return チェック結果
     * @throws DatabaseException
     */
    private CodeCheckSelectedValues cardCheck(FormActionContext context, ICodeCheckCommand code, CardData card) throws DatabaseException {
        CodeGetContext checkContext = new CodeGetContext(CodeType.CHECK, context, context.getFormBean(), code.getOwnerFormItem(), null);
        code.codeCheck(checkContext);
        return getCodeCheckSelectedValues(checkContext);
    }

    /**
     * 明細部の一行のチェックを実行する
     * @param context フォームアクションコンテキスト
     * @param code コード情報
     * @param row チェック対象明細行情報
     * @return チェック結果
     * @throws DatabaseException
     */
    private CodeCheckSelectedValues listCheck(FormActionContext context, ICodeCheckCommand code, ListRowData row) throws DatabaseException {
        CodeGetContext checkContext = new CodeGetContext(CodeType.CHECK, context, context.getFormBean(), code.getOwnerFormItem(), row);
        code.codeCheck(checkContext);
        return getCodeCheckSelectedValues(checkContext);
    }

    /**
     * コードチェック用値情報を取得する
     * @param checkContext コードチェックコンテキスト
     * @return  コードチェック用値情報
     */
    private static CodeCheckSelectedValues getCodeCheckSelectedValues(CodeGetContext checkContext) {
        if (checkContext.getResult() == null) {
            // 該当コードが存在しない場合
            return null;
        } else {
            // 該当コードが存在する場合
            CodeCheckSelectedValues retval = new CodeCheckSelectedValues();
            DbRecord record = checkContext.getResult();
            for (String key : record.getKeys()) {
                retval.add(key, record.get(key));
            }
            return retval;
        }
    }

    /**
     * エラーメッセージを作成する
     * @param instance コードチェックのアクションコマンド
     * @param dataSet フォームの情報
     * @param card カード部情報
     * @param row 明細行情報
     */
    private void markError(ICodeCheckCommand instance, FormDataSet dataSet, CardData card, ListRowData row) {

    	CodeMapping mapping = instance.getMapping();
    	CodeServerMessage msg = null;
    	for (CodeItemInfo cInfo : instance.getCodeInfo().iteratorKeyItem()) {
    		String formItemId = mapping.getFormItemFromCodeItem(cInfo.getId());
    		FormItemInfo info = dataSet.INFO.getItem(formItemId);

    		ValidationError error = null;

    		if (info.getOwnerBorder().isCard()) {
    			//カード項目にエラー設定
    			error = new ValidationError(ValidationErrorTypes.CODE, CodeCheck.CardError, card.toFormatString(info));
    			card.putCheckError(info, error);
    			if (msg == null) {
    				msg = new CodeServerMessage(error.getMessageId());
    			}
    			msg.addCodeItemInfo(info);
				msg.addCodeError(error.getValue());
    			msg.getMessageFormItems().add(new MessageFormItem(info.getId()));
    		} else {
    			//明細項目にエラー設定
    			if (row.getOwner().getInfo().getListErrorMessageMode() == ListErrorMessageMode.ALL_ROWS_MESSAGE) {
    				error = new ValidationError(ValidationErrorTypes.CODE, CodeCheck.AllListCardError, row.toFormatString(info));
    			} else {
    				error = new ValidationError(ValidationErrorTypes.CODE, CodeCheck.DispListError, row.toFormatString(info));
    			}
    			if (msg == null) {
    				msg = new CodeServerMessage(error.getMessageId());
    			}
    			msg.addCodeItemInfo(info);
				msg.setListData(row);
				msg.addCodeError(error.getValue());
    			msg.getMessageFormItems().add(new MessageFormItem(info.getId(), row.getOwner().getDisplayRowIndex(row.rowIndex()),row.rowIndex()));
    			row.putCheckError(info, error);
    		}
    	}
    	dataSet.getServerMessages().add(msg);
    }

    /**
     * 取得したデータの貼付けを行う
     * @param instance コードチェックのアクションコマンド
     * @param result コードチェック用値情報
     * @param card カード部情報
     * @param row 明細行情報
     */
    private void overwrite(ICodeCheckCommand instance, CodeCheckSelectedValues result, CardData card, ListRowData row) {
    	CodeMapping mapping = instance.getMapping();
    	CodeInfo codeInfo = instance.getCodeInfo();
    	FormDataSet form = card.ownerData();

    	// カード部の貼付け
    	HashMap<String, String> map = mapping.getFormCodeItemMapping();
		for (String key : map.keySet()) {
    		FormItemInfo info = form.INFO.getItem(key);
    		if (info == null) {
    			continue;
    		}
    		if (result == null) {
    			CodeItemInfo codeItem = codeInfo.get(map.get(key));
    			if (codeItem != null && codeItem.getKeyOrder() <= 0) {
    				card.putNull(info);
    			}
    		} else {
    			if (info.getAttribute().getDataType() == AttributeDataType.STRING) {
    				card.put(info, result.getAsString(map.get(key)));
    			} else if (info.getAttribute().getDataType() == AttributeDataType.NUMBER) {
    				card.put(info, result.getAsBigDecimal(map.get(key)));
    			} else if (info.getAttribute().getDataType() == AttributeDataType.DATETIME) {
    				card.put(info, result.getAsTimestamp(map.get(key)));
    			} else {
    				throw new CodeException("Overwrite target is not value item.");
    			}
    		}
    	}

    	// 明細部の貼付け
    	if (row != null) {
    		HashMap<String, String> map1 = mapping.getFormCodeItemMapping();
    		for (String key : map1.keySet()) {
    			FormItemInfo info = form.INFO.getItem(key);
    			if (info == null) {
    				continue;
    			}

    			if (result == null) {
    				CodeItemInfo codeItem = codeInfo.get(map1.get(key));
    				if (codeItem != null && codeItem.getKeyOrder() <= 0) {
    					row.putNull(info);
    				}
        		} else {
        			if (info.getAttribute().getDataType() == AttributeDataType.STRING) {
        				row.put(info, result.getAsString(map1.get(key)));
        			} else if (info.getAttribute().getDataType() == AttributeDataType.NUMBER) {
        				row.put(info, result.getAsBigDecimal(map1.get(key)));
        			} else if (info.getAttribute().getDataType() == AttributeDataType.DATETIME) {
        				row.put(info, result.getAsTimestamp(map1.get(key)));
        			} else {
        				throw new CodeException("Overwrite target is not value item.");
        			}
        		}
    		}
    	}
    }

    /**
     * コードチェックの実施を判断する
     * @param instance コードチェックのアクションコマンド
     * @param dataSet フォームの情報
     * @param card カード部情報
     * @param row 明細行情報
     * @return コードチェック実施の判断結果
     */
	private boolean needsCodeCheck(ICodeCheckCommand instance, FormDataSet dataSet, CardData card, ListRowData row) {
		if (!instance.getItemCodeInfo().needValidation()) {
			return false;
		}

		CodeMapping mapping = instance.getMapping();
		List<FormItemInfo> keyFormItems = new ArrayList<FormItemInfo>();
		for (CodeItemInfo codeItem : instance.getCodeInfo().iteratorKeyItem()) {
			keyFormItems.add(dataSet.INFO.getItem(mapping.getFormItemFromCodeItem(codeItem.getId())));
		}

		return keyEnabled(keyFormItems) && existKeyValue(keyFormItems, card, row);
	}

	/**
	 * キー項目の表示状態を確認する
	 * @param values キー項目情報のリスト
	 * @return キー項目の表示状態（有効：true、無効：false）
	 */
	private boolean keyEnabled(List<FormItemInfo> values) {
		for (FormItemInfo v : values) {
			if (v.getCurrentDisplayMode() == ControlDisplayMode.ENABLE) {
				return true;
			}
		}
		return false;
	}

	/**
	 *  キー項目の入力状態を確認する
	 * @param values キー項目情報のリスト
	 * @param card カード部情報
	 * @param row 明細行データ
	 * @return キー項目の入力状態（入力あり：true、未入力：false）
	 */
	private boolean existKeyValue(List<FormItemInfo> values, CardData card, ListRowData row) {
		for (FormItemInfo v : values) {
			Object value = null;
			if (v.getOwnerBorder().getBorderType() == FormBorderType.CARD) {
				value = card.get(v);
			} else if (row != null) {
				value = row.get(v);
			}
			if ((v.getAttribute().getDataType() == AttributeDataType.NUMBER && value != null)||
					!StringHelper.isNullOrEmpty((String)value)) {
				return true;
			}
		}
		return false;
	}
}
