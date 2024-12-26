﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3005T_TBL.sql
-- 物理名：ED3005T_TBL
-- 論理名：保全実務確認添付写真テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3005T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3005T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,HOZEN_DEMPYO_NO  CHAR(15) NOT NULL --「保全伝票番号」
	,TEMPU_SHASHIN_SN  NUMBER(14,0) DEFAULT '0' NOT NULL --「添付写真連番」
	,FILE_SHIKIBETSU_KEY  VARCHAR2(255) --「ファイル識別キー」
	,TEMPU_SHASHIN_FILE_NM  VARCHAR2(255) --「添付写真ファイル名称」
	,TMP_SHSHN_FILE_STSMI_NAIYO  VARCHAR2(100) --「添付写真ファイル説明内容」
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
	,CONSTRAINT ED3005T_PK PRIMARY KEY(
	 HOZEN_DEMPYO_NO
	,  TEMPU_SHASHIN_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3005T_TBL IS '保全実務確認添付写真テーブル'
/

COMMENT ON COLUMN ED3005T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3005T_TBL.HOZEN_DEMPYO_NO IS '保全伝票番号'
/
COMMENT ON COLUMN ED3005T_TBL.TEMPU_SHASHIN_SN IS '添付写真連番'
/
COMMENT ON COLUMN ED3005T_TBL.FILE_SHIKIBETSU_KEY IS 'ファイル識別キー'
/
COMMENT ON COLUMN ED3005T_TBL.TEMPU_SHASHIN_FILE_NM IS '添付写真ファイル名称'
/
COMMENT ON COLUMN ED3005T_TBL.TMP_SHSHN_FILE_STSMI_NAIYO IS '添付写真ファイル説明内容'
/
COMMENT ON COLUMN ED3005T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3005T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3005T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3005T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3005T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3005T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3005T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3005T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3005T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3005T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3005T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3005T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/