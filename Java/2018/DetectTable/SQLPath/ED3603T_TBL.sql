﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3603T_TBL.sql
-- 物理名：ED3603T_TBL
-- 論理名：入出金内訳テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3603T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3603T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,NYUSHUKKIN_NO  NUMBER(14,0) NOT NULL --「入出金番号」
	,NYUSHUKKIN_NO_BN  CHAR(6) NOT NULL --「入出金番号枝番」
	,NYUSHUKKIN_UCHIWAKE_KBN  CHAR(2) NOT NULL --「入出金内訳区分」
	,NYUSHUKKIN_UCHIWAKE_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「入出金内訳金額」
	,NYSHKKN_UCHWK_ZINK_AMT  NUMBER(13,0) --「入出金内訳税抜金額」
	,NYSHKKN_UCHWK_SHHZI_AMT  NUMBER(13,0) --「入出金内訳消費税金額」
	,RYOSHUSHO_KANRI_NO  CHAR(14) --「領収証管理番号」
	,RYOSHUSHO_HAKKO_KAISU  NUMBER(9,0) --「領収証発行回数」
	,RYOSHUSHO_NO  CHAR(14) --「領収証番号」
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
	,CONSTRAINT ED3603T_PK PRIMARY KEY(
	 NYUSHUKKIN_NO
	,  NYUSHUKKIN_NO_BN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3603T_TBL IS '入出金内訳テーブル'
/

COMMENT ON COLUMN ED3603T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3603T_TBL.NYUSHUKKIN_NO IS '入出金番号'
/
COMMENT ON COLUMN ED3603T_TBL.NYUSHUKKIN_NO_BN IS '入出金番号枝番'
/
COMMENT ON COLUMN ED3603T_TBL.NYUSHUKKIN_UCHIWAKE_KBN IS '入出金内訳区分'
/
COMMENT ON COLUMN ED3603T_TBL.NYUSHUKKIN_UCHIWAKE_AMT IS '入出金内訳金額'
/
COMMENT ON COLUMN ED3603T_TBL.NYSHKKN_UCHWK_ZINK_AMT IS '入出金内訳税抜金額'
/
COMMENT ON COLUMN ED3603T_TBL.NYSHKKN_UCHWK_SHHZI_AMT IS '入出金内訳消費税金額'
/
COMMENT ON COLUMN ED3603T_TBL.RYOSHUSHO_KANRI_NO IS '領収証管理番号'
/
COMMENT ON COLUMN ED3603T_TBL.RYOSHUSHO_HAKKO_KAISU IS '領収証発行回数'
/
COMMENT ON COLUMN ED3603T_TBL.RYOSHUSHO_NO IS '領収証番号'
/
COMMENT ON COLUMN ED3603T_TBL.RONRI_SAKUJO_FLG IS '論理削除フラグ'
/
COMMENT ON COLUMN ED3603T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3603T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3603T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3603T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3603T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3603T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3603T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3603T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3603T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3603T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3603T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3603T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/