﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4501W_TBL.sql
-- 物理名：ED4501W_TBL
-- 論理名：入出金機機器構成マスタＣＳＶファイルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4501W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4501W_TBL (
	 SEKISAN_RECORD_SOSA_KBN  CHAR(1) --「積算レコード操作区分」
	,WK_SKSN_RECORD_SOSA_KBN_NM  VARCHAR2(60) --「ワーク用積算レコード操作区分名称」
	,NYUSHUKKINKI_KISHU_CD  CHAR(8) NOT NULL --「入出金機機種コード」
	,WK_NYUSHUKKINKI_KISHU_NM  VARCHAR2(30) --「ワーク用入出金機機種名称」
	,NYSHKKNK_KISN_SHBTS_CD  CHAR(3) NOT NULL --「入出金機回線種別コード」
	,WK_NYSHKKNK_KISN_SHBTS_NM  VARCHAR2(60) --「ワーク用入出金機回線種別名称」
	,NYSHKKNK_SHIZAI_SHUBETSU_KBN  CHAR(1) NOT NULL --「入出金機資材種別区分」
	,WK_NYSHKKNK_SHZ_SHBTS_KBN_NM  VARCHAR2(60) --「ワーク用入出金機資材種別区分名称」
	,HIMMEI_CD  CHAR(8) NOT NULL --「品名コード」
	,WK_HIMMEI_NM  VARCHAR2(60) --「ワーク用品名名称」
	,HYOJI_JUN_1  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順１」
	,NYSHKKNK_HISSU_SHZI_HYJN_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「入出金機必須資材標準数量」
	,TNDK_KIBY_SHIZAI_HYOJUN_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「単独警備用資材標準数量」
	,TMP_KMKM_KIBY_SHZI_HYJN_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「店舗組込警備用資材標準数量」
	,KIB_SHNDN_NSHY_SHZI_HYJN_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「警備診断なし用資材標準数量」
	,NYUSHUKKINKI_SHIZAI_ARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「入出金機資材有フラグ」
	,WK_NYUSHUKKINKI_SHZ_AR_FLG_NM  VARCHAR2(60) --「ワーク用入出金機資材有フラグ名称」
	,GETSUGAKU_KEIJO_SHUBETSU_KBN  CHAR(1) NOT NULL --「月額計上種別区分」
	,WK_GTSGK_KEIJO_SHBTS_KBN_NM  VARCHAR2(60) --「ワーク用月額計上種別区分名称」
	,KIKI_LEASE_GETSUGAKU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「機器リース月額金額」
	,CHOTATSU_FUYO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「調達不要フラグ」
	,WK_CHOTATSU_FUYO_FLG_NM  VARCHAR2(60) --「ワーク用調達不要フラグ名称」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,ZENKAI_TEKIYO_KAISHI_YMD  DATE --「前回適用開始年月日」
	,ZENKAI_TEKIYO_SHURYO_YMD  DATE --「前回適用終了年月日」
	,UPLOAD_TABLE_ID  CHAR(11) NOT NULL --「アップロードテーブルＩＤ」
	,TH_NYUSHUKKINKI_KISHU_CD  CHAR(8) --「退避用入出金機機種コード」
	,TH_NYSHKKNK_KISN_SHBTS_CD  CHAR(3) --「退避用入出金機回線種別コード」
	,TH_HIMMEI_CD  CHAR(8) --「退避用品名コード」
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
	,CONSTRAINT ED4501W_PK PRIMARY KEY(
	 NYUSHUKKINKI_KISHU_CD
	,  NYSHKKNK_KISN_SHBTS_CD
	,  HIMMEI_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4501W_TBL IS '入出金機機器構成マスタＣＳＶファイルワーク'
/

COMMENT ON COLUMN ED4501W_TBL.SEKISAN_RECORD_SOSA_KBN IS '積算レコード操作区分'
/
COMMENT ON COLUMN ED4501W_TBL.WK_SKSN_RECORD_SOSA_KBN_NM IS 'ワーク用積算レコード操作区分名称'
/
COMMENT ON COLUMN ED4501W_TBL.NYUSHUKKINKI_KISHU_CD IS '入出金機機種コード'
/
COMMENT ON COLUMN ED4501W_TBL.WK_NYUSHUKKINKI_KISHU_NM IS 'ワーク用入出金機機種名称'
/
COMMENT ON COLUMN ED4501W_TBL.NYSHKKNK_KISN_SHBTS_CD IS '入出金機回線種別コード'
/
COMMENT ON COLUMN ED4501W_TBL.WK_NYSHKKNK_KISN_SHBTS_NM IS 'ワーク用入出金機回線種別名称'
/
COMMENT ON COLUMN ED4501W_TBL.NYSHKKNK_SHIZAI_SHUBETSU_KBN IS '入出金機資材種別区分'
/
COMMENT ON COLUMN ED4501W_TBL.WK_NYSHKKNK_SHZ_SHBTS_KBN_NM IS 'ワーク用入出金機資材種別区分名称'
/
COMMENT ON COLUMN ED4501W_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED4501W_TBL.WK_HIMMEI_NM IS 'ワーク用品名名称'
/
COMMENT ON COLUMN ED4501W_TBL.HYOJI_JUN_1 IS '表示順１'
/
COMMENT ON COLUMN ED4501W_TBL.NYSHKKNK_HISSU_SHZI_HYJN_SURYO IS '入出金機必須資材標準数量'
/
COMMENT ON COLUMN ED4501W_TBL.TNDK_KIBY_SHIZAI_HYOJUN_SURYO IS '単独警備用資材標準数量'
/
COMMENT ON COLUMN ED4501W_TBL.TMP_KMKM_KIBY_SHZI_HYJN_SURYO IS '店舗組込警備用資材標準数量'
/
COMMENT ON COLUMN ED4501W_TBL.KIB_SHNDN_NSHY_SHZI_HYJN_SURYO IS '警備診断なし用資材標準数量'
/
COMMENT ON COLUMN ED4501W_TBL.NYUSHUKKINKI_SHIZAI_ARI_FLG IS '入出金機資材有フラグ'
/
COMMENT ON COLUMN ED4501W_TBL.WK_NYUSHUKKINKI_SHZ_AR_FLG_NM IS 'ワーク用入出金機資材有フラグ名称'
/
COMMENT ON COLUMN ED4501W_TBL.GETSUGAKU_KEIJO_SHUBETSU_KBN IS '月額計上種別区分'
/
COMMENT ON COLUMN ED4501W_TBL.WK_GTSGK_KEIJO_SHBTS_KBN_NM IS 'ワーク用月額計上種別区分名称'
/
COMMENT ON COLUMN ED4501W_TBL.KIKI_LEASE_GETSUGAKU_AMT IS '機器リース月額金額'
/
COMMENT ON COLUMN ED4501W_TBL.CHOTATSU_FUYO_FLG IS '調達不要フラグ'
/
COMMENT ON COLUMN ED4501W_TBL.WK_CHOTATSU_FUYO_FLG_NM IS 'ワーク用調達不要フラグ名称'
/
COMMENT ON COLUMN ED4501W_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4501W_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4501W_TBL.ZENKAI_TEKIYO_KAISHI_YMD IS '前回適用開始年月日'
/
COMMENT ON COLUMN ED4501W_TBL.ZENKAI_TEKIYO_SHURYO_YMD IS '前回適用終了年月日'
/
COMMENT ON COLUMN ED4501W_TBL.UPLOAD_TABLE_ID IS 'アップロードテーブルＩＤ'
/
COMMENT ON COLUMN ED4501W_TBL.TH_NYUSHUKKINKI_KISHU_CD IS '退避用入出金機機種コード'
/
COMMENT ON COLUMN ED4501W_TBL.TH_NYSHKKNK_KISN_SHBTS_CD IS '退避用入出金機回線種別コード'
/
COMMENT ON COLUMN ED4501W_TBL.TH_HIMMEI_CD IS '退避用品名コード'
/
COMMENT ON COLUMN ED4501W_TBL.IKKATSU_TORIKOMIYO_TS IS '一括取込用タイムスタンプ'
/
COMMENT ON COLUMN ED4501W_TBL.IKKATSU_TORIKOMIYO_KAISHA_CD IS '一括取込用会社コード'
/
COMMENT ON COLUMN ED4501W_TBL.IKKATSU_TORIKOMIYO_SOSHIKI_CD IS '一括取込用組織コード'
/
COMMENT ON COLUMN ED4501W_TBL.IKKATSU_TORIKOMIYO_SHAIN_NO IS '一括取込用社員番号'
/
COMMENT ON COLUMN ED4501W_TBL.CSV_WK_GYO_NO IS 'ＣＳＶワーク行番号'
/
COMMENT ON COLUMN ED4501W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4501W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4501W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4501W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4501W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4501W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4501W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4501W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4501W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4501W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4501W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4501W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
