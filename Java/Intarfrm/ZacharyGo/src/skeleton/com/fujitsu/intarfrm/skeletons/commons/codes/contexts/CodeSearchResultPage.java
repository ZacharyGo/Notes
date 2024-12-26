package com.fujitsu.intarfrm.skeletons.commons.codes.contexts;

import java.util.ArrayList;
import java.util.List;

import com.fujitsu.intarfrm.helpers.models.entity.DbRecord;

/**
 * コード検索結果の総件数と明細1ページ分のデータを格納するクラス
 * 
 * @author INTARFRM
 */
public class CodeSearchResultPage {

	/**
	 * 検索結果の総件数
	 */
	private int totalCount;

	/**
	 * 明細1ページ分のデータ
	 */
	private List<DbRecord> pageData;

	/**
	 * コンストラクタ
	 */
	public CodeSearchResultPage() {
		this.pageData = new ArrayList<DbRecord>();
	}

	/**
	 * 検索結果の総件数を取得する。
	 * @return 件数
	 */
	public int getTotalCount() {
		return this.totalCount;
	}

	/**
	 * 検索結果の総件数を設定する。
	 * @param count 件数
	 */
	public void setTotalCount(int count) {
		this.totalCount = count;
	}

	/**
	 * 明細1ページ分のデータを取得します。
	 * @return 1ページ文のデータ
	 */
	public List<DbRecord> getPageData() {
		return this.pageData;
	}

	/**
	 * 明細1ページ分のデータを設定します。
	 * @param pageData 1ページ分のデータ
	 */
	public void setPageData(List<DbRecord> pageData) {
		this.pageData = pageData;
	}
}
