﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4539W_TBL.sql
-- 物理名：ED4539W_TBL
-- 論理名：課金種別マスタＣＳＶファイルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4539W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4539W_TBL (
	 SEKISAN_RECORD_SOSA_KBN  CHAR(1) --「積算レコード操作区分」
	,WK_SKSN_RECORD_SOSA_KBN_NM  VARCHAR2(60) --「ワーク用積算レコード操作区分名称」
	,SHOHIN_SERVICE_CD  CHAR(3) NOT NULL --「商品サービスコード」
	,WK_SHOHIN_SERVICE_NM  VARCHAR2(60) --「ワーク用商品サービス名称」
	,KAKIN_BUNRUI_KBN  CHAR(1) NOT NULL --「課金分類区分」
	,WK_KAKIN_BUNRUI_KBN_NM  VARCHAR2(60) --「ワーク用課金分類区分名称」
	,KAKIN_KBN  CHAR(1) NOT NULL --「課金区分」
	,WK_KAKIN_KBN_NM  VARCHAR2(60) --「ワーク用課金区分名称」
	,KAKIN_SHUBETSU_CD  CHAR(3) NOT NULL --「課金種別コード」
	,KAKIN_SHUBETSU_NM  VARCHAR2(60) --「課金種別名称」
	,TORIHIKISAKI_CD  CHAR(9) NOT NULL --「取引先コード」
	,WK_TORIHIKISAKI_NM  VARCHAR2(40) --「ワーク用取引先名称」
	,HYOJI_JUN_1  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順１」
	,KAKIN_JOKEN_NAIYO  VARCHAR2(30) --「課金条件内容」
	,HYOJI_JUN_2  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順２」
	,TANKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「単価金額」
	,SHOKI_HYOJI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「初期表示フラグ」
	,WK_SHOKI_HYOJI_FLG_NM  VARCHAR2(60) --「ワーク用初期表示フラグ名称」
	,HEIJITSU_KYUJITSU_KBN  CHAR(1) NOT NULL --「平日休日区分」
	,WK_HEIJITSU_KYUJITSU_KBN_NM  VARCHAR2(60) --「ワーク用平日休日区分名称」
	,NYUSHUKKINKI_RYOGAEKI_KISHU_CD  CHAR(8) --「入出金機両替機機種コード」
	,WK_NYUSHUKKINKI_RYGK_KWK_NM  VARCHAR2(30) --「ワーク用入出金機両替機機種名称」
	,KISHU_NM  VARCHAR2(30) --「機種名称」
	,JIGYO_SEGMENT_CD  CHAR(3) --「事業セグメントコード」
	,WK_JIGYO_SEGMENT_NM  VARCHAR2(64) --「ワーク用事業セグメント名称」
	,JUCHU_SHORI_KBN  CHAR(2) NOT NULL --「受注処理区分」
	,WK_JUCHU_SHORI_KBN_NM  VARCHAR2(60) --「ワーク用受注処理区分名称」
	,RYOKIN_KBN  CHAR(5) NOT NULL --「料金区分」
	,WK_RYOKIN_KBN_NM  VARCHAR2(60) --「ワーク用料金区分名称」
	,HISSU_FLG  CHAR(1) DEFAULT '0' NOT NULL --「必須フラグ」
	,WK_HISSU_FLG_NM  VARCHAR2(60) --「ワーク用必須フラグ名称」
	,SEIKYU_SHIHARAI_CD  CHAR(3) --「請求支払コード」
	,WK_SEIKYU_SHIHARAI_CD_NM  VARCHAR2(50) --「ワーク用請求支払コード名称」
	,KIHON_RYOKIN_TYPE_CD  CHAR(3) --「基本料金タイプコード」
	,WK_KIHONRYOKIN_TYPE_NM  VARCHAR2(30) --「ワーク用基本料金タイプ名称」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,ZENKAI_TEKIYO_KAISHI_YMD  DATE --「前回適用開始年月日」
	,ZENKAI_TEKIYO_SHURYO_YMD  DATE --「前回適用終了年月日」
	,UPLOAD_TABLE_ID  CHAR(11) NOT NULL --「アップロードテーブルＩＤ」
	,TH_SHOHIN_SERVICE_CD  CHAR(3) --「退避用商品サービスコード」
	,TH_KAKIN_BUNRUI_KBN  CHAR(1) --「退避用課金分類区分」
	,TH_KAKIN_KBN  CHAR(1) --「退避用課金区分」
	,TH_KAKIN_SHUBETSU_CD  CHAR(3) --「退避用課金種別コード」
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
	,CONSTRAINT ED4539W_PK PRIMARY KEY(
	 SHOHIN_SERVICE_CD
	,  KAKIN_BUNRUI_KBN
	,  KAKIN_KBN
	,  KAKIN_SHUBETSU_CD
	,  TORIHIKISAKI_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4539W_TBL IS '課金種別マスタＣＳＶファイルワーク'
/

COMMENT ON COLUMN ED4539W_TBL.SEKISAN_RECORD_SOSA_KBN IS '積算レコード操作区分'
/
COMMENT ON COLUMN ED4539W_TBL.WK_SKSN_RECORD_SOSA_KBN_NM IS 'ワーク用積算レコード操作区分名称'
/
COMMENT ON COLUMN ED4539W_TBL.SHOHIN_SERVICE_CD IS '商品サービスコード'
/
COMMENT ON COLUMN ED4539W_TBL.WK_SHOHIN_SERVICE_NM IS 'ワーク用商品サービス名称'
/
COMMENT ON COLUMN ED4539W_TBL.KAKIN_BUNRUI_KBN IS '課金分類区分'
/
COMMENT ON COLUMN ED4539W_TBL.WK_KAKIN_BUNRUI_KBN_NM IS 'ワーク用課金分類区分名称'
/
COMMENT ON COLUMN ED4539W_TBL.KAKIN_KBN IS '課金区分'
/
COMMENT ON COLUMN ED4539W_TBL.WK_KAKIN_KBN_NM IS 'ワーク用課金区分名称'
/
COMMENT ON COLUMN ED4539W_TBL.KAKIN_SHUBETSU_CD IS '課金種別コード'
/
COMMENT ON COLUMN ED4539W_TBL.KAKIN_SHUBETSU_NM IS '課金種別名称'
/
COMMENT ON COLUMN ED4539W_TBL.TORIHIKISAKI_CD IS '取引先コード'
/
COMMENT ON COLUMN ED4539W_TBL.WK_TORIHIKISAKI_NM IS 'ワーク用取引先名称'
/
COMMENT ON COLUMN ED4539W_TBL.HYOJI_JUN_1 IS '表示順１'
/
COMMENT ON COLUMN ED4539W_TBL.KAKIN_JOKEN_NAIYO IS '課金条件内容'
/
COMMENT ON COLUMN ED4539W_TBL.HYOJI_JUN_2 IS '表示順２'
/
COMMENT ON COLUMN ED4539W_TBL.TANKA_AMT IS '単価金額'
/
COMMENT ON COLUMN ED4539W_TBL.SHOKI_HYOJI_FLG IS '初期表示フラグ'
/
COMMENT ON COLUMN ED4539W_TBL.WK_SHOKI_HYOJI_FLG_NM IS 'ワーク用初期表示フラグ名称'
/
COMMENT ON COLUMN ED4539W_TBL.HEIJITSU_KYUJITSU_KBN IS '平日休日区分'
/
COMMENT ON COLUMN ED4539W_TBL.WK_HEIJITSU_KYUJITSU_KBN_NM IS 'ワーク用平日休日区分名称'
/
COMMENT ON COLUMN ED4539W_TBL.NYUSHUKKINKI_RYOGAEKI_KISHU_CD IS '入出金機両替機機種コード'
/
COMMENT ON COLUMN ED4539W_TBL.WK_NYUSHUKKINKI_RYGK_KWK_NM IS 'ワーク用入出金機両替機機種名称'
/
COMMENT ON COLUMN ED4539W_TBL.KISHU_NM IS '機種名称'
/
COMMENT ON COLUMN ED4539W_TBL.JIGYO_SEGMENT_CD IS '事業セグメントコード'
/
COMMENT ON COLUMN ED4539W_TBL.WK_JIGYO_SEGMENT_NM IS 'ワーク用事業セグメント名称'
/
COMMENT ON COLUMN ED4539W_TBL.JUCHU_SHORI_KBN IS '受注処理区分'
/
COMMENT ON COLUMN ED4539W_TBL.WK_JUCHU_SHORI_KBN_NM IS 'ワーク用受注処理区分名称'
/
COMMENT ON COLUMN ED4539W_TBL.RYOKIN_KBN IS '料金区分'
/
COMMENT ON COLUMN ED4539W_TBL.WK_RYOKIN_KBN_NM IS 'ワーク用料金区分名称'
/
COMMENT ON COLUMN ED4539W_TBL.HISSU_FLG IS '必須フラグ'
/
COMMENT ON COLUMN ED4539W_TBL.WK_HISSU_FLG_NM IS 'ワーク用必須フラグ名称'
/
COMMENT ON COLUMN ED4539W_TBL.SEIKYU_SHIHARAI_CD IS '請求支払コード'
/
COMMENT ON COLUMN ED4539W_TBL.WK_SEIKYU_SHIHARAI_CD_NM IS 'ワーク用請求支払コード名称'
/
COMMENT ON COLUMN ED4539W_TBL.KIHON_RYOKIN_TYPE_CD IS '基本料金タイプコード'
/
COMMENT ON COLUMN ED4539W_TBL.WK_KIHONRYOKIN_TYPE_NM IS 'ワーク用基本料金タイプ名称'
/
COMMENT ON COLUMN ED4539W_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4539W_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4539W_TBL.ZENKAI_TEKIYO_KAISHI_YMD IS '前回適用開始年月日'
/
COMMENT ON COLUMN ED4539W_TBL.ZENKAI_TEKIYO_SHURYO_YMD IS '前回適用終了年月日'
/
COMMENT ON COLUMN ED4539W_TBL.UPLOAD_TABLE_ID IS 'アップロードテーブルＩＤ'
/
COMMENT ON COLUMN ED4539W_TBL.TH_SHOHIN_SERVICE_CD IS '退避用商品サービスコード'
/
COMMENT ON COLUMN ED4539W_TBL.TH_KAKIN_BUNRUI_KBN IS '退避用課金分類区分'
/
COMMENT ON COLUMN ED4539W_TBL.TH_KAKIN_KBN IS '退避用課金区分'
/
COMMENT ON COLUMN ED4539W_TBL.TH_KAKIN_SHUBETSU_CD IS '退避用課金種別コード'
/
COMMENT ON COLUMN ED4539W_TBL.IKKATSU_TORIKOMIYO_TS IS '一括取込用タイムスタンプ'
/
COMMENT ON COLUMN ED4539W_TBL.IKKATSU_TORIKOMIYO_KAISHA_CD IS '一括取込用会社コード'
/
COMMENT ON COLUMN ED4539W_TBL.IKKATSU_TORIKOMIYO_SOSHIKI_CD IS '一括取込用組織コード'
/
COMMENT ON COLUMN ED4539W_TBL.IKKATSU_TORIKOMIYO_SHAIN_NO IS '一括取込用社員番号'
/
COMMENT ON COLUMN ED4539W_TBL.CSV_WK_GYO_NO IS 'ＣＳＶワーク行番号'
/
COMMENT ON COLUMN ED4539W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4539W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4539W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4539W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4539W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4539W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4539W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4539W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4539W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4539W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4539W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4539W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/