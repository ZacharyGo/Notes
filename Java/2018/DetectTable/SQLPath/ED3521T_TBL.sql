﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3521T_TBL.sql
-- 物理名：ED3521T_TBL
-- 論理名：綜管防災単価請求明細紐付テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3521T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3521T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) NOT NULL --「受注契約変更番号」
	,SOKAN_BOSAI_TANKA_SN  CHAR(14) NOT NULL --「綜管防災単価連番」
	,SEIKYU_TAISHO_YM  CHAR(6) NOT NULL --「請求対象年月」
	,SEIKYU_KANRI_MEISAI_NO  CHAR(14) --「請求管理明細番号」
	,ZEINUKI_SEIKYU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「税抜請求金額」
	,JISSHI_KAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「実施回数」
	,SHUKI_KAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「周期回数」
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
	,CONSTRAINT ED3521T_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  JUCHU_KEIYAKU_HENKO_NO
	,  SOKAN_BOSAI_TANKA_SN
	,  SEIKYU_TAISHO_YM
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3521T_TBL IS '綜管防災単価請求明細紐付テーブル'
/

COMMENT ON COLUMN ED3521T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3521T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED3521T_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED3521T_TBL.SOKAN_BOSAI_TANKA_SN IS '綜管防災単価連番'
/
COMMENT ON COLUMN ED3521T_TBL.SEIKYU_TAISHO_YM IS '請求対象年月'
/
COMMENT ON COLUMN ED3521T_TBL.SEIKYU_KANRI_MEISAI_NO IS '請求管理明細番号'
/
COMMENT ON COLUMN ED3521T_TBL.ZEINUKI_SEIKYU_AMT IS '税抜請求金額'
/
COMMENT ON COLUMN ED3521T_TBL.JISSHI_KAISU IS '実施回数'
/
COMMENT ON COLUMN ED3521T_TBL.SHUKI_KAISU IS '周期回数'
/
COMMENT ON COLUMN ED3521T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3521T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3521T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3521T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3521T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3521T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3521T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3521T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3521T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3521T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3521T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3521T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
