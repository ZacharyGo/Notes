﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3027M_TBL.sql
-- 物理名：ED3027M_TBL
-- 論理名：回線種別マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3027M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3027M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KAISEN_SHUBETSU_CD  CHAR(3) NOT NULL --「回線種別コード」
	,KAISEN_SHUBETSU_NM  VARCHAR2(60) --「回線種別名称」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,KAISEN_KANRI_KOMOKU_1_NM  VARCHAR2(60) --「回線管理項目１名称」
	,KAISEN_KANRI_KOMOKU_2_NM  VARCHAR2(60) --「回線管理項目２名称」
	,KAISEN_KANRI_KOMOKU_3_NM  VARCHAR2(60) --「回線管理項目３名称」
	,KAISEN_KANRI_KOMOKU_4_NM  VARCHAR2(60) --「回線管理項目４名称」
	,KAISEN_KANRI_KOMOKU_5_NM  VARCHAR2(60) --「回線管理項目５名称」
	,KAISEN_KANRI_KOMOKU_6_NM  VARCHAR2(60) --「回線管理項目６名称」
	,KAISEN_KANRI_KOMOKU_7_NM  VARCHAR2(60) --「回線管理項目７名称」
	,KAISEN_KANRI_KOMOKU_8_NM  VARCHAR2(60) --「回線管理項目８名称」
	,KAISEN_KANRI_KOMOKU_9_NM  VARCHAR2(60) --「回線管理項目９名称」
	,KAISEN_KANRI_KOMOKU_10_NM  VARCHAR2(60) --「回線管理項目１０名称」
	,KAISEN_KANRI_KOMOKU_11_NM  VARCHAR2(60) --「回線管理項目１１名称」
	,KAISEN_KANRI_KOMOKU_12_NM  VARCHAR2(60) --「回線管理項目１２名称」
	,KAISEN_KANRI_KOMOKU_13_NM  VARCHAR2(60) --「回線管理項目１３名称」
	,KAISEN_KANRI_KOMOKU_14_NM  VARCHAR2(60) --「回線管理項目１４名称」
	,KAISEN_KANRI_KOMOKU_15_NM  VARCHAR2(60) --「回線管理項目１５名称」
	,KAISEN_KANRI_KOMOKU_16_NM  VARCHAR2(60) --「回線管理項目１６名称」
	,KAISEN_KANRI_KOMOKU_17_NM  VARCHAR2(60) --「回線管理項目１７名称」
	,KAISEN_KANRI_KOMOKU_18_NM  VARCHAR2(60) --「回線管理項目１８名称」
	,KAISEN_KANRI_KOMOKU_19_NM  VARCHAR2(60) --「回線管理項目１９名称」
	,KAISEN_KANRI_KOMOKU_20_NM  VARCHAR2(60) --「回線管理項目２０名称」
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
	,CONSTRAINT ED3027M_PK PRIMARY KEY(
	 KAISEN_SHUBETSU_CD
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3027M_TBL IS '回線種別マスタ'
/

COMMENT ON COLUMN ED3027M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3027M_TBL.KAISEN_SHUBETSU_CD IS '回線種別コード'
/
COMMENT ON COLUMN ED3027M_TBL.KAISEN_SHUBETSU_NM IS '回線種別名称'
/
COMMENT ON COLUMN ED3027M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED3027M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED3027M_TBL.KAISEN_KANRI_KOMOKU_1_NM IS '回線管理項目１名称'
/
COMMENT ON COLUMN ED3027M_TBL.KAISEN_KANRI_KOMOKU_2_NM IS '回線管理項目２名称'
/
COMMENT ON COLUMN ED3027M_TBL.KAISEN_KANRI_KOMOKU_3_NM IS '回線管理項目３名称'
/
COMMENT ON COLUMN ED3027M_TBL.KAISEN_KANRI_KOMOKU_4_NM IS '回線管理項目４名称'
/
COMMENT ON COLUMN ED3027M_TBL.KAISEN_KANRI_KOMOKU_5_NM IS '回線管理項目５名称'
/
COMMENT ON COLUMN ED3027M_TBL.KAISEN_KANRI_KOMOKU_6_NM IS '回線管理項目６名称'
/
COMMENT ON COLUMN ED3027M_TBL.KAISEN_KANRI_KOMOKU_7_NM IS '回線管理項目７名称'
/
COMMENT ON COLUMN ED3027M_TBL.KAISEN_KANRI_KOMOKU_8_NM IS '回線管理項目８名称'
/
COMMENT ON COLUMN ED3027M_TBL.KAISEN_KANRI_KOMOKU_9_NM IS '回線管理項目９名称'
/
COMMENT ON COLUMN ED3027M_TBL.KAISEN_KANRI_KOMOKU_10_NM IS '回線管理項目１０名称'
/
COMMENT ON COLUMN ED3027M_TBL.KAISEN_KANRI_KOMOKU_11_NM IS '回線管理項目１１名称'
/
COMMENT ON COLUMN ED3027M_TBL.KAISEN_KANRI_KOMOKU_12_NM IS '回線管理項目１２名称'
/
COMMENT ON COLUMN ED3027M_TBL.KAISEN_KANRI_KOMOKU_13_NM IS '回線管理項目１３名称'
/
COMMENT ON COLUMN ED3027M_TBL.KAISEN_KANRI_KOMOKU_14_NM IS '回線管理項目１４名称'
/
COMMENT ON COLUMN ED3027M_TBL.KAISEN_KANRI_KOMOKU_15_NM IS '回線管理項目１５名称'
/
COMMENT ON COLUMN ED3027M_TBL.KAISEN_KANRI_KOMOKU_16_NM IS '回線管理項目１６名称'
/
COMMENT ON COLUMN ED3027M_TBL.KAISEN_KANRI_KOMOKU_17_NM IS '回線管理項目１７名称'
/
COMMENT ON COLUMN ED3027M_TBL.KAISEN_KANRI_KOMOKU_18_NM IS '回線管理項目１８名称'
/
COMMENT ON COLUMN ED3027M_TBL.KAISEN_KANRI_KOMOKU_19_NM IS '回線管理項目１９名称'
/
COMMENT ON COLUMN ED3027M_TBL.KAISEN_KANRI_KOMOKU_20_NM IS '回線管理項目２０名称'
/
COMMENT ON COLUMN ED3027M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3027M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3027M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3027M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3027M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3027M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3027M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3027M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3027M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3027M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3027M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3027M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
