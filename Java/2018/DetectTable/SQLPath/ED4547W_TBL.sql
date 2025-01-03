﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4547W_TBL.sql
-- 物理名：ED4547W_TBL
-- 論理名：制御装置監視項目種別紐付マスタＣＳＶファイルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4547W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4547W_TBL (
	 SEKISAN_RECORD_SOSA_KBN  CHAR(1) --「積算レコード操作区分」
	,WK_SKSN_RECORD_SOSA_KBN_NM  VARCHAR2(60) --「ワーク用積算レコード操作区分名称」
	,OMONA_KANSHI_KOMOKU_KBN  CHAR(1) NOT NULL --「主な監視項目区分」
	,WK_OMONA_KANSI_KOMOKU_KBN_NM  VARCHAR2(60) --「ワーク用主な監視項目区分名称」
	,KANSHI_KOMOKU_SHUBETSU_CD  CHAR(3) NOT NULL --「監視項目種別コード」
	,WK_KANSI_KOMOKU_SHUBETU_NM  VARCHAR2(300) --「ワーク用監視項目種別名称」
	,SEIGYO_SOCHI_HIMMEI_CD  CHAR(8) NOT NULL --「制御装置品名コード」
	,WK_SEIGYO_SOCHI_HIMMEI_NM  VARCHAR2(60) --「ワーク用制御装置品名名称」
	,SHOKI_HYOJI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「初期表示フラグ」
	,WK_SHOKI_HYOJI_FLG_NM  VARCHAR2(60) --「ワーク用初期表示フラグ名称」
	,FUTAI_HOKEN_CD  CHAR(4) --「付帯保険コード」
	,WK_FUTAI_HOKEN_NM  VARCHAR2(60) --「ワーク用付帯保険名称」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,ZENKAI_TEKIYO_KAISHI_YMD  DATE --「前回適用開始年月日」
	,ZENKAI_TEKIYO_SHURYO_YMD  DATE --「前回適用終了年月日」
	,UPLOAD_TABLE_ID  CHAR(11) NOT NULL --「アップロードテーブルＩＤ」
	,TH_OMONA_KANSHI_KOMOKU_KBN  CHAR(1) --「退避用主な監視項目区分」
	,TH_KANSHI_KOMOKU_SHUBETSU_CD  CHAR(3) --「退避用監視項目種別コード」
	,TH_SEIGYO_SOCHI_HIMMEI_CD  CHAR(8) --「退避用制御装置品名コード」
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
	,CONSTRAINT ED4547W_PK PRIMARY KEY(
	 OMONA_KANSHI_KOMOKU_KBN
	,  KANSHI_KOMOKU_SHUBETSU_CD
	,  SEIGYO_SOCHI_HIMMEI_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4547W_TBL IS '制御装置監視項目種別紐付マスタＣＳＶファイルワーク'
/

COMMENT ON COLUMN ED4547W_TBL.SEKISAN_RECORD_SOSA_KBN IS '積算レコード操作区分'
/
COMMENT ON COLUMN ED4547W_TBL.WK_SKSN_RECORD_SOSA_KBN_NM IS 'ワーク用積算レコード操作区分名称'
/
COMMENT ON COLUMN ED4547W_TBL.OMONA_KANSHI_KOMOKU_KBN IS '主な監視項目区分'
/
COMMENT ON COLUMN ED4547W_TBL.WK_OMONA_KANSI_KOMOKU_KBN_NM IS 'ワーク用主な監視項目区分名称'
/
COMMENT ON COLUMN ED4547W_TBL.KANSHI_KOMOKU_SHUBETSU_CD IS '監視項目種別コード'
/
COMMENT ON COLUMN ED4547W_TBL.WK_KANSI_KOMOKU_SHUBETU_NM IS 'ワーク用監視項目種別名称'
/
COMMENT ON COLUMN ED4547W_TBL.SEIGYO_SOCHI_HIMMEI_CD IS '制御装置品名コード'
/
COMMENT ON COLUMN ED4547W_TBL.WK_SEIGYO_SOCHI_HIMMEI_NM IS 'ワーク用制御装置品名名称'
/
COMMENT ON COLUMN ED4547W_TBL.SHOKI_HYOJI_FLG IS '初期表示フラグ'
/
COMMENT ON COLUMN ED4547W_TBL.WK_SHOKI_HYOJI_FLG_NM IS 'ワーク用初期表示フラグ名称'
/
COMMENT ON COLUMN ED4547W_TBL.FUTAI_HOKEN_CD IS '付帯保険コード'
/
COMMENT ON COLUMN ED4547W_TBL.WK_FUTAI_HOKEN_NM IS 'ワーク用付帯保険名称'
/
COMMENT ON COLUMN ED4547W_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4547W_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4547W_TBL.ZENKAI_TEKIYO_KAISHI_YMD IS '前回適用開始年月日'
/
COMMENT ON COLUMN ED4547W_TBL.ZENKAI_TEKIYO_SHURYO_YMD IS '前回適用終了年月日'
/
COMMENT ON COLUMN ED4547W_TBL.UPLOAD_TABLE_ID IS 'アップロードテーブルＩＤ'
/
COMMENT ON COLUMN ED4547W_TBL.TH_OMONA_KANSHI_KOMOKU_KBN IS '退避用主な監視項目区分'
/
COMMENT ON COLUMN ED4547W_TBL.TH_KANSHI_KOMOKU_SHUBETSU_CD IS '退避用監視項目種別コード'
/
COMMENT ON COLUMN ED4547W_TBL.TH_SEIGYO_SOCHI_HIMMEI_CD IS '退避用制御装置品名コード'
/
COMMENT ON COLUMN ED4547W_TBL.IKKATSU_TORIKOMIYO_TS IS '一括取込用タイムスタンプ'
/
COMMENT ON COLUMN ED4547W_TBL.IKKATSU_TORIKOMIYO_KAISHA_CD IS '一括取込用会社コード'
/
COMMENT ON COLUMN ED4547W_TBL.IKKATSU_TORIKOMIYO_SOSHIKI_CD IS '一括取込用組織コード'
/
COMMENT ON COLUMN ED4547W_TBL.IKKATSU_TORIKOMIYO_SHAIN_NO IS '一括取込用社員番号'
/
COMMENT ON COLUMN ED4547W_TBL.CSV_WK_GYO_NO IS 'ＣＳＶワーク行番号'
/
COMMENT ON COLUMN ED4547W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4547W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4547W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4547W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4547W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4547W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4547W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4547W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4547W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4547W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4547W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4547W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
