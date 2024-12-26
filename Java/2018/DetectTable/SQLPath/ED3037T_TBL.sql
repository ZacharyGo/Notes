﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3037T_TBL.sql
-- 物理名：ED3037T_TBL
-- 論理名：定期保全年間計画テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3037T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3037T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KI_NO  NUMBER(3,0) NOT NULL --「期番号」
	,JOI_JIGYOSHO_CD  CHAR(6) NOT NULL --「上位事業所コード」
	,NNKN_KIKK_SKSI_JKY_KBN  CHAR(1) NOT NULL --「年間計画作成状況区分」
	,SHINSEI_SHONIN_NO  CHAR(14) --「申請承認番号」
	,TIK_HZN_NNKN_KIKK_HNS_KKNN_FLG  CHAR(1) DEFAULT '0' NOT NULL --「定期保全年間計画本社確認フラグ」
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
	,CONSTRAINT ED3037T_PK PRIMARY KEY(
	 KI_NO
	,  JOI_JIGYOSHO_CD
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3037T_TBL IS '定期保全年間計画テーブル'
/

COMMENT ON COLUMN ED3037T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3037T_TBL.KI_NO IS '期番号'
/
COMMENT ON COLUMN ED3037T_TBL.JOI_JIGYOSHO_CD IS '上位事業所コード'
/
COMMENT ON COLUMN ED3037T_TBL.NNKN_KIKK_SKSI_JKY_KBN IS '年間計画作成状況区分'
/
COMMENT ON COLUMN ED3037T_TBL.SHINSEI_SHONIN_NO IS '申請承認番号'
/
COMMENT ON COLUMN ED3037T_TBL.TIK_HZN_NNKN_KIKK_HNS_KKNN_FLG IS '定期保全年間計画本社確認フラグ'
/
COMMENT ON COLUMN ED3037T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3037T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3037T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3037T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3037T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3037T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3037T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3037T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3037T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3037T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3037T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3037T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
