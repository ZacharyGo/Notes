﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4507W_TBL.sql
-- 物理名：ED4507W_TBL
-- 論理名：情報通信本体機器選択マスタＣＳＶファイルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4507W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4507W_TBL (
	 SEKISAN_RECORD_SOSA_KBN  CHAR(1) --「積算レコード操作区分」
	,WK_SKSN_RECORD_SOSA_KBN_NM  VARCHAR2(60) --「ワーク用積算レコード操作区分名称」
	,JH_TSSHN_HNTI_KIKI_CD  CHAR(8) NOT NULL --「情報通信本体機器コード」
	,WK_JH_TSSHN_HNTI_KIKI_NM  VARCHAR2(300) --「ワーク用情報通信本体機器名称」
	,HYOJI_JUN_1  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順１」
	,JH_TSUSHIN_HNTI_KK_SNTK_RT_SN  CHAR(14) NOT NULL --「情報通信本体機器選択列連番」
	,JH_TSUSHIN_HNTI_KK_SNTK_GY_SN  CHAR(14) NOT NULL --「情報通信本体機器選択行連番」
	,JH_TSUSHIN_HNTI_KK_SNTK_NAIYO  VARCHAR2(60) --「情報通信本体機器選択内容」
	,SHOKI_HYOJI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「初期表示フラグ」
	,WK_SHOKI_HYOJI_FLG_NM  VARCHAR2(60) --「ワーク用初期表示フラグ名称」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,ZENKAI_TEKIYO_KAISHI_YMD  DATE --「前回適用開始年月日」
	,ZENKAI_TEKIYO_SHURYO_YMD  DATE --「前回適用終了年月日」
	,UPLOAD_TABLE_ID  CHAR(11) NOT NULL --「アップロードテーブルＩＤ」
	,TH_JH_TSSHN_HNTI_KIKI_CD  CHAR(8) --「退避用情報通信本体機器コード」
	,TH_JH_TSSHN_HNT_KK_SNTK_GY_SN  CHAR(14) --「退避用情報通信本体機器選択行連番」
	,TH_JH_TSSHN_HNT_KK_SNTK_RT_SN  CHAR(14) --「退避用情報通信本体機器選択列連番」
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
	,CONSTRAINT ED4507W_PK PRIMARY KEY(
	 JH_TSSHN_HNTI_KIKI_CD
	,  JH_TSUSHIN_HNTI_KK_SNTK_RT_SN
	,  JH_TSUSHIN_HNTI_KK_SNTK_GY_SN
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4507W_TBL IS '情報通信本体機器選択マスタＣＳＶファイルワーク'
/

COMMENT ON COLUMN ED4507W_TBL.SEKISAN_RECORD_SOSA_KBN IS '積算レコード操作区分'
/
COMMENT ON COLUMN ED4507W_TBL.WK_SKSN_RECORD_SOSA_KBN_NM IS 'ワーク用積算レコード操作区分名称'
/
COMMENT ON COLUMN ED4507W_TBL.JH_TSSHN_HNTI_KIKI_CD IS '情報通信本体機器コード'
/
COMMENT ON COLUMN ED4507W_TBL.WK_JH_TSSHN_HNTI_KIKI_NM IS 'ワーク用情報通信本体機器名称'
/
COMMENT ON COLUMN ED4507W_TBL.HYOJI_JUN_1 IS '表示順１'
/
COMMENT ON COLUMN ED4507W_TBL.JH_TSUSHIN_HNTI_KK_SNTK_RT_SN IS '情報通信本体機器選択列連番'
/
COMMENT ON COLUMN ED4507W_TBL.JH_TSUSHIN_HNTI_KK_SNTK_GY_SN IS '情報通信本体機器選択行連番'
/
COMMENT ON COLUMN ED4507W_TBL.JH_TSUSHIN_HNTI_KK_SNTK_NAIYO IS '情報通信本体機器選択内容'
/
COMMENT ON COLUMN ED4507W_TBL.SHOKI_HYOJI_FLG IS '初期表示フラグ'
/
COMMENT ON COLUMN ED4507W_TBL.WK_SHOKI_HYOJI_FLG_NM IS 'ワーク用初期表示フラグ名称'
/
COMMENT ON COLUMN ED4507W_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4507W_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4507W_TBL.ZENKAI_TEKIYO_KAISHI_YMD IS '前回適用開始年月日'
/
COMMENT ON COLUMN ED4507W_TBL.ZENKAI_TEKIYO_SHURYO_YMD IS '前回適用終了年月日'
/
COMMENT ON COLUMN ED4507W_TBL.UPLOAD_TABLE_ID IS 'アップロードテーブルＩＤ'
/
COMMENT ON COLUMN ED4507W_TBL.TH_JH_TSSHN_HNTI_KIKI_CD IS '退避用情報通信本体機器コード'
/
COMMENT ON COLUMN ED4507W_TBL.TH_JH_TSSHN_HNT_KK_SNTK_GY_SN IS '退避用情報通信本体機器選択行連番'
/
COMMENT ON COLUMN ED4507W_TBL.TH_JH_TSSHN_HNT_KK_SNTK_RT_SN IS '退避用情報通信本体機器選択列連番'
/
COMMENT ON COLUMN ED4507W_TBL.IKKATSU_TORIKOMIYO_TS IS '一括取込用タイムスタンプ'
/
COMMENT ON COLUMN ED4507W_TBL.IKKATSU_TORIKOMIYO_KAISHA_CD IS '一括取込用会社コード'
/
COMMENT ON COLUMN ED4507W_TBL.IKKATSU_TORIKOMIYO_SOSHIKI_CD IS '一括取込用組織コード'
/
COMMENT ON COLUMN ED4507W_TBL.IKKATSU_TORIKOMIYO_SHAIN_NO IS '一括取込用社員番号'
/
COMMENT ON COLUMN ED4507W_TBL.CSV_WK_GYO_NO IS 'ＣＳＶワーク行番号'
/
COMMENT ON COLUMN ED4507W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4507W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4507W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4507W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4507W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4507W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4507W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4507W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4507W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4507W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4507W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4507W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/