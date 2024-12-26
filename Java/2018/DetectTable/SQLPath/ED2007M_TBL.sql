﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED2007M_TBL.sql
-- 物理名：ED2007M_TBL
-- 論理名：セット品構成マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED2007M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED2007M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,HIMMEI_CD  CHAR(8) NOT NULL --「品名コード」
	,KOSEIHIN_SN  CHAR(14) NOT NULL --「構成品連番」
	,KOSEIHIN_HIMMEI_CD  CHAR(8) NOT NULL --「構成品品名コード」
	,KOSEIHIN_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「構成品数量」
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
	,CONSTRAINT ED2007M_PK PRIMARY KEY(
	 HIMMEI_CD
	,  KOSEIHIN_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED2007M_TBL IS 'セット品構成マスタ'
/

COMMENT ON COLUMN ED2007M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED2007M_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED2007M_TBL.KOSEIHIN_SN IS '構成品連番'
/
COMMENT ON COLUMN ED2007M_TBL.KOSEIHIN_HIMMEI_CD IS '構成品品名コード'
/
COMMENT ON COLUMN ED2007M_TBL.KOSEIHIN_SURYO IS '構成品数量'
/
COMMENT ON COLUMN ED2007M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED2007M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED2007M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED2007M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED2007M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED2007M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED2007M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED2007M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED2007M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED2007M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED2007M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED2007M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/