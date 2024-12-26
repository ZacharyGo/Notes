package com.fujitsu.intarfrm.skeletons.commons.framework;

import java.net.URI;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.helpers.commons.framework.IfmControllerAction;
import com.fujitsu.intarfrm.skeletons.projectCommons.actionResults.ResultUrlTransfer;

/**
 * INTARFRMで生成されたフォーム以外に遷移する場合に使用するコマンドクラスです。
 * アクション処理実行結果としてこのクラスを返却すると、特定のURLにリダイレクトします。
 * このクラスは必要に応じてカスタマイズしてください。
 *
 * @author INTARFRM
 */
public class ForwardOuterPageCommand extends IfmControllerAction<FormActionContext> {

	/**
	 * 遷移先のURL
	 */
	private String targetUrl;

	/**
	 * コンストラクタ
	 */
	public ForwardOuterPageCommand() {
		super(null, null);
		targetUrl = "http://www.fujitsu.com/jp/solutions/infrastructure/dynamic-infrastructure/afw/";
	}

	/**
	 * 遷移先情報を生成して返します。
	 */
	@Override
	public ActionResult perform(FormActionContext context) throws Exception {
		URI uri = new URI(this.targetUrl);
		ActionResult result = new ResultUrlTransfer(uri);
		return result;
	}
}
