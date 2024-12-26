﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED2004M_TBL.sql
-- 物理名：ED2004M_TBL
-- 論理名：品名修理情報マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED2004M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED2004M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,HIMMEI_CD  CHAR(8) NOT NULL --「品名コード」
	,HIMMEI_SHURI_JOHO_SN  CHAR(14) NOT NULL --「品名修理情報連番」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,TEIGAKU_SHURIHIN_FLG  CHAR(1) DEFAULT '0' NOT NULL --「定額修理品フラグ」
	,TEIGAKU_SHURIHIN_SHURI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「定額修理品修理金額」
	,TEIGAKU_SHURIHIN_CANCEL_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「定額修理品キャンセル金額」
	,SHURI_IRAISAKI_KBN  CHAR(1) NOT NULL --「修理依頼先区分」
	,SHR_IRI_CHSISK_TRHKSK_CD  CHAR(9) --「修理依頼調整先取引先コード」
	,SHR_IRI_CHSISK_TRHKSK_BSH_CD  CHAR(4) --「修理依頼調整先取引先部署コード」
	,SHRHN_SFSK_TRHKSK_CD  CHAR(9) --「修理品送付先取引先コード」
	,SHRHN_SFSK_TRHKSK_BSH_CD  CHAR(4) --「修理品送付先取引先部署コード」
	,SHRH_SHHRISK_TRHKSK_CD  CHAR(9) --「修理費支払先取引先コード」
	,SHRH_SHHRISK_TRHKSK_BSH_CD  CHAR(4) --「修理費支払先取引先部署コード」
	,SHINSEI_SHONIN_NO  CHAR(14) --「申請承認番号」
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
	,CONSTRAINT ED2004M_PK PRIMARY KEY(
	 HIMMEI_CD
	,  HIMMEI_SHURI_JOHO_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED2004M_TBL IS '品名修理情報マスタ'
/

COMMENT ON COLUMN ED2004M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED2004M_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED2004M_TBL.HIMMEI_SHURI_JOHO_SN IS '品名修理情報連番'
/
COMMENT ON COLUMN ED2004M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED2004M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED2004M_TBL.TEIGAKU_SHURIHIN_FLG IS '定額修理品フラグ'
/
COMMENT ON COLUMN ED2004M_TBL.TEIGAKU_SHURIHIN_SHURI_AMT IS '定額修理品修理金額'
/
COMMENT ON COLUMN ED2004M_TBL.TEIGAKU_SHURIHIN_CANCEL_AMT IS '定額修理品キャンセル金額'
/
COMMENT ON COLUMN ED2004M_TBL.SHURI_IRAISAKI_KBN IS '修理依頼先区分'
/
COMMENT ON COLUMN ED2004M_TBL.SHR_IRI_CHSISK_TRHKSK_CD IS '修理依頼調整先取引先コード'
/
COMMENT ON COLUMN ED2004M_TBL.SHR_IRI_CHSISK_TRHKSK_BSH_CD IS '修理依頼調整先取引先部署コード'
/
COMMENT ON COLUMN ED2004M_TBL.SHRHN_SFSK_TRHKSK_CD IS '修理品送付先取引先コード'
/
COMMENT ON COLUMN ED2004M_TBL.SHRHN_SFSK_TRHKSK_BSH_CD IS '修理品送付先取引先部署コード'
/
COMMENT ON COLUMN ED2004M_TBL.SHRH_SHHRISK_TRHKSK_CD IS '修理費支払先取引先コード'
/
COMMENT ON COLUMN ED2004M_TBL.SHRH_SHHRISK_TRHKSK_BSH_CD IS '修理費支払先取引先部署コード'
/
COMMENT ON COLUMN ED2004M_TBL.SHINSEI_SHONIN_NO IS '申請承認番号'
/
COMMENT ON COLUMN ED2004M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED2004M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED2004M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED2004M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED2004M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED2004M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED2004M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED2004M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED2004M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED2004M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED2004M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED2004M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
