﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0658T_TBL.sql
-- 物理名：ED0658T_TBL
-- 論理名：契約緊急地震速報受信機接続装置テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0658T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0658T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KEIYAKU_ID  CHAR(18) NOT NULL --「契約ＩＤ」
	,KNKY_JSHN_SKH_JSK_STZKSC_SN  CHAR(14) NOT NULL --「緊急地震速報受信機接続装置連番」
	,JUSHINKI_SETTEN_NO  NUMBER(9,0) DEFAULT '0' NOT NULL --「受信機接点番号」
	,SETSUZOKU_SOCHI_HIMMEI_CD  CHAR(8) --「接続装置品名コード」
	,JUSHINKI_SETTEI_NAIYO_1  VARCHAR2(100) --「受信機設定内容１」
	,JUSHINKI_SETTEI_NAIYO_2  VARCHAR2(100) --「受信機設定内容２」
	,JUSHINKI_SETTEI_NAIYO_3  VARCHAR2(100) --「受信機設定内容３」
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
	,CONSTRAINT ED0658T_PK PRIMARY KEY(
	 KEIYAKU_ID
	,  KNKY_JSHN_SKH_JSK_STZKSC_SN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0658T_TBL IS '契約緊急地震速報受信機接続装置テーブル'
/

COMMENT ON COLUMN ED0658T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0658T_TBL.KEIYAKU_ID IS '契約ＩＤ'
/
COMMENT ON COLUMN ED0658T_TBL.KNKY_JSHN_SKH_JSK_STZKSC_SN IS '緊急地震速報受信機接続装置連番'
/
COMMENT ON COLUMN ED0658T_TBL.JUSHINKI_SETTEN_NO IS '受信機接点番号'
/
COMMENT ON COLUMN ED0658T_TBL.SETSUZOKU_SOCHI_HIMMEI_CD IS '接続装置品名コード'
/
COMMENT ON COLUMN ED0658T_TBL.JUSHINKI_SETTEI_NAIYO_1 IS '受信機設定内容１'
/
COMMENT ON COLUMN ED0658T_TBL.JUSHINKI_SETTEI_NAIYO_2 IS '受信機設定内容２'
/
COMMENT ON COLUMN ED0658T_TBL.JUSHINKI_SETTEI_NAIYO_3 IS '受信機設定内容３'
/
COMMENT ON COLUMN ED0658T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0658T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0658T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0658T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0658T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0658T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0658T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0658T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0658T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0658T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0658T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0658T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/