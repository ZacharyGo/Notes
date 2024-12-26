﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0725W_TBL.sql
-- 物理名：ED0725W_TBL
-- 論理名：入出金機メーカ休日マスタＣＳＶファイルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0725W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0725W_TBL (
	 SEKISAN_RECORD_SOSA_KBN  CHAR(1) --「積算レコード操作区分」
	,WK_SKSN_RECORD_SOSA_KBN_NM  VARCHAR2(60) --「ワーク用積算レコード操作区分名称」
	,NSKKIS_JD_MAIL_SSS_NM_KBN  CHAR(2) NOT NULL --「入出金機移設自動メール送信先名称区分」
	,WK_NSKKISJD_MAIL_SSSNM_KBN_NM  VARCHAR2(60) --「ワーク用入出金機移設自動メール送信先名称区分名称」
	,NSKK_MAKER_KYUJITSU_YMD  DATE NOT NULL --「入出金機メーカ休日年月日」
	,ZENKAI_TEKIYO_KAISHI_YMD  DATE NOT NULL --「前回適用開始年月日」
	,ZENKAI_TEKIYO_SHURYO_YMD  DATE NOT NULL --「前回適用終了年月日」
	,UPLOAD_TABLE_ID  CHAR(11) --「アップロードテーブルＩＤ」
	,TIHYO_NSKKISJD_MAILSSS_NM_KBN  CHAR(2) NOT NULL --「退避用入出金機移設自動メール送信先名称区分」
	,TIHYO_NSKK_MAKER_KYUJITSU_YMD  DATE NOT NULL --「退避用入出金機メーカ休日年月日」
	,IKKATSU_TORIKOMIYO_TS  TIMESTAMP --「一括取込用タイムスタンプ」
	,IKKATSU_TORIKOMIYO_KAISHA_CD  CHAR(5) --「一括取込用会社コード」
	,IKKATSU_TORIKOMIYO_SOSHIKI_CD  VARCHAR2(6) --「一括取込用組織コード」
	,IKKATSU_TORIKOMIYO_SHAIN_NO  VARCHAR2(8) --「一括取込用社員番号」
	,CSV_WK_GYO_NO  CHAR(7) --「ＣＳＶワーク行番号」
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
	,CONSTRAINT ED0725W_PK PRIMARY KEY(
	 NSKKIS_JD_MAIL_SSS_NM_KBN
	,  NSKK_MAKER_KYUJITSU_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0725W_TBL IS '入出金機メーカ休日マスタＣＳＶファイルワーク'
/

COMMENT ON COLUMN ED0725W_TBL.SEKISAN_RECORD_SOSA_KBN IS '積算レコード操作区分'
/
COMMENT ON COLUMN ED0725W_TBL.WK_SKSN_RECORD_SOSA_KBN_NM IS 'ワーク用積算レコード操作区分名称'
/
COMMENT ON COLUMN ED0725W_TBL.NSKKIS_JD_MAIL_SSS_NM_KBN IS '入出金機移設自動メール送信先名称区分'
/
COMMENT ON COLUMN ED0725W_TBL.WK_NSKKISJD_MAIL_SSSNM_KBN_NM IS 'ワーク用入出金機移設自動メール送信先名称区分名称'
/
COMMENT ON COLUMN ED0725W_TBL.NSKK_MAKER_KYUJITSU_YMD IS '入出金機メーカ休日年月日'
/
COMMENT ON COLUMN ED0725W_TBL.ZENKAI_TEKIYO_KAISHI_YMD IS '前回適用開始年月日'
/
COMMENT ON COLUMN ED0725W_TBL.ZENKAI_TEKIYO_SHURYO_YMD IS '前回適用終了年月日'
/
COMMENT ON COLUMN ED0725W_TBL.UPLOAD_TABLE_ID IS 'アップロードテーブルＩＤ'
/
COMMENT ON COLUMN ED0725W_TBL.TIHYO_NSKKISJD_MAILSSS_NM_KBN IS '退避用入出金機移設自動メール送信先名称区分'
/
COMMENT ON COLUMN ED0725W_TBL.TIHYO_NSKK_MAKER_KYUJITSU_YMD IS '退避用入出金機メーカ休日年月日'
/
COMMENT ON COLUMN ED0725W_TBL.IKKATSU_TORIKOMIYO_TS IS '一括取込用タイムスタンプ'
/
COMMENT ON COLUMN ED0725W_TBL.IKKATSU_TORIKOMIYO_KAISHA_CD IS '一括取込用会社コード'
/
COMMENT ON COLUMN ED0725W_TBL.IKKATSU_TORIKOMIYO_SOSHIKI_CD IS '一括取込用組織コード'
/
COMMENT ON COLUMN ED0725W_TBL.IKKATSU_TORIKOMIYO_SHAIN_NO IS '一括取込用社員番号'
/
COMMENT ON COLUMN ED0725W_TBL.CSV_WK_GYO_NO IS 'ＣＳＶワーク行番号'
/
COMMENT ON COLUMN ED0725W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0725W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0725W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0725W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0725W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0725W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0725W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0725W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0725W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0725W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0725W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0725W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
