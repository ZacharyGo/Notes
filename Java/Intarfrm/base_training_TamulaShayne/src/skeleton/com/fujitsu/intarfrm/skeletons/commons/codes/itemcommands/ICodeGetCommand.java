package com.fujitsu.intarfrm.skeletons.commons.codes.itemcommands;

import com.fujitsu.intarfrm.helpers.commons.codes.ICodeItemCommand;
import com.fujitsu.intarfrm.skeletons.commons.codes.contexts.CodeGetContext;

/**
 * コード取得機能を提供するインターフェース
 *
 * @author INTARFRM
 */
public interface ICodeGetCommand extends ICodeItemCommand, ICodeCheckCommand {
	void codeGet(CodeGetContext context);
}
