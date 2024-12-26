package com.fujitsu.intarfrm.skeletons.commons.codes.itemcommands;

import com.fujitsu.intarfrm.helpers.commons.codes.ICodeItemCommand;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.skeletons.commons.codes.contexts.CodeGetContext;

/**
 * コードチェック機能を提供するインターフェース
 *
 * @author INTARFRM
 */
public interface ICodeCheckCommand extends ICodeItemCommand {
	void codeCheck(CodeGetContext context) throws DatabaseException;
}
