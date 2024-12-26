package com.fujitsu.intarfrm.skeletons.commons.initializing;

import java.sql.Timestamp;

import javax.servlet.ServletContextEvent;

import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializer;
import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializerException;
import com.fujitsu.intarfrm.helpers.commons.validating.InputValidationManager;
import com.fujitsu.intarfrm.helpers.commons.validating.InputValidatorCollection;
import com.fujitsu.intarfrm.helpers.commons.validating.validators.AttributeValidator;
import com.fujitsu.intarfrm.helpers.commons.validating.validators.DateTimeValidRangeValidator;
import com.fujitsu.intarfrm.helpers.commons.validating.validators.DateTimeValidator;
import com.fujitsu.intarfrm.helpers.commons.validating.validators.LengthValidator;
import com.fujitsu.intarfrm.helpers.commons.validating.validators.RequiredValueValidator;
import com.fujitsu.intarfrm.helpers.commons.validating.validators.InvalidCharacterValidator;
import com.fujitsu.intarfrm.helpers.commons.validating.validators.SelectableItemValidator;
import com.fujitsu.intarfrm.helpers.commons.validating.validators.ValidRangeValidator;

/**
 * <p>項目の入力値チェックの初期化イニシャライザ。</p>
 * 
 * 入力値チェックの初期化を行うためのイニシャライザクラスです。<br>
 * このクラスは初期化チェインに登録され、アプリケーションコンテナ起動時にINTARFRMフレームワークにより実行されます。<br>
 *
 * @author INTARFRM
 * 
 */
public class InputValidationInitializer implements ApplicationInitializer {

    /**
     * {@inheritDoc}
     */
	@Override
	public String getName() {
		return "入力値チェック定義";
	}

    /**
     * {@inheritDoc}
     */
	@Override
	public boolean isExitOnError() {
		return true;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public void initialize(ServletContextEvent servletContextEvent) throws ApplicationInitializerException {
		//初期化処理		
		
		//文字列系の入力値チェックの初期化
		this.initializeStringValidating();
		//数値系の入力値チェックの初期化
		this.initializeNumberValidating();
		//日時系の入力値チェックの初期化
		this.initializeDateTimeValidating();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public void destroy(ServletContextEvent servletContextEvent) throws ApplicationInitializerException {
		//終了処理は何もしません		
	}


	/**
	 * 文字列系の入力チェックの初期化
	 */
	private void initializeStringValidating() {

		//文字列系のチェックリスト
		InputValidatorCollection col = InputValidationManager.getInstance().getStringCheckList();
		
		//必須チェック
		col.add(new RequiredValueValidator());
		//サロゲートペア文字チェック
		col.add(new InvalidCharacterValidator());
		//属性チェック
		col.add(new AttributeValidator());
		//選択項目の値の妥当性チェック
		col.add(new SelectableItemValidator());
		//桁数チェック
		col.add(new LengthValidator());
	}

	/**
	 * 数値系の入力チェックの初期化
	 */
	private void initializeNumberValidating() {

		//数値系のチェックリスト
		InputValidatorCollection col = InputValidationManager.getInstance().getNumberCheckList();
		
		//必須チェック
		col.add(new RequiredValueValidator());
		//属性チェック
		col.add(new AttributeValidator());
		//選択項目の値の妥当性チェック
		col.add(new SelectableItemValidator());
		//桁数チェック
		col.add(new LengthValidator());
		//値の有効範囲チェック
		col.add(new ValidRangeValidator());
	}

	/**
	 * 日時系の入力チェックの初期化
	 */
	private void initializeDateTimeValidating() {
		
		//日時系のチェックリスト
		InputValidatorCollection col = InputValidationManager.getInstance().getDateCheckList();
		
		//必須チェック
		col.add(new RequiredValueValidator());
		//妥当性チェック
		col.add(new DateTimeValidator());
		//システムの有効範囲チェック
		DateTimeValidRangeValidator systemRange = new DateTimeValidRangeValidator();
		DateTimeValidRangeValidator.setMinDate(Timestamp.valueOf("1753-01-01 00:00:00.000"));
		DateTimeValidRangeValidator.setMaxDate(Timestamp.valueOf("9999-12-31 23:59:59.977"));
		col.add(systemRange);
	}
}
