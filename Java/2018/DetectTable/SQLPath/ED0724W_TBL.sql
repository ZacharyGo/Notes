﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0724W_TBL.sql
-- 物理名：ED0724W_TBL
-- 論理名：契約資料マスタＣＳＶファイルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0724W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0724W_TBL (
	 SEKISAN_RECORD_SOSA_KBN  CHAR(1) --「積算レコード操作区分」
	,WK_SKSN_RECORD_SOSA_KBN_NM  VARCHAR2(60) --「ワーク用積算レコード操作区分名称」
	,SHOHIN_SERVICE_CD  CHAR(3) NOT NULL --「商品サービスコード」
	,WK_SHOHIN_SERVICE_NM  VARCHAR2(60) --「ワーク用商品サービス名称」
	,KEIYAKU_SHIRYO_NO  NUMBER(9,0) DEFAULT '0' NOT NULL --「契約資料番号」
	,KEIYAKU_SHIRYO_FILE_NM  VARCHAR2(255) --「契約資料ファイル名称」
	,KIYK_SHRY_FILE_SHKBTS_KEY  VARCHAR2(255) --「契約資料ファイル識別キー」
	,SHOMEIARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「署名有フラグ」
	,WK_SHOMEIARI_FLG_NM  VARCHAR2(60) --「ワーク用署名有フラグ名称」
	,DENSHI_SIGN_KAKUNIN_FLG  CHAR(1) DEFAULT '0' NOT NULL --「電子サイン確認フラグ」
	,WK_DENSHI_SIGN_KAKUNIN_FLG_NM  VARCHAR2(60) --「ワーク用電子サイン確認フラグ名称」
	,KEIYAKU_KAKUNI_JIKI_KBN  CHAR(1) NOT NULL --「契約確認時期区分」
	,WK_KEIYAKU_KAKUNI_JIKI_KBN_NM  VARCHAR2(60) --「ワーク用契約確認時期区分名称」
	,KEIYAKUSHO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「契約書フラグ」
	,WK_KEIYAKUSHO_FLG_NM  VARCHAR2(60) --「ワーク用契約書フラグ名称」
	,KEIYAKUSHO_KAISHUYO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「契約書回収要フラグ」
	,WK_KEIYAKUSHO_KAISHUYO_FLG_NM  VARCHAR2(60) --「ワーク用契約書回収要フラグ名称」
	,KEIYAKUSHO_SOFUYO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「契約書送付要フラグ」
	,WK_KEIYAKUSHO_SOFUYO_FLG_NM  VARCHAR2(60) --「ワーク用契約書送付要フラグ名称」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,ZENKAI_TEKIYO_KAISHI_YMD  DATE NOT NULL --「前回適用開始年月日」
	,ZENKAI_TEKIYO_SHURYO_YMD  DATE NOT NULL --「前回適用終了年月日」
	,UPLOAD_TABLE_ID  CHAR(11) --「アップロードテーブルＩＤ」
	,TH_SHOHIN_SERVICE_CD  CHAR(3) --「退避用商品サービスコード」
	,TAIHIYO_KEIYAKU_SHIRYO_NO  NUMBER(9,0) NOT NULL --「退避用契約資料番号」
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
	,CONSTRAINT ED0724W_PK PRIMARY KEY(
	 SHOHIN_SERVICE_CD
	,  KEIYAKU_SHIRYO_NO
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0724W_TBL IS '契約資料マスタＣＳＶファイルワーク'
/

COMMENT ON COLUMN ED0724W_TBL.SEKISAN_RECORD_SOSA_KBN IS '積算レコード操作区分'
/
COMMENT ON COLUMN ED0724W_TBL.WK_SKSN_RECORD_SOSA_KBN_NM IS 'ワーク用積算レコード操作区分名称'
/
COMMENT ON COLUMN ED0724W_TBL.SHOHIN_SERVICE_CD IS '商品サービスコード'
/
COMMENT ON COLUMN ED0724W_TBL.WK_SHOHIN_SERVICE_NM IS 'ワーク用商品サービス名称'
/
COMMENT ON COLUMN ED0724W_TBL.KEIYAKU_SHIRYO_NO IS '契約資料番号'
/
COMMENT ON COLUMN ED0724W_TBL.KEIYAKU_SHIRYO_FILE_NM IS '契約資料ファイル名称'
/
COMMENT ON COLUMN ED0724W_TBL.KIYK_SHRY_FILE_SHKBTS_KEY IS '契約資料ファイル識別キー'
/
COMMENT ON COLUMN ED0724W_TBL.SHOMEIARI_FLG IS '署名有フラグ'
/
COMMENT ON COLUMN ED0724W_TBL.WK_SHOMEIARI_FLG_NM IS 'ワーク用署名有フラグ名称'
/
COMMENT ON COLUMN ED0724W_TBL.DENSHI_SIGN_KAKUNIN_FLG IS '電子サイン確認フラグ'
/
COMMENT ON COLUMN ED0724W_TBL.WK_DENSHI_SIGN_KAKUNIN_FLG_NM IS 'ワーク用電子サイン確認フラグ名称'
/
COMMENT ON COLUMN ED0724W_TBL.KEIYAKU_KAKUNI_JIKI_KBN IS '契約確認時期区分'
/
COMMENT ON COLUMN ED0724W_TBL.WK_KEIYAKU_KAKUNI_JIKI_KBN_NM IS 'ワーク用契約確認時期区分名称'
/
COMMENT ON COLUMN ED0724W_TBL.KEIYAKUSHO_FLG IS '契約書フラグ'
/
COMMENT ON COLUMN ED0724W_TBL.WK_KEIYAKUSHO_FLG_NM IS 'ワーク用契約書フラグ名称'
/
COMMENT ON COLUMN ED0724W_TBL.KEIYAKUSHO_KAISHUYO_FLG IS '契約書回収要フラグ'
/
COMMENT ON COLUMN ED0724W_TBL.WK_KEIYAKUSHO_KAISHUYO_FLG_NM IS 'ワーク用契約書回収要フラグ名称'
/
COMMENT ON COLUMN ED0724W_TBL.KEIYAKUSHO_SOFUYO_FLG IS '契約書送付要フラグ'
/
COMMENT ON COLUMN ED0724W_TBL.WK_KEIYAKUSHO_SOFUYO_FLG_NM IS 'ワーク用契約書送付要フラグ名称'
/
COMMENT ON COLUMN ED0724W_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED0724W_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED0724W_TBL.ZENKAI_TEKIYO_KAISHI_YMD IS '前回適用開始年月日'
/
COMMENT ON COLUMN ED0724W_TBL.ZENKAI_TEKIYO_SHURYO_YMD IS '前回適用終了年月日'
/
COMMENT ON COLUMN ED0724W_TBL.UPLOAD_TABLE_ID IS 'アップロードテーブルＩＤ'
/
COMMENT ON COLUMN ED0724W_TBL.TH_SHOHIN_SERVICE_CD IS '退避用商品サービスコード'
/
COMMENT ON COLUMN ED0724W_TBL.TAIHIYO_KEIYAKU_SHIRYO_NO IS '退避用契約資料番号'
/
COMMENT ON COLUMN ED0724W_TBL.IKKATSU_TORIKOMIYO_TS IS '一括取込用タイムスタンプ'
/
COMMENT ON COLUMN ED0724W_TBL.IKKATSU_TORIKOMIYO_KAISHA_CD IS '一括取込用会社コード'
/
COMMENT ON COLUMN ED0724W_TBL.IKKATSU_TORIKOMIYO_SOSHIKI_CD IS '一括取込用組織コード'
/
COMMENT ON COLUMN ED0724W_TBL.IKKATSU_TORIKOMIYO_SHAIN_NO IS '一括取込用社員番号'
/
COMMENT ON COLUMN ED0724W_TBL.CSV_WK_GYO_NO IS 'ＣＳＶワーク行番号'
/
COMMENT ON COLUMN ED0724W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0724W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0724W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0724W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0724W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0724W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0724W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0724W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0724W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0724W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0724W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0724W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/