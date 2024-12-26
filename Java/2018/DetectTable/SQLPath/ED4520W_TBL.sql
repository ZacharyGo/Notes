﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4520W_TBL.sql
-- 物理名：ED4520W_TBL
-- 論理名：機器構成フォローマスタＣＳＶファイルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4520W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4520W_TBL (
	 SEKISAN_RECORD_SOSA_KBN  CHAR(1) --「積算レコード操作区分」
	,WK_SKSN_RECORD_SOSA_KBN_NM  VARCHAR2(60) --「ワーク用積算レコード操作区分名称」
	,SHOHIN_SERVICE_CD  CHAR(3) NOT NULL --「商品サービスコード」
	,WK_SHOHIN_SERVICE_NM  VARCHAR2(60) --「ワーク用商品サービス名称」
	,SEIGYO_SOCHI_HIMMEI_CD  CHAR(8) NOT NULL --「制御装置品名コード」
	,WK_SEIGYO_SOCHI_HIMMEI_NM  VARCHAR2(60) --「ワーク用制御装置品名名称」
	,KANSHI_KOMOKU_SHUBETSU_CD  CHAR(3) NOT NULL --「監視項目種別コード」
	,WK_KANSHI_KOMOKU_NM  VARCHAR2(100) --「ワーク用監視項目名称」
	,KANSHI_HOHO_KBN  CHAR(1) NOT NULL --「監視方法区分」
	,WK_KANSHI_HOHO_KBN_NM  VARCHAR2(60) --「ワーク用監視方法区分名称」
	,KANSHI_KOMOKU_CATEGORY_CD  CHAR(3) NOT NULL --「監視項目カテゴリコード」
	,WK_KANSHI_KOMOKU_CATEGORY_NM  VARCHAR2(300) --「ワーク用監視項目カテゴリ名称」
	,KNSH_KOMOKU_KNSH_HSHK_CD  CHAR(5) NOT NULL --「監視項目監視方式コード」
	,KANSHI_DAIKOMOKU_NM  VARCHAR2(100) NOT NULL --「監視大項目名称」
	,HYOJI_JUN_1  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順１」
	,KANSHI_CHUKOMOKU_NM  VARCHAR2(100) --「監視中項目名称」
	,HYOJI_JUN_2  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順２」
	,KANSHI_KOMOKU_NAIYOARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「監視項目内容有フラグ」
	,WK_KANSHI_KMK_NAIYOARI_FLG_NM  VARCHAR2(60) --「ワーク用監視項目内容有フラグ名称」
	,KIKI_KOSEI_FOLLOW_SETTEI_CD  CHAR(3) --「機器構成フォロー設定コード」
	,WK_KIKI_KOSEI_FLLW_SETTEI_NM  VARCHAR2(60) --「ワーク用機器構成フォロー設定名称」
	,KANSHI_KOMOKU_SURYOARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「監視項目数量有フラグ」
	,WK_KANSHI_KMK_SRYARI_FLG_NM  VARCHAR2(60) --「ワーク用監視項目数量有フラグ名称」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,ZENKAI_TEKIYO_KAISHI_YMD  DATE --「前回適用開始年月日」
	,ZENKAI_TEKIYO_SHURYO_YMD  DATE --「前回適用終了年月日」
	,UPLOAD_TABLE_ID  CHAR(11) NOT NULL --「アップロードテーブルＩＤ」
	,TH_SHOHIN_SERVICE_CD  CHAR(3) --「退避用商品サービスコード」
	,TH_SEIGYO_SOCHI_HIMMEI_CD  CHAR(8) --「退避用制御装置品名コード」
	,TH_KANSHI_KOMOKU_SHUBETSU_CD  CHAR(3) --「退避用監視項目種別コード」
	,TH_KANSHI_HOHO_KBN  CHAR(1) --「退避用監視方法区分」
	,TH_KANSHI_KOMOKU_CATEGORY_CD  CHAR(3) --「退避用監視項目カテゴリコード」
	,TH_KNSH_KOMOKU_KNSH_HSHK_CD  CHAR(5) --「退避用監視項目監視方式コード」
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
	,CONSTRAINT ED4520W_PK PRIMARY KEY(
	 SHOHIN_SERVICE_CD
	,  SEIGYO_SOCHI_HIMMEI_CD
	,  KANSHI_KOMOKU_SHUBETSU_CD
	,  KANSHI_HOHO_KBN
	,  KANSHI_KOMOKU_CATEGORY_CD
	,  KNSH_KOMOKU_KNSH_HSHK_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4520W_TBL IS '機器構成フォローマスタＣＳＶファイルワーク'
/

COMMENT ON COLUMN ED4520W_TBL.SEKISAN_RECORD_SOSA_KBN IS '積算レコード操作区分'
/
COMMENT ON COLUMN ED4520W_TBL.WK_SKSN_RECORD_SOSA_KBN_NM IS 'ワーク用積算レコード操作区分名称'
/
COMMENT ON COLUMN ED4520W_TBL.SHOHIN_SERVICE_CD IS '商品サービスコード'
/
COMMENT ON COLUMN ED4520W_TBL.WK_SHOHIN_SERVICE_NM IS 'ワーク用商品サービス名称'
/
COMMENT ON COLUMN ED4520W_TBL.SEIGYO_SOCHI_HIMMEI_CD IS '制御装置品名コード'
/
COMMENT ON COLUMN ED4520W_TBL.WK_SEIGYO_SOCHI_HIMMEI_NM IS 'ワーク用制御装置品名名称'
/
COMMENT ON COLUMN ED4520W_TBL.KANSHI_KOMOKU_SHUBETSU_CD IS '監視項目種別コード'
/
COMMENT ON COLUMN ED4520W_TBL.WK_KANSHI_KOMOKU_NM IS 'ワーク用監視項目名称'
/
COMMENT ON COLUMN ED4520W_TBL.KANSHI_HOHO_KBN IS '監視方法区分'
/
COMMENT ON COLUMN ED4520W_TBL.WK_KANSHI_HOHO_KBN_NM IS 'ワーク用監視方法区分名称'
/
COMMENT ON COLUMN ED4520W_TBL.KANSHI_KOMOKU_CATEGORY_CD IS '監視項目カテゴリコード'
/
COMMENT ON COLUMN ED4520W_TBL.WK_KANSHI_KOMOKU_CATEGORY_NM IS 'ワーク用監視項目カテゴリ名称'
/
COMMENT ON COLUMN ED4520W_TBL.KNSH_KOMOKU_KNSH_HSHK_CD IS '監視項目監視方式コード'
/
COMMENT ON COLUMN ED4520W_TBL.KANSHI_DAIKOMOKU_NM IS '監視大項目名称'
/
COMMENT ON COLUMN ED4520W_TBL.HYOJI_JUN_1 IS '表示順１'
/
COMMENT ON COLUMN ED4520W_TBL.KANSHI_CHUKOMOKU_NM IS '監視中項目名称'
/
COMMENT ON COLUMN ED4520W_TBL.HYOJI_JUN_2 IS '表示順２'
/
COMMENT ON COLUMN ED4520W_TBL.KANSHI_KOMOKU_NAIYOARI_FLG IS '監視項目内容有フラグ'
/
COMMENT ON COLUMN ED4520W_TBL.WK_KANSHI_KMK_NAIYOARI_FLG_NM IS 'ワーク用監視項目内容有フラグ名称'
/
COMMENT ON COLUMN ED4520W_TBL.KIKI_KOSEI_FOLLOW_SETTEI_CD IS '機器構成フォロー設定コード'
/
COMMENT ON COLUMN ED4520W_TBL.WK_KIKI_KOSEI_FLLW_SETTEI_NM IS 'ワーク用機器構成フォロー設定名称'
/
COMMENT ON COLUMN ED4520W_TBL.KANSHI_KOMOKU_SURYOARI_FLG IS '監視項目数量有フラグ'
/
COMMENT ON COLUMN ED4520W_TBL.WK_KANSHI_KMK_SRYARI_FLG_NM IS 'ワーク用監視項目数量有フラグ名称'
/
COMMENT ON COLUMN ED4520W_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4520W_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4520W_TBL.ZENKAI_TEKIYO_KAISHI_YMD IS '前回適用開始年月日'
/
COMMENT ON COLUMN ED4520W_TBL.ZENKAI_TEKIYO_SHURYO_YMD IS '前回適用終了年月日'
/
COMMENT ON COLUMN ED4520W_TBL.UPLOAD_TABLE_ID IS 'アップロードテーブルＩＤ'
/
COMMENT ON COLUMN ED4520W_TBL.TH_SHOHIN_SERVICE_CD IS '退避用商品サービスコード'
/
COMMENT ON COLUMN ED4520W_TBL.TH_SEIGYO_SOCHI_HIMMEI_CD IS '退避用制御装置品名コード'
/
COMMENT ON COLUMN ED4520W_TBL.TH_KANSHI_KOMOKU_SHUBETSU_CD IS '退避用監視項目種別コード'
/
COMMENT ON COLUMN ED4520W_TBL.TH_KANSHI_HOHO_KBN IS '退避用監視方法区分'
/
COMMENT ON COLUMN ED4520W_TBL.TH_KANSHI_KOMOKU_CATEGORY_CD IS '退避用監視項目カテゴリコード'
/
COMMENT ON COLUMN ED4520W_TBL.TH_KNSH_KOMOKU_KNSH_HSHK_CD IS '退避用監視項目監視方式コード'
/
COMMENT ON COLUMN ED4520W_TBL.IKKATSU_TORIKOMIYO_TS IS '一括取込用タイムスタンプ'
/
COMMENT ON COLUMN ED4520W_TBL.IKKATSU_TORIKOMIYO_KAISHA_CD IS '一括取込用会社コード'
/
COMMENT ON COLUMN ED4520W_TBL.IKKATSU_TORIKOMIYO_SOSHIKI_CD IS '一括取込用組織コード'
/
COMMENT ON COLUMN ED4520W_TBL.IKKATSU_TORIKOMIYO_SHAIN_NO IS '一括取込用社員番号'
/
COMMENT ON COLUMN ED4520W_TBL.CSV_WK_GYO_NO IS 'ＣＳＶワーク行番号'
/
COMMENT ON COLUMN ED4520W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4520W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4520W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4520W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4520W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4520W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4520W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4520W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4520W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4520W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4520W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4520W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/