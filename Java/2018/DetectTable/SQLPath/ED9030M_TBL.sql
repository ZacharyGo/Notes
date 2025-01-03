﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9030M_TBL.sql
-- 物理名：ED9030M_TBL
-- 論理名：業務カレンダマスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9030M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9030M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,TAISHO_YMD  DATE NOT NULL --「対象年月日」
	,KINYU_KIKAN_KYUJITSU_FLG  CHAR(1) DEFAULT '0' NOT NULL --「金融機関休日フラグ」
	,JISHA_KYUJITSU_FLG_1  CHAR(1) DEFAULT '0' NOT NULL --「自社休日フラグ１」
	,JISHA_KYUJITSU_FLG_2  CHAR(1) DEFAULT '0' NOT NULL --「自社休日フラグ２」
	,SOGO_JIMUBU_KYUJITSU_FLG  CHAR(1) DEFAULT '0' NOT NULL --「総合事務部休日フラグ」
	,SHIHARAI_KANOBI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「支払可能日フラグ」
	,SIKY_DIK_SHHRI_KMB_FLG  CHAR(1) DEFAULT '0' NOT NULL --「請求代行支払可能日フラグ」
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
	,CONSTRAINT ED9030M_PK PRIMARY KEY(
	 TAISHO_YMD
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9030M_TBL IS '業務カレンダマスタ'
/

COMMENT ON COLUMN ED9030M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED9030M_TBL.TAISHO_YMD IS '対象年月日'
/
COMMENT ON COLUMN ED9030M_TBL.KINYU_KIKAN_KYUJITSU_FLG IS '金融機関休日フラグ'
/
COMMENT ON COLUMN ED9030M_TBL.JISHA_KYUJITSU_FLG_1 IS '自社休日フラグ１'
/
COMMENT ON COLUMN ED9030M_TBL.JISHA_KYUJITSU_FLG_2 IS '自社休日フラグ２'
/
COMMENT ON COLUMN ED9030M_TBL.SOGO_JIMUBU_KYUJITSU_FLG IS '総合事務部休日フラグ'
/
COMMENT ON COLUMN ED9030M_TBL.SHIHARAI_KANOBI_FLG IS '支払可能日フラグ'
/
COMMENT ON COLUMN ED9030M_TBL.SIKY_DIK_SHHRI_KMB_FLG IS '請求代行支払可能日フラグ'
/
COMMENT ON COLUMN ED9030M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9030M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9030M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9030M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9030M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9030M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9030M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9030M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9030M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9030M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9030M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9030M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
