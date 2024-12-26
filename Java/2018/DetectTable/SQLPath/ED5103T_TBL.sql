﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED5103T_TBL.sql
-- 物理名：ED5103T_TBL
-- 論理名：ＮＢ警送従量分作成状況テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED5103T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED5103T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,NB_KEISO_JURYOBUN_TAISHO_YM  CHAR(6) NOT NULL --「ＮＢ警送従量分対象年月」
	,NB_KIS_JRYBN_SKSI_JKY_KBN  CHAR(1) NOT NULL --「ＮＢ警送従量分作成状況区分」
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
	,CONSTRAINT ED5103T_PK PRIMARY KEY(
	 NB_KEISO_JURYOBUN_TAISHO_YM
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED5103T_TBL IS 'ＮＢ警送従量分作成状況テーブル'
/

COMMENT ON COLUMN ED5103T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED5103T_TBL.NB_KEISO_JURYOBUN_TAISHO_YM IS 'ＮＢ警送従量分対象年月'
/
COMMENT ON COLUMN ED5103T_TBL.NB_KIS_JRYBN_SKSI_JKY_KBN IS 'ＮＢ警送従量分作成状況区分'
/
COMMENT ON COLUMN ED5103T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED5103T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED5103T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED5103T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED5103T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED5103T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED5103T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED5103T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED5103T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED5103T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED5103T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED5103T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
