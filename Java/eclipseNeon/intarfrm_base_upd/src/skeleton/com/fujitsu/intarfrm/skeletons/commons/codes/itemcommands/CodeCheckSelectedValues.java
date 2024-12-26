package com.fujitsu.intarfrm.skeletons.commons.codes.itemcommands;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.LinkedHashMap;

import com.fujitsu.intarfrm.helpers.commons.codes.CodeException;
import com.fujitsu.intarfrm.helpers.commons.codes.CodeMessages;
import com.fujitsu.intarfrm.helpers.commons.utils.ArgumentValidator;

/**
 * コードチェック用値を管理するクラス
 *
 * @author INTARFRM
 */
public class CodeCheckSelectedValues {

	/**
	 * 値を保持するマップ
	 */
	private LinkedHashMap<String, Object> values = new LinkedHashMap<String, Object>();

	/**
	 * コンストラクタ
	 */
	public CodeCheckSelectedValues() {
	}

	/**
	 * SELECT結果を追加します。
	 * @param columnPhyName カラムの物理名
	 * @param value 値
	 */
	public void add(String columnPhyName, Object value) {
		ArgumentValidator.checkNull(columnPhyName, "columnPhyName");
		this.values.put(columnPhyName, value);
	}

	/**
	 * カラムに対応する値をStringとして取得します。
	 * @param columnPhyName カラムの物理名
	 * @return Stringの値
	 */
	public String getAsString(String columnPhyName) {
		ArgumentValidator.checkNull(columnPhyName, "columnPhyName");
		Object obj = this.values.get(columnPhyName.toUpperCase());
		String retval = null;
		if (obj != null) {
			retval = obj.toString();
		}
		return retval;
	}

	/**
	 * カラムに対応する値をBigDecimalとして取得します。
	 * @param columnPhyName カラムの物理名
	 * @return BigDecimalの値
	 */
	public BigDecimal getAsBigDecimal(String columnPhyName) {
        ArgumentValidator.checkNull(columnPhyName, "columnPhyName");
		Object obj = this.values.get(columnPhyName.toUpperCase());
		BigDecimal retval = null;
		if (obj == null) {
			retval = null;
		} else {
			try {
				if (obj instanceof BigDecimal) {
					retval = (BigDecimal)obj;
				} else {
					retval = new BigDecimal(obj.toString());
				}
			} catch (NumberFormatException e) {
				throw new CodeException(CodeMessages.DCCR0007);
			}
		}
		return retval;
	}

	/**
	 * カラムに対応する値をTimestampとして取得します。
	 * @param columnPhyName カラムの物理名
	 * @return Timestampの値
	 */
	public Timestamp getAsTimestamp(String columnPhyName) {
		ArgumentValidator.checkNull(columnPhyName, "columnPhyName");
		Object obj = this.values.get(columnPhyName.toUpperCase());

		Timestamp retval = null;
		if (obj == null) {
			retval = null;
		} else {
			try {
				if (obj instanceof Timestamp) {
					retval = (Timestamp)obj;
				} else {
					retval = new Timestamp(Long.parseLong(obj.toString()));
				}
			} catch (NumberFormatException e) {
				throw new CodeException(CodeMessages.DCCR0007);
			}
		}
		return retval;
	}
}
