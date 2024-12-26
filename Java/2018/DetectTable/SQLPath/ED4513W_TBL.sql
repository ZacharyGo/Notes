﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4513W_TBL.sql
-- 物理名：ED4513W_TBL
-- 論理名：制御装置機器構成マスタＣＳＶファイルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4513W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4513W_TBL (
	 SEKISAN_RECORD_SOSA_KBN  CHAR(1) --「積算レコード操作区分」
	,WK_SKSN_RECORD_SOSA_KBN_NM  VARCHAR2(60) --「ワーク用積算レコード操作区分名称」
	,SHOHIN_SERVICE_CD  CHAR(3) NOT NULL --「商品サービスコード」
	,WK_SHOHIN_SERVICE_NM  VARCHAR2(60) --「ワーク用商品サービス名称」
	,SEIGYO_SOCHI_HIMMEI_CD  CHAR(8) NOT NULL --「制御装置品名コード」
	,WK_SEIGYO_SOCHI_HIMMEI_NM  VARCHAR2(60) --「ワーク用制御装置品名名称」
	,SEKISAN_KAISEN_SHUBETSU_CD  CHAR(3) DEFAULT '0' NOT NULL --「積算回線種別コード」
	,WK_SKSN_KAISEN_SHBTS_NM  VARCHAR2(60) --「ワーク用積算回線種別名称」
	,KAISEN_SHOYU_KBN  CHAR(1) NOT NULL --「回線所有区分」
	,WK_KAISEN_SHOYU_KBN_NM  VARCHAR2(60) --「ワーク用回線所有区分名称」
	,SEIGYO_SOCHI_KIKI_KOSEI_SN  CHAR(14) NOT NULL --「制御装置機器構成連番」
	,KOSEIHIN_HIMMEI_CD  CHAR(8) --「構成品品名コード」
	,WK_KOSEIHIN_HIMMEI_NM  VARCHAR2(60) --「ワーク用構成品品名名称」
	,HYOJI_JUN_1  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順１」
	,JIGYO_SEGMENT_CD  CHAR(3) --「事業セグメントコード」
	,WK_JIGYO_SEGMENT_NM  VARCHAR2(64) --「ワーク用事業セグメント名称」
	,KIKI_HYOJUN_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「機器標準数量」
	,BAIKYAKUHINARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「売却品有フラグ」
	,WK_BAIKYAKUHINARI_FLG_NM  VARCHAR2(60) --「ワーク用売却品有フラグ名称」
	,OKUGAI_KANTSU_ARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「屋外貫通有フラグ」
	,WK_OKUGAI_KANTSU_ARI_FLG_NM  VARCHAR2(60) --「ワーク用屋外貫通有フラグ名称」
	,OKUGAI_KANTSU_KASHOSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「屋外貫通箇所数」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,ZENKAI_TEKIYO_KAISHI_YMD  DATE --「前回適用開始年月日」
	,ZENKAI_TEKIYO_SHURYO_YMD  DATE --「前回適用終了年月日」
	,UPLOAD_TABLE_ID  CHAR(11) NOT NULL --「アップロードテーブルＩＤ」
	,TH_SHOHIN_SERVICE_CD  CHAR(3) --「退避用商品サービスコード」
	,TH_SEIGYO_SOCHI_HIMMEI_CD  CHAR(8) --「退避用制御装置品名コード」
	,TH_SKSN_KAISEN_SHBTS_CD  CHAR(3) --「退避用積算回線種別コード」
	,TH_KAISEN_SHOYU_KBN  CHAR(1) --「退避用回線所有区分」
	,TH_SEIGYO_SOCHI_KIKI_KOSEI_SN  CHAR(14) --「退避用制御装置機器構成連番」
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
	,CONSTRAINT ED4513W_PK PRIMARY KEY(
	 SHOHIN_SERVICE_CD
	,  SEIGYO_SOCHI_HIMMEI_CD
	,  SEKISAN_KAISEN_SHUBETSU_CD
	,  KAISEN_SHOYU_KBN
	,  SEIGYO_SOCHI_KIKI_KOSEI_SN
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4513W_TBL IS '制御装置機器構成マスタＣＳＶファイルワーク'
/

COMMENT ON COLUMN ED4513W_TBL.SEKISAN_RECORD_SOSA_KBN IS '積算レコード操作区分'
/
COMMENT ON COLUMN ED4513W_TBL.WK_SKSN_RECORD_SOSA_KBN_NM IS 'ワーク用積算レコード操作区分名称'
/
COMMENT ON COLUMN ED4513W_TBL.SHOHIN_SERVICE_CD IS '商品サービスコード'
/
COMMENT ON COLUMN ED4513W_TBL.WK_SHOHIN_SERVICE_NM IS 'ワーク用商品サービス名称'
/
COMMENT ON COLUMN ED4513W_TBL.SEIGYO_SOCHI_HIMMEI_CD IS '制御装置品名コード'
/
COMMENT ON COLUMN ED4513W_TBL.WK_SEIGYO_SOCHI_HIMMEI_NM IS 'ワーク用制御装置品名名称'
/
COMMENT ON COLUMN ED4513W_TBL.SEKISAN_KAISEN_SHUBETSU_CD IS '積算回線種別コード'
/
COMMENT ON COLUMN ED4513W_TBL.WK_SKSN_KAISEN_SHBTS_NM IS 'ワーク用積算回線種別名称'
/
COMMENT ON COLUMN ED4513W_TBL.KAISEN_SHOYU_KBN IS '回線所有区分'
/
COMMENT ON COLUMN ED4513W_TBL.WK_KAISEN_SHOYU_KBN_NM IS 'ワーク用回線所有区分名称'
/
COMMENT ON COLUMN ED4513W_TBL.SEIGYO_SOCHI_KIKI_KOSEI_SN IS '制御装置機器構成連番'
/
COMMENT ON COLUMN ED4513W_TBL.KOSEIHIN_HIMMEI_CD IS '構成品品名コード'
/
COMMENT ON COLUMN ED4513W_TBL.WK_KOSEIHIN_HIMMEI_NM IS 'ワーク用構成品品名名称'
/
COMMENT ON COLUMN ED4513W_TBL.HYOJI_JUN_1 IS '表示順１'
/
COMMENT ON COLUMN ED4513W_TBL.JIGYO_SEGMENT_CD IS '事業セグメントコード'
/
COMMENT ON COLUMN ED4513W_TBL.WK_JIGYO_SEGMENT_NM IS 'ワーク用事業セグメント名称'
/
COMMENT ON COLUMN ED4513W_TBL.KIKI_HYOJUN_SURYO IS '機器標準数量'
/
COMMENT ON COLUMN ED4513W_TBL.BAIKYAKUHINARI_FLG IS '売却品有フラグ'
/
COMMENT ON COLUMN ED4513W_TBL.WK_BAIKYAKUHINARI_FLG_NM IS 'ワーク用売却品有フラグ名称'
/
COMMENT ON COLUMN ED4513W_TBL.OKUGAI_KANTSU_ARI_FLG IS '屋外貫通有フラグ'
/
COMMENT ON COLUMN ED4513W_TBL.WK_OKUGAI_KANTSU_ARI_FLG_NM IS 'ワーク用屋外貫通有フラグ名称'
/
COMMENT ON COLUMN ED4513W_TBL.OKUGAI_KANTSU_KASHOSU IS '屋外貫通箇所数'
/
COMMENT ON COLUMN ED4513W_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4513W_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4513W_TBL.ZENKAI_TEKIYO_KAISHI_YMD IS '前回適用開始年月日'
/
COMMENT ON COLUMN ED4513W_TBL.ZENKAI_TEKIYO_SHURYO_YMD IS '前回適用終了年月日'
/
COMMENT ON COLUMN ED4513W_TBL.UPLOAD_TABLE_ID IS 'アップロードテーブルＩＤ'
/
COMMENT ON COLUMN ED4513W_TBL.TH_SHOHIN_SERVICE_CD IS '退避用商品サービスコード'
/
COMMENT ON COLUMN ED4513W_TBL.TH_SEIGYO_SOCHI_HIMMEI_CD IS '退避用制御装置品名コード'
/
COMMENT ON COLUMN ED4513W_TBL.TH_SKSN_KAISEN_SHBTS_CD IS '退避用積算回線種別コード'
/
COMMENT ON COLUMN ED4513W_TBL.TH_KAISEN_SHOYU_KBN IS '退避用回線所有区分'
/
COMMENT ON COLUMN ED4513W_TBL.TH_SEIGYO_SOCHI_KIKI_KOSEI_SN IS '退避用制御装置機器構成連番'
/
COMMENT ON COLUMN ED4513W_TBL.IKKATSU_TORIKOMIYO_TS IS '一括取込用タイムスタンプ'
/
COMMENT ON COLUMN ED4513W_TBL.IKKATSU_TORIKOMIYO_KAISHA_CD IS '一括取込用会社コード'
/
COMMENT ON COLUMN ED4513W_TBL.IKKATSU_TORIKOMIYO_SOSHIKI_CD IS '一括取込用組織コード'
/
COMMENT ON COLUMN ED4513W_TBL.IKKATSU_TORIKOMIYO_SHAIN_NO IS '一括取込用社員番号'
/
COMMENT ON COLUMN ED4513W_TBL.CSV_WK_GYO_NO IS 'ＣＳＶワーク行番号'
/
COMMENT ON COLUMN ED4513W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4513W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4513W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4513W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4513W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4513W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4513W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4513W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4513W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4513W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4513W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4513W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
