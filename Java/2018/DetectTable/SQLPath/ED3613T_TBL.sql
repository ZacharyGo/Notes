﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3613T_TBL.sql
-- 物理名：ED3613T_TBL
-- 論理名：請求委託管理テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3613T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3613T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SEIKYU_ITAKU_NO  CHAR(9) NOT NULL --「請求委託番号」
	,SEIKYU_ITAKU_STATUS_KBN  CHAR(1) NOT NULL --「請求委託ステータス区分」
	,NYUKIN_KESSAI_DAIKO_KAISHA_CD  CHAR(8) NOT NULL --「入金決済代行会社コード」
	,HIKIOTOSHI_YM  CHAR(6) --「引落年月」
	,KZ_FRKE_SIKY_ITK_KEKKA_KBN  CHAR(1) --「口座振替請求委託結果区分」
	,CREDIT_SEIKYU_ITAKU_KEKKA_KBN  CHAR(1) --「クレジット請求委託結果区分」
	,SEIKYU_ITAKU_SAKUSEI_ID  CHAR(8) --「請求委託作成ＩＤ」
	,SEIKYU_ITAKU_TORIKOMI_NO  CHAR(8) --「請求委託取込番号」
	,REGST_TMSTMP  TIMESTAMP --「登録タイムスタンプ」
	,REGSTR_CO_CD  CHAR(5) --「登録者会社コード」
	,REGSTR_SOSHIKI_CD  VARCHAR2(6) --「登録者組織コード」
	,REGSTR_EMP_NO  VARCHAR2(8) --「登録者社員番号」
	,REGST_GAMEN_ID  CHAR(15) --「登録画面ＩＤ」
	,REGST_PGM_ID  VARCHAR2(255) --「登録プログラムＩＤ」
	,UPD_TMSTMP  TIMESTAMP --「更新タイムスタンプ」
	,UPDTR_CO_CD  CHAR(5) --「更新者会社コード」
	,UPDTR_SOSHIKI_CD  VARCHAR2(6) --「更新者組織コード」
	,UPDTR_EMP_NO  VARCHAR2(8) --「更新者社員番号」
	,UPD_GAMEN_ID  CHAR(15) --「更新画面ＩＤ」
	,UPD_PGM_ID  VARCHAR2(255) --「更新プログラムＩＤ」
	,CONSTRAINT ED3613T_PK PRIMARY KEY(
	 SEIKYU_ITAKU_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3613T_TBL IS '請求委託管理テーブル'
/

COMMENT ON COLUMN ED3613T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3613T_TBL.SEIKYU_ITAKU_NO IS '請求委託番号'
/
COMMENT ON COLUMN ED3613T_TBL.SEIKYU_ITAKU_STATUS_KBN IS '請求委託ステータス区分'
/
COMMENT ON COLUMN ED3613T_TBL.NYUKIN_KESSAI_DAIKO_KAISHA_CD IS '入金決済代行会社コード'
/
COMMENT ON COLUMN ED3613T_TBL.HIKIOTOSHI_YM IS '引落年月'
/
COMMENT ON COLUMN ED3613T_TBL.KZ_FRKE_SIKY_ITK_KEKKA_KBN IS '口座振替請求委託結果区分'
/
COMMENT ON COLUMN ED3613T_TBL.CREDIT_SEIKYU_ITAKU_KEKKA_KBN IS 'クレジット請求委託結果区分'
/
COMMENT ON COLUMN ED3613T_TBL.SEIKYU_ITAKU_SAKUSEI_ID IS '請求委託作成ＩＤ'
/
COMMENT ON COLUMN ED3613T_TBL.SEIKYU_ITAKU_TORIKOMI_NO IS '請求委託取込番号'
/
COMMENT ON COLUMN ED3613T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3613T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3613T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3613T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3613T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3613T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3613T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3613T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3613T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3613T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3613T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3613T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
