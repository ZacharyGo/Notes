﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0455T_TBL.sql
-- 物理名：ED0455T_TBL
-- 論理名：業績ランキング支社営業組織別集計テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0455T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0455T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SHISHA_EIGYO_SOSHIKI_CD  CHAR(6) NOT NULL --「支社営業組織コード」
	,GYOSEKI_RANKING_SHUKEI_YMD  DATE NOT NULL --「業績ランキング集計年月日」
	,KAISHANAI_GYOSEKI_JUN  NUMBER(5,0) DEFAULT '0' NOT NULL --「会社内業績順」
	,ZENKAI_KAISHANAI_GYOSEKI_JUN  NUMBER(5,0) DEFAULT '0' NOT NULL --「前回会社内業績順」
	,TGTS_RIKI_URAG_HSHKN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「当月累計売上報奨金金額」
	,NENDO_RIKI_URAG_HSHKN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「年度累計売上報奨金金額」
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
	,CONSTRAINT ED0455T_PK PRIMARY KEY(
	 SHISHA_EIGYO_SOSHIKI_CD
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0455T_TBL IS '業績ランキング支社営業組織別集計テーブル'
/

COMMENT ON COLUMN ED0455T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0455T_TBL.SHISHA_EIGYO_SOSHIKI_CD IS '支社営業組織コード'
/
COMMENT ON COLUMN ED0455T_TBL.GYOSEKI_RANKING_SHUKEI_YMD IS '業績ランキング集計年月日'
/
COMMENT ON COLUMN ED0455T_TBL.KAISHANAI_GYOSEKI_JUN IS '会社内業績順'
/
COMMENT ON COLUMN ED0455T_TBL.ZENKAI_KAISHANAI_GYOSEKI_JUN IS '前回会社内業績順'
/
COMMENT ON COLUMN ED0455T_TBL.TGTS_RIKI_URAG_HSHKN_AMT IS '当月累計売上報奨金金額'
/
COMMENT ON COLUMN ED0455T_TBL.NENDO_RIKI_URAG_HSHKN_AMT IS '年度累計売上報奨金金額'
/
COMMENT ON COLUMN ED0455T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0455T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0455T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0455T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0455T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0455T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0455T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0455T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0455T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0455T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0455T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0455T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
