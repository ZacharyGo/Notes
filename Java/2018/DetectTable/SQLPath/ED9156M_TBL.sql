﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9156M_TBL.sql
-- 物理名：ED9156M_TBL
-- 論理名：お気に入りメニュー社外利用者マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9156M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9156M_TBL (
	 SHAGAI_RIYOSHA_NO  CHAR(8) NOT NULL --「社外利用者番号」
	,MENU_ID  CHAR(5) NOT NULL --「メニューＩＤ」
	,KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,OKINIIRI_HYJ_JUN  NUMBER(4,0) NOT NULL --「お気に入り表示順」
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
	,CONSTRAINT ED9156M_PK PRIMARY KEY(
	 SHAGAI_RIYOSHA_NO
	,  MENU_ID
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9156M_TBL IS 'お気に入りメニュー社外利用者マスタ'
/

COMMENT ON COLUMN ED9156M_TBL.SHAGAI_RIYOSHA_NO IS '社外利用者番号'
/
COMMENT ON COLUMN ED9156M_TBL.MENU_ID IS 'メニューＩＤ'
/
COMMENT ON COLUMN ED9156M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED9156M_TBL.OKINIIRI_HYJ_JUN IS 'お気に入り表示順'
/
COMMENT ON COLUMN ED9156M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9156M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9156M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9156M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9156M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9156M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9156M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9156M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9156M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9156M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9156M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9156M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/