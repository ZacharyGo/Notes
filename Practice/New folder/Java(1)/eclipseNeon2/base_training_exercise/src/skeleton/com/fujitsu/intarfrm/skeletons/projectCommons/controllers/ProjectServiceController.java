package com.fujitsu.intarfrm.skeletons.projectCommons.controllers;

import javax.servlet.ServletException;

import com.fujitsu.intarfrm.helpers.commons.framework.BrowserCheckException;
import com.fujitsu.intarfrm.helpers.commons.framework.CommandException;
import com.fujitsu.intarfrm.helpers.commons.framework.DefaultServiceController;
import com.fujitsu.intarfrm.helpers.commons.framework.FormActionContextBase;
import com.fujitsu.intarfrm.helpers.commons.framework.FrameworkFilterCollection;
import com.fujitsu.intarfrm.helpers.commons.framework.FrameworkFilterManager;
import com.fujitsu.intarfrm.helpers.commons.framework.IFrameworkFilter;
import com.fujitsu.intarfrm.helpers.commons.framework.SessionInvalidatedException;
import com.fujitsu.intarfrm.skeletons.commons.framework.DirectAccessException;

/**
 * INTARFRMのコントローラサービス本体の実装クラス。
 * 
 * @author INTARFRM
 */
public class ProjectServiceController extends DefaultServiceController {

	/**
     * バージョンID
     */
    private static final long serialVersionUID = 1L;

	/**
	 * 業務処理を制御する前に必要な処理を実行する。
	 */
	@Override
	public FormActionContextBase preAction(FormActionContextBase ctx) 
			throws BrowserCheckException, SessionInvalidatedException, ServletException, CommandException {

		// FrameworkFilterのコレクションを取得する
		FrameworkFilterCollection col = FrameworkFilterManager.getInstance().getPreCollection();
		// コレクションに登録された処理を実行する
		for (IFrameworkFilter filter : col) {
			try {
				filter.doFilter(ctx);
			} catch (BrowserCheckException e) {
				throw e;
			} catch (SessionInvalidatedException e) {
				throw e;
			} catch (CommandException e) {
				throw e;
			} catch (ServletException e) {
				throw e;
			}
			catch (DirectAccessException e) {
				throw e;
			}
			catch (Exception e) {
				throw new CommandException(e);
			}
		}
		return ctx;
	}

	/**
	 * 業務処理を制御する後に必要な処理を実行する。
	 */
	@Override
	public void afterAction(FormActionContextBase ctx) 
			throws ServletException, CommandException {

		// FrameworkFilterのコレクションを取得する
		FrameworkFilterCollection col = FrameworkFilterManager.getInstance().getAfterCollection();
		// コレクションに登録された処理を実行する
		for (IFrameworkFilter filter : col) {
			try {
				filter.doFilter(ctx);
			} catch (CommandException e) {
				throw e;
			} catch (ServletException e) {
				throw e;
			}
			catch (DirectAccessException e) {
				throw e;
			}
			catch (Exception e) {
				throw new CommandException(e);
			}
		}
	}
}