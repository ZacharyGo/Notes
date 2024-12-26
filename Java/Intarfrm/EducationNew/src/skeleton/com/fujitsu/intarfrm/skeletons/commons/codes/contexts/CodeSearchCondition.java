package com.fujitsu.intarfrm.skeletons.commons.codes.contexts;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import com.fujitsu.intarfrm.helpers.commons.codes.inherits.CodeItemInfo;
import com.fujitsu.intarfrm.helpers.commons.codes.inherits.CodeSearchType;
import com.fujitsu.intarfrm.helpers.commons.utils.ArgumentValidator;
import com.fujitsu.intarfrm.helpers.models.entity.converters.SqlDataConverterBase;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;

/**
 * コード検索条件クラス<br/>
 * このクラスは、コード検索条件の拡張などで任意の検索条件を指定する際に使用します。
 */
public class CodeSearchCondition implements Serializable {

	/**
	 * シリアルバージョンID
	 */
	private static final long serialVersionUID = 1L;

    /**
     * 検索タイプ
     */
    private CodeSearchType searchType;

    /**
     * 検索対象のフィールド名
     */
    private String columnName;

    /**
     * 検索対象フィールドのデータ型
     */
    private int sqlType;

    /**
     * コード検索項目の検索条件値
     */
    private List<Object> values;

    /**
     * LIKE条件のパラメータ値を加工せずにそのまま使用するかどうか。
     */
    private boolean passThroughLikeParameter;

    /**
     * LIKE条件のパラメータ値を加工せずにそのまま使用するかどうかを取得します。
     * @return
     *         true=そのままパラメータ値として使用、false=検索タイプに応じて前後のワイルドカード文字を付与して使用されます。
     */
    public boolean getPassThroughLikeParameter() {
    	return this.passThroughLikeParameter;
    }

    /**
     * LIKE条件のパラメータ値を加工せずにそのまま使用するかどうかを設定します。
     * @param passThrough
     *         true=そのままパラメータ値として使用、false=検索タイプに応じて前後のワイルドカード文字を付与して使用されます。
     */
    public void setPassThroughLikeParameter(boolean passThrough) {
    	this.passThroughLikeParameter = passThrough;
    }

    /**
	 * コード検索項目の検索条件値を取得します。
     * @return
	 *         検索条件値
     */
    public List<Object> getValues() {
        return this.values;
    }

    /**
	 * <para>コード検索項目の検索条件値を設定します。</para>
	 * 検索条件値は、SearchTypeの種別によって、以下のように指定してください。
	 * <para>SeachTypeがBetween, BetweenWithEqualの場合：長さが２の配列（0:最小値, 1:最大値。最小値か最大値の条件が無い場合は、要素にnullを指定してください。）。</para>
	 * <para>SeachTypeがSelectFromConditionの場合：複数の値を設定可能（検索条件は各値のOR条件となります）</para>
	 * <para>SeachTypeが上記以外の場合：長さが1の配列</para>
	 * <para>項目に対する検索条件の指定がない場合は、nullもしくは長さが0の配列を指定してください。</para>
	 * <para>配列の値は、検索対象フィールドの型に従って、String, BigDecimal, Timestampのなどの値で指定してください。</para>
     * @param values
	 *            検索条件値
     */
    public void setValues(List<Object> values) {
        this.values = values;
    }

    /**
     * 検索タイプを取得します。
     * @return
     *         検索タイプ
     */
    public CodeSearchType getSearchType() {
        return this.searchType;
    }

    /**
     * 検索対象のフィールド名を取得します。
     * @return
     *         検索対象のフィールド名
     */
    public String getColumnName() {
        return this.columnName;
    }

    /**
     * 検索対象フィールドのデータ型を取得します。
     * @return
     *         検索対象フィールドのデータ型
     */
    public int getSqlType() {
        return this.sqlType;
    }

    /**
     * 検索対象フィールドのデータ型を設定します。
     * @return
     *         検索対象フィールドのデータ型
     */
    public void setDataType(int sqlType) {
        this.sqlType = sqlType;
    }

    /**
     * コンストラクタ
     */
    public CodeSearchCondition() {
        this.values = new LinkedList<Object>();
    }

    /**
     * 単一の値を条件とするコンストラクタ
     * @param columnName
     *            検索対象フィールド名
     * @param searchType
     *            検索タイプ
     * @param value
     *            検索条件値<br/>
     *            単体テキストボックスやラジオボタンの場合、長さが1の配列。<br/>
     *             searchTypeが Between または BetweenWithEqual の場合、長さが２の配列（0:最小値, 1:最大値）。<br/>
     *            複数選択可能な項目の場合、選択された値（長さは可変）。<br/>
     *            項目に対する検索条件の指定がない場合は、長さが0の配列になります。<br/>
     *            配列の要素はコード項目属性によって、String, BigDecimal, Timestampの型に変換されています。<br/>
     * @param dataType
     *            検索対象フィールドのデータ型
     */
    public CodeSearchCondition(String columnName, CodeSearchType searchType, Object value, int sqlType) {
    	this(columnName, searchType, Arrays.asList(value), sqlType);
    }

    /**
     * 単一の値を条件とするコンストラクタ
     * @param codeItem
     *            検索対象のコード項目情報
     * @param searchType
     *            検索タイプ
     * @param value
     *           コード検索項目の検索条件値
     */
    public CodeSearchCondition(CodeItemInfo codeItem, CodeSearchType searchType, Object value) {
    	this(codeItem, searchType, Arrays.asList(value));
    }

    /**
     *  複数の値を条件とするコンストラクタ
     * @param columnName
     *            検索対象フィールド名
     * @param searchType
     *            検索タイプ
     * @param values
     *            検索条件値<br/>
     *            単体テキストボックスやラジオボタンの場合、長さが1の配列。<br/>
     *             searchTypeが Between または BetweenWithEqual の場合、長さが２の配列（0:最小値, 1:最大値）。<br/>
     *            複数選択可能な項目の場合、選択された値（長さは可変）。<br/>
     *            項目に対する検索条件の指定がない場合は、長さが0の配列になります。<br/>
     *            配列の要素はコード項目属性によって、String, BigDecimal, Timestampの型に変換されています。<br/>
     * @param dataType
     *            検索対象フィールドのデータ型
     */
    public CodeSearchCondition(String columnName, CodeSearchType searchType, List<Object> values, int sqlType) {
        ArgumentValidator.checkStringNullOrEmpty(columnName, "columnName");
        checkArgument(searchType, values);

        this.searchType = searchType;
        this.columnName = columnName;
        this.sqlType = sqlType;
        this.values = values;
    }

    /**
     * 複数の値を条件とするコンストラクタ
     * @param columnName
     *            検索対象フィールド名
     * @param searchType
     *            検索タイプ
     * @param values
     *            検索条件値<br/>
     *            単体テキストボックスやラジオボタンの場合、長さが1の配列。<br/>
     *             searchTypeが Between または BetweenWithEqual の場合、長さが２の配列（0:最小値, 1:最大値）。<br/>
     *            複数選択可能な項目の場合、選択された値（長さは可変）。<br/>
     *            項目に対する検索条件の指定がない場合は、長さが0の配列になります。<br/>
     *            配列の要素はコード項目属性によって、String, BigDecimal, Timestampの型に変換されています。<br/>
     */
    public CodeSearchCondition(String columnName, CodeSearchType searchType, List<Object> values) {
    	this(columnName, searchType, values, Integer.MIN_VALUE);
    }

    /**
     * 複数の値を条件とするコンストラクタ
     * @param codeItem
     *            検索対象のコード項目情報
     * @param searchType
     *            検索タイプ
     * @param values
     *            検索条件値<br/>
     *            単体テキストボックスやラジオボタンの場合、長さが1の配列。<br/>
     *             searchTypeが Between または BetweenWithEqual の場合、長さが２の配列（0:最小値, 1:最大値）。<br/>
     *            複数選択可能な項目の場合、選択された値（長さは可変）。<br/>
     *            項目に対する検索条件の指定がない場合は、長さが0の配列になります。<br/>
     *            配列の要素はコード項目属性によって、String, BigDecimal, Timestampの型に変換されています。<br/>
     */
    public CodeSearchCondition(CodeItemInfo codeItem, CodeSearchType searchType, List<Object> values) {
        ArgumentValidator.checkNull(codeItem, "codeItem");
        checkArgument(searchType, values);

        this.searchType = searchType;
        this.columnName = codeItem.getColumn().getSqlText();
        SqlDataConverterBase conv = codeItem.getColumn().getDataType().getConverter();
        this.sqlType = conv.getSqlType();

        ArrayList<Object> list = new ArrayList<Object>();
        try {
            for(Object value : values) {
               list.add(conv.convertParameterValue(value, codeItem.getFormat()));
            }
        } catch (DatabaseException e) {
            throw new IllegalArgumentException(e);
        }
        this.values = list;
    }

    /**
     * @param searchType
     *            検索タイプ
     * @param values
     *            検索条件値<br/>
     *            単体テキストボックスやラジオボタンの場合、長さが1の配列。<br/>
     *             searchTypeが Between または BetweenWithEqual の場合、長さが２の配列（0:最小値, 1:最大値）。<br/>
     *            複数選択可能な項目の場合、選択された値（長さは可変）。<br/>
     *            項目に対する検索条件の指定がない場合は、長さが0の配列になります。<br/>
     *            配列の要素はコード項目属性によって、String, BigDecimal, Timestampの型に変換されています。<br/>
     */
    private void checkArgument(CodeSearchType searchType, List<Object> values) {
    	ArgumentValidator.checkNotEquals(searchType, "searchType", CodeSearchType.NONE);

    	if (CodeSearchType.requireValues(searchType) == 2) {
    		if (values.size() != 2) {
    			throw new IllegalArgumentException("values count must be 2.");
    		}
    	} else {
    		if (searchType != CodeSearchType.SELECT_FROM_CONDITION && values.size() != 1) {
    			throw new IllegalArgumentException("values count must be 1.");
    		}
    	}
    }

    /**
     * 検索条件の値が空かどうかを示す値を取得します。
     * @return
     *            検索条件値がnull、長さが0、全ての要素がnullまたは空文字列、のいずれかの場合はtrue。それ以外はfalse。
     */
    public boolean isEmpty() {
        Boolean isEmpty = true;
        if (this.values == null || this.values.isEmpty()) {
            return true;
        }
        for (Object val : this.values) {
            if (val != null && val.toString().trim().length() != 0) {
                isEmpty = false;
            }
        }
        return isEmpty;
    }
}
