﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9028M_TBL.sql
-- 物理名：ED9028M_TBL
-- 論理名：市区町村マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9028M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9028M_TBL (
	 TODOFUKEN_CD  CHAR(2) NOT NULL --「都道府県コード」
	,SHIKUCHOSON_CD  CHAR(3) NOT NULL --「市区町村コード」
	,TODOFUKEN_NM  VARCHAR2(4) --「都道府県名称」
	,TODOFUKEN_HKN_NM  VARCHAR2(8) --「都道府県半角カナ名称」
	,TODOFUKEN_KN_NM  VARCHAR2(8) --「都道府県カナ名称」
	,SHIKUCHOSON_NM  VARCHAR2(17) --「市区町村名称」
	,SHIKUCHOSON_HKN_NM  VARCHAR2(29) --「市区町村半角カナ名称」
	,SHIKUCHOSON_KN_NM  VARCHAR2(29) --「市区町村カナ名称」
	,SHIKUCHOSON_HAISHI_YM  CHAR(6) --「市区町村廃止年月」
	,SHIKUCHOSON_SHIKO_YM  CHAR(6) --「市区町村施行年月」
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
	,CONSTRAINT ED9028M_PK PRIMARY KEY(
	 TODOFUKEN_CD
	,  SHIKUCHOSON_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9028M_TBL IS '市区町村マスタ'
/

COMMENT ON COLUMN ED9028M_TBL.TODOFUKEN_CD IS '都道府県コード'
/
COMMENT ON COLUMN ED9028M_TBL.SHIKUCHOSON_CD IS '市区町村コード'
/
COMMENT ON COLUMN ED9028M_TBL.TODOFUKEN_NM IS '都道府県名称'
/
COMMENT ON COLUMN ED9028M_TBL.TODOFUKEN_HKN_NM IS '都道府県半角カナ名称'
/
COMMENT ON COLUMN ED9028M_TBL.TODOFUKEN_KN_NM IS '都道府県カナ名称'
/
COMMENT ON COLUMN ED9028M_TBL.SHIKUCHOSON_NM IS '市区町村名称'
/
COMMENT ON COLUMN ED9028M_TBL.SHIKUCHOSON_HKN_NM IS '市区町村半角カナ名称'
/
COMMENT ON COLUMN ED9028M_TBL.SHIKUCHOSON_KN_NM IS '市区町村カナ名称'
/
COMMENT ON COLUMN ED9028M_TBL.SHIKUCHOSON_HAISHI_YM IS '市区町村廃止年月'
/
COMMENT ON COLUMN ED9028M_TBL.SHIKUCHOSON_SHIKO_YM IS '市区町村施行年月'
/
COMMENT ON COLUMN ED9028M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9028M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9028M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9028M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9028M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9028M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9028M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9028M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9028M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9028M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9028M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9028M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/