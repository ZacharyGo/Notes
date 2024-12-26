﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3622T_TBL.sql
-- 物理名：ED3622T_TBL
-- 論理名：請求委託請求書テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3622T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3622T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SEIKYU_ITAKU_NO  CHAR(9) NOT NULL --「請求委託番号」
	,SEIKYU_ITAKU_SEIKYUSHO_NO  CHAR(14) NOT NULL --「請求委託請求書番号」
	,SEIKYUSHO_TEMPLATE_NO  CHAR(14) --「請求書テンプレート番号」
	,RONRI_SAKUJO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「論理削除フラグ」
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
	,CONSTRAINT ED3622T_PK PRIMARY KEY(
	 SEIKYU_ITAKU_NO
	,  SEIKYU_ITAKU_SEIKYUSHO_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3622T_TBL IS '請求委託請求書テーブル'
/

COMMENT ON COLUMN ED3622T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3622T_TBL.SEIKYU_ITAKU_NO IS '請求委託番号'
/
COMMENT ON COLUMN ED3622T_TBL.SEIKYU_ITAKU_SEIKYUSHO_NO IS '請求委託請求書番号'
/
COMMENT ON COLUMN ED3622T_TBL.SEIKYUSHO_TEMPLATE_NO IS '請求書テンプレート番号'
/
COMMENT ON COLUMN ED3622T_TBL.RONRI_SAKUJO_FLG IS '論理削除フラグ'
/
COMMENT ON COLUMN ED3622T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3622T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3622T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3622T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3622T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3622T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3622T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3622T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3622T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3622T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3622T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3622T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
