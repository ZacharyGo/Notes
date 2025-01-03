﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3509T_TBL.sql
-- 物理名：ED3509T_TBL
-- 論理名：任意請求書明細テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3509T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3509T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,NINI_SEIKYUSHO_ID  CHAR(14) NOT NULL --「任意請求書ＩＤ」
	,SEIKYUSHO_MEISAI_SN  CHAR(14) NOT NULL --「請求書明細連番」
	,SEIKYUSHO_MEISAI_TEKIYO  VARCHAR2(62) --「請求書明細摘要」
	,SEIKYUSHO_MEISAI_BIKO  VARCHAR2(54) --「請求書明細備考」
	,SEIKYUSHO_MEISAI_SURYO  NUMBER(9,0) --「請求書明細数量」
	,SEIKYUSHO_MEISAI_TANI_NM  VARCHAR2(4) --「請求書明細単位名称」
	,SEIKYUSHO_MEISAI_TANKA_AMT  NUMBER(13,0) --「請求書明細単価金額」
	,ZEINUKI_SEIKYU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「税抜請求金額」
	,SHOHIZEI_KBN  CHAR(1) NOT NULL --「消費税区分」
	,SHOHI_ZEIRITSU_CD  CHAR(2) --「消費税率コード」
	,SHOHIZEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「消費税金額」
	,ZEIKOMI_SEIKYU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「税込請求金額」
	,CHOSEIGO_SHOHIZEI_AMT  NUMBER(13,0) --「調整後消費税金額」
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
	,CONSTRAINT ED3509T_PK PRIMARY KEY(
	 NINI_SEIKYUSHO_ID
	,  SEIKYUSHO_MEISAI_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3509T_TBL IS '任意請求書明細テーブル'
/

COMMENT ON COLUMN ED3509T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3509T_TBL.NINI_SEIKYUSHO_ID IS '任意請求書ＩＤ'
/
COMMENT ON COLUMN ED3509T_TBL.SEIKYUSHO_MEISAI_SN IS '請求書明細連番'
/
COMMENT ON COLUMN ED3509T_TBL.SEIKYUSHO_MEISAI_TEKIYO IS '請求書明細摘要'
/
COMMENT ON COLUMN ED3509T_TBL.SEIKYUSHO_MEISAI_BIKO IS '請求書明細備考'
/
COMMENT ON COLUMN ED3509T_TBL.SEIKYUSHO_MEISAI_SURYO IS '請求書明細数量'
/
COMMENT ON COLUMN ED3509T_TBL.SEIKYUSHO_MEISAI_TANI_NM IS '請求書明細単位名称'
/
COMMENT ON COLUMN ED3509T_TBL.SEIKYUSHO_MEISAI_TANKA_AMT IS '請求書明細単価金額'
/
COMMENT ON COLUMN ED3509T_TBL.ZEINUKI_SEIKYU_AMT IS '税抜請求金額'
/
COMMENT ON COLUMN ED3509T_TBL.SHOHIZEI_KBN IS '消費税区分'
/
COMMENT ON COLUMN ED3509T_TBL.SHOHI_ZEIRITSU_CD IS '消費税率コード'
/
COMMENT ON COLUMN ED3509T_TBL.SHOHIZEI_AMT IS '消費税金額'
/
COMMENT ON COLUMN ED3509T_TBL.ZEIKOMI_SEIKYU_AMT IS '税込請求金額'
/
COMMENT ON COLUMN ED3509T_TBL.CHOSEIGO_SHOHIZEI_AMT IS '調整後消費税金額'
/
COMMENT ON COLUMN ED3509T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3509T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3509T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3509T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3509T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3509T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3509T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3509T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3509T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3509T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3509T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3509T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
