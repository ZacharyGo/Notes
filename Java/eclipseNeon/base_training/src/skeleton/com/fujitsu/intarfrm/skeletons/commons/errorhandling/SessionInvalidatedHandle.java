package com.fujitsu.intarfrm.skeletons.commons.errorhandling;

import java.net.URI;
import java.net.URISyntaxException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fujitsu.intarfrm.helpers.commons.exceptions.InvalidOperationException;
import com.fujitsu.intarfrm.helpers.commons.framework.FormActionContextBase;
import com.fujitsu.intarfrm.helpers.commons.framework.IfmControllerBase;
import com.fujitsu.intarfrm.helpers.commons.framework.IfmCommandTrap;
import com.fujitsu.intarfrm.helpers.commons.utils.StringHelper;
import com.fujitsu.intarfrm.skeletons.projectCommons.actionResults.ResultUrlTransfer;

/**
 * アクセスユーザのHTTPセッションが無効になった状態でアクセスされた場合の例外処理ハンドラクラス
 *
 * @author INTARFRM
 */
public class SessionInvalidatedHandle extends IfmCommandTrap {

	/**
	 * <p>
	 * SessionInvalidatedExceptionに対するエラー処理。
	 * </p>
	 *
	 * @param e コマンド実行時に発生した例外
	 * @param req リクエスト
	 * @param res レスポンス
	 * @param errorCommand 例外の発生したコマンド。<br/>
	 *            コマンド実行前もしくは実行後に例外が発生した場合、nullの可能性があります。
	 * @param context 処理中だったContext。<br/>
	 *            コマンド実行前もしくは実行後に例外が発生した場合、nullの可能性があります。
	 * @return 処理の結果
	 */
	@Override
	public ResultUrlTransfer perform(Throwable e, HttpServletRequest req, HttpServletResponse res, IfmControllerBase errorCommand, FormActionContextBase context) {
		URI uri = null;
		String viewType = context == null ? "" : context.getViewType();
		try {
			uri = new URI(String.format("/views/pjcommon/errorpage/sessionInvalidated%1$s.jsp",
					StringHelper.isNullOrEmpty(viewType) ? "" : "." + viewType));
		} catch (URISyntaxException ex) {
			throw new InvalidOperationException(ex);
		}

		return new ResultUrlTransfer(uri);
	}
}
