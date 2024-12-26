package com.fujitsu.intarfrm.skeletons.commons.codes.itemcommands;

import com.fujitsu.intarfrm.helpers.commons.codes.ICodeItemCommand;
import com.fujitsu.intarfrm.skeletons.commons.codes.contexts.CodeReferenceContext;

/**
 * コード参照機能を提供するインターフェース
 * 
 * @author INTARFRM
 */
public interface ICodeReferenceCommand extends ICodeItemCommand, ICodeCheckCommand {
    void codeSearch(CodeReferenceContext context);
}
