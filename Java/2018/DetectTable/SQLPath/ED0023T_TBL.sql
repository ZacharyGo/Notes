﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0023T_TBL.sql
-- 物理名：ED0023T_TBL
-- 論理名：本社支援テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0023T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0023T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,HONSHA_SHIEN_CD  CHAR(11) NOT NULL --「本社支援コード」
	,HONSHA_SHIEN_NM  VARCHAR2(30) NOT NULL --「本社支援名称」
	,HONSHA_SHIEN_JIGYOSHO_CD  CHAR(6) NOT NULL --「本社支援事業所コード」
	,HONSHA_SHIEN_TANTO_SHAIN_NO  VARCHAR2(8) NOT NULL --「本社支援担当社員番号」
	,HONSHA_SHIEN_TOROKU_YMD  DATE NOT NULL --「本社支援登録年月日」
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
	,CONSTRAINT ED0023T_PK PRIMARY KEY(
	 HONSHA_SHIEN_CD
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0023T_TBL IS '本社支援テーブル'
/

COMMENT ON COLUMN ED0023T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0023T_TBL.HONSHA_SHIEN_CD IS '本社支援コード'
/
COMMENT ON COLUMN ED0023T_TBL.HONSHA_SHIEN_NM IS '本社支援名称'
/
COMMENT ON COLUMN ED0023T_TBL.HONSHA_SHIEN_JIGYOSHO_CD IS '本社支援事業所コード'
/
COMMENT ON COLUMN ED0023T_TBL.HONSHA_SHIEN_TANTO_SHAIN_NO IS '本社支援担当社員番号'
/
COMMENT ON COLUMN ED0023T_TBL.HONSHA_SHIEN_TOROKU_YMD IS '本社支援登録年月日'
/
COMMENT ON COLUMN ED0023T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0023T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0023T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0023T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0023T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0023T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0023T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0023T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0023T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0023T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0023T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0023T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
