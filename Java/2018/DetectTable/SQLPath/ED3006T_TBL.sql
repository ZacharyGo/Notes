﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3006T_TBL.sql
-- 物理名：ED3006T_TBL
-- 論理名：保全実施担当者テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3006T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3006T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,HOZEN_DEMPYO_NO  CHAR(15) NOT NULL --「保全伝票番号」
	,HOZEN_JISSHI_TANTOSHA_SHAIN_NO  VARCHAR2(8) NOT NULL --「保全実施担当者社員番号」
	,HYOJI_JUN  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順」
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
	,CONSTRAINT ED3006T_PK PRIMARY KEY(
	 HOZEN_DEMPYO_NO
	,  HOZEN_JISSHI_TANTOSHA_SHAIN_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3006T_TBL IS '保全実施担当者テーブル'
/

COMMENT ON COLUMN ED3006T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3006T_TBL.HOZEN_DEMPYO_NO IS '保全伝票番号'
/
COMMENT ON COLUMN ED3006T_TBL.HOZEN_JISSHI_TANTOSHA_SHAIN_NO IS '保全実施担当者社員番号'
/
COMMENT ON COLUMN ED3006T_TBL.HYOJI_JUN IS '表示順'
/
COMMENT ON COLUMN ED3006T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3006T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3006T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3006T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3006T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3006T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3006T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3006T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3006T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3006T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3006T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3006T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/