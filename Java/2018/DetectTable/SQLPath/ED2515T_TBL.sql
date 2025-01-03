﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED2515T_TBL.sql
-- 物理名：ED2515T_TBL
-- 論理名：ＡＥＤ変更記録テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED2515T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED2515T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,AED_KANRI_NO  CHAR(8) NOT NULL --「ＡＥＤ管理番号」
	,AED_HENKO_KIROKU_SN  CHAR(14) NOT NULL --「ＡＥＤ変更記録連番」
	,AED_HENKO_KIROKU_NAIYO  VARCHAR2(150) --「ＡＥＤ変更記録内容」
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
	,CONSTRAINT ED2515T_PK PRIMARY KEY(
	 AED_KANRI_NO
	,  AED_HENKO_KIROKU_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED2515T_TBL IS 'ＡＥＤ変更記録テーブル'
/

COMMENT ON COLUMN ED2515T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED2515T_TBL.AED_KANRI_NO IS 'ＡＥＤ管理番号'
/
COMMENT ON COLUMN ED2515T_TBL.AED_HENKO_KIROKU_SN IS 'ＡＥＤ変更記録連番'
/
COMMENT ON COLUMN ED2515T_TBL.AED_HENKO_KIROKU_NAIYO IS 'ＡＥＤ変更記録内容'
/
COMMENT ON COLUMN ED2515T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED2515T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED2515T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED2515T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED2515T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED2515T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED2515T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED2515T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED2515T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED2515T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED2515T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED2515T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
