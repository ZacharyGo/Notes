﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0017T_TBL.sql
-- 物理名：ED0017T_TBL
-- 論理名：本社報告テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0017T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0017T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,ANKEN_NO  CHAR(13) NOT NULL --「案件番号」
	,HONSHA_HOKOKU_BUNRUI_CD  CHAR(10) NOT NULL --「本社報告分類コード」
	,HYOJI_JUN  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順」
	,HONSHA_HOKOKU_NAIYO_1  VARCHAR2(100) --「本社報告内容１」
	,HONSHA_HOKOKU_NAIYO_2  VARCHAR2(100) --「本社報告内容２」
	,HONSHA_HOKOKU_NAIYO_3  VARCHAR2(100) --「本社報告内容３」
	,HONSHA_HOKOKU_NAIYO_4  VARCHAR2(100) --「本社報告内容４」
	,HONSHA_HOKOKU_NAIYO_5  VARCHAR2(100) --「本社報告内容５」
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
	,CONSTRAINT ED0017T_PK PRIMARY KEY(
	 ANKEN_NO
	,  HONSHA_HOKOKU_BUNRUI_CD
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0017T_TBL IS '本社報告テーブル'
/

COMMENT ON COLUMN ED0017T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0017T_TBL.ANKEN_NO IS '案件番号'
/
COMMENT ON COLUMN ED0017T_TBL.HONSHA_HOKOKU_BUNRUI_CD IS '本社報告分類コード'
/
COMMENT ON COLUMN ED0017T_TBL.HYOJI_JUN IS '表示順'
/
COMMENT ON COLUMN ED0017T_TBL.HONSHA_HOKOKU_NAIYO_1 IS '本社報告内容１'
/
COMMENT ON COLUMN ED0017T_TBL.HONSHA_HOKOKU_NAIYO_2 IS '本社報告内容２'
/
COMMENT ON COLUMN ED0017T_TBL.HONSHA_HOKOKU_NAIYO_3 IS '本社報告内容３'
/
COMMENT ON COLUMN ED0017T_TBL.HONSHA_HOKOKU_NAIYO_4 IS '本社報告内容４'
/
COMMENT ON COLUMN ED0017T_TBL.HONSHA_HOKOKU_NAIYO_5 IS '本社報告内容５'
/
COMMENT ON COLUMN ED0017T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0017T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0017T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0017T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0017T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0017T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0017T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0017T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0017T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0017T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0017T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0017T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
