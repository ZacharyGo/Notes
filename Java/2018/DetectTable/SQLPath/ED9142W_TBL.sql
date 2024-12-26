﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9142W_TBL.sql
-- 物理名：ED9142W_TBL
-- 論理名：社員配置先マスタＩＦファイルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9142W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9142W_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SHAIN_NO  VARCHAR2(8) NOT NULL --「社員番号」
	,KEMMU_KBN  CHAR(1) NOT NULL --「兼務区分」
	,HAICHISAKI_CD  VARCHAR2(6) NOT NULL --「配置先コード」
	,HAICHI_HATSUREI_YMD  DATE --「配置発令年月日」
	,HAICHI_SHURYO_YMD  DATE --「配置終了年月日」
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
	,CONSTRAINT ED9142W_PK PRIMARY KEY(
	 SHAIN_NO
	,  KEMMU_KBN
	,  HAICHISAKI_CD
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9142W_TBL IS '社員配置先マスタＩＦファイルワーク'
/

COMMENT ON COLUMN ED9142W_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED9142W_TBL.SHAIN_NO IS '社員番号'
/
COMMENT ON COLUMN ED9142W_TBL.KEMMU_KBN IS '兼務区分'
/
COMMENT ON COLUMN ED9142W_TBL.HAICHISAKI_CD IS '配置先コード'
/
COMMENT ON COLUMN ED9142W_TBL.HAICHI_HATSUREI_YMD IS '配置発令年月日'
/
COMMENT ON COLUMN ED9142W_TBL.HAICHI_SHURYO_YMD IS '配置終了年月日'
/
COMMENT ON COLUMN ED9142W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9142W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9142W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9142W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9142W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9142W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9142W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9142W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9142W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9142W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9142W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9142W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/