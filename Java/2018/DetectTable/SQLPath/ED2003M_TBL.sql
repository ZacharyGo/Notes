﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED2003M_TBL.sql
-- 物理名：ED2003M_TBL
-- 論理名：品名調達情報マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED2003M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED2003M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,HIMMEI_CD  CHAR(8) NOT NULL --「品名コード」
	,HIMMEI_CHOTATSU_JOHO_SN  CHAR(14) NOT NULL --「品名調達情報連番」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,KAKAKU_SETTEI_SHUBETSU_KBN  CHAR(1) NOT NULL --「価格設定種別区分」
	,JODAI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「上代金額」
	,SHIIRE_GENKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「仕入原価金額」
	,BAIKYAKU_GENKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「売却原価金額」
	,RANK_1_BAIKYAKU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「ランク１売却金額」
	,RANK_2_BAIKYAKU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「ランク２売却金額」
	,RANK_3_BAIKYAKU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「ランク３売却金額」
	,RANK_4_BAIKYAKU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「ランク４売却金額」
	,RANK_5_BAIKYAKU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「ランク５売却金額」
	,HATCHUSAKI_KBN  CHAR(1) NOT NULL --「発注先区分」
	,CHOKUSO_FLG  CHAR(1) DEFAULT '1' NOT NULL --「直送フラグ」
	,HATCHU_TANI_NM  VARCHAR2(5) --「発注単位名称」
	,HATCHU_TANI_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「発注単位数量」
	,SAITEI_HATCHU_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「最低発注数量」
	,TOKUTEI_SHOHIN_KUBUNCHI_CD  CHAR(4) --「特定商品区分値コード」
	,CHOTATSU_BUMON_KUBUNCHI_CD  CHAR(4) --「調達部門区分値コード」
	,SHIIRESAKI_TORIHIKISAKI_CD  CHAR(9) --「仕入先取引先コード」
	,SHIRSK_TRHKSK_BSH_CD  CHAR(4) --「仕入先取引先部署コード」
	,SHOHIZEI_KBN  CHAR(1) NOT NULL --「消費税区分」
	,SHOHI_ZEIRITSU_CD  CHAR(2) DEFAULT '0' --「消費税率コード」
	,SK_ZIK_SHKKJ_KTI_SHKBTS_YH_KBN  CHAR(1) NOT NULL --「倉庫在庫出荷時個体識別要否区分」
	,SHIRSK_SHKKJ_KTI_SHKBTS_YH_KBN  CHAR(1) NOT NULL --「仕入先出荷時個体識別要否区分」
	,OEM_FLG  CHAR(1) DEFAULT '0' NOT NULL --「ＯＥＭフラグ」
	,HYOJUN_NOKI_NISSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「標準納期日数」
	,HAMBAI_TSUTATSU_HAKKAN_YM  CHAR(6) --「販売通達発簡年月」
	,ALSOK_LOGO_ARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「ＡＬＳＯＫロゴ有フラグ」
	,HATCHU_LOT_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「発注ロット数量」
	,KASAN_LOT_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「加算ロット数量」
	,TEKISEI_ZAIKO_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「適正在庫数量」
	,HATCHU_JOKEN_CMNT  VARCHAR2(100) --「発注条件コメント」
	,SHOHIN_SHUKAN_NAIYO  VARCHAR2(100) --「商品主管内容」
	,SHOKI_HOKAN_JIGYOSHO_CD  CHAR(6) --「初期保管事業所コード」
	,SHOKI_HOKAN_SOKO_CD  CHAR(6) --「初期保管倉庫コード」
	,CTTB_BNSKY_HMMI_BNRI_KBNC_CD_1  CHAR(4) --「調達部分析用品名分類区分値コード１」
	,CTTB_BNSKY_HMMI_BNRI_KBNC_CD_2  CHAR(4) --「調達部分析用品名分類区分値コード２」
	,CTTB_BNSKY_HMMI_BNRI_KBNC_CD_3  CHAR(4) --「調達部分析用品名分類区分値コード３」
	,HIKIATE_JOGAI_IKICHI_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「引当除外閾値数量」
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
	,CONSTRAINT ED2003M_PK PRIMARY KEY(
	 HIMMEI_CD
	,  HIMMEI_CHOTATSU_JOHO_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED2003M_TBL IS '品名調達情報マスタ'
/

COMMENT ON COLUMN ED2003M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED2003M_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED2003M_TBL.HIMMEI_CHOTATSU_JOHO_SN IS '品名調達情報連番'
/
COMMENT ON COLUMN ED2003M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED2003M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED2003M_TBL.KAKAKU_SETTEI_SHUBETSU_KBN IS '価格設定種別区分'
/
COMMENT ON COLUMN ED2003M_TBL.JODAI_AMT IS '上代金額'
/
COMMENT ON COLUMN ED2003M_TBL.SHIIRE_GENKA_AMT IS '仕入原価金額'
/
COMMENT ON COLUMN ED2003M_TBL.BAIKYAKU_GENKA_AMT IS '売却原価金額'
/
COMMENT ON COLUMN ED2003M_TBL.RANK_1_BAIKYAKU_AMT IS 'ランク１売却金額'
/
COMMENT ON COLUMN ED2003M_TBL.RANK_2_BAIKYAKU_AMT IS 'ランク２売却金額'
/
COMMENT ON COLUMN ED2003M_TBL.RANK_3_BAIKYAKU_AMT IS 'ランク３売却金額'
/
COMMENT ON COLUMN ED2003M_TBL.RANK_4_BAIKYAKU_AMT IS 'ランク４売却金額'
/
COMMENT ON COLUMN ED2003M_TBL.RANK_5_BAIKYAKU_AMT IS 'ランク５売却金額'
/
COMMENT ON COLUMN ED2003M_TBL.HATCHUSAKI_KBN IS '発注先区分'
/
COMMENT ON COLUMN ED2003M_TBL.CHOKUSO_FLG IS '直送フラグ'
/
COMMENT ON COLUMN ED2003M_TBL.HATCHU_TANI_NM IS '発注単位名称'
/
COMMENT ON COLUMN ED2003M_TBL.HATCHU_TANI_SURYO IS '発注単位数量'
/
COMMENT ON COLUMN ED2003M_TBL.SAITEI_HATCHU_SURYO IS '最低発注数量'
/
COMMENT ON COLUMN ED2003M_TBL.TOKUTEI_SHOHIN_KUBUNCHI_CD IS '特定商品区分値コード'
/
COMMENT ON COLUMN ED2003M_TBL.CHOTATSU_BUMON_KUBUNCHI_CD IS '調達部門区分値コード'
/
COMMENT ON COLUMN ED2003M_TBL.SHIIRESAKI_TORIHIKISAKI_CD IS '仕入先取引先コード'
/
COMMENT ON COLUMN ED2003M_TBL.SHIRSK_TRHKSK_BSH_CD IS '仕入先取引先部署コード'
/
COMMENT ON COLUMN ED2003M_TBL.SHOHIZEI_KBN IS '消費税区分'
/
COMMENT ON COLUMN ED2003M_TBL.SHOHI_ZEIRITSU_CD IS '消費税率コード'
/
COMMENT ON COLUMN ED2003M_TBL.SK_ZIK_SHKKJ_KTI_SHKBTS_YH_KBN IS '倉庫在庫出荷時個体識別要否区分'
/
COMMENT ON COLUMN ED2003M_TBL.SHIRSK_SHKKJ_KTI_SHKBTS_YH_KBN IS '仕入先出荷時個体識別要否区分'
/
COMMENT ON COLUMN ED2003M_TBL.OEM_FLG IS 'ＯＥＭフラグ'
/
COMMENT ON COLUMN ED2003M_TBL.HYOJUN_NOKI_NISSU IS '標準納期日数'
/
COMMENT ON COLUMN ED2003M_TBL.HAMBAI_TSUTATSU_HAKKAN_YM IS '販売通達発簡年月'
/
COMMENT ON COLUMN ED2003M_TBL.ALSOK_LOGO_ARI_FLG IS 'ＡＬＳＯＫロゴ有フラグ'
/
COMMENT ON COLUMN ED2003M_TBL.HATCHU_LOT_SURYO IS '発注ロット数量'
/
COMMENT ON COLUMN ED2003M_TBL.KASAN_LOT_SURYO IS '加算ロット数量'
/
COMMENT ON COLUMN ED2003M_TBL.TEKISEI_ZAIKO_SURYO IS '適正在庫数量'
/
COMMENT ON COLUMN ED2003M_TBL.HATCHU_JOKEN_CMNT IS '発注条件コメント'
/
COMMENT ON COLUMN ED2003M_TBL.SHOHIN_SHUKAN_NAIYO IS '商品主管内容'
/
COMMENT ON COLUMN ED2003M_TBL.SHOKI_HOKAN_JIGYOSHO_CD IS '初期保管事業所コード'
/
COMMENT ON COLUMN ED2003M_TBL.SHOKI_HOKAN_SOKO_CD IS '初期保管倉庫コード'
/
COMMENT ON COLUMN ED2003M_TBL.CTTB_BNSKY_HMMI_BNRI_KBNC_CD_1 IS '調達部分析用品名分類区分値コード１'
/
COMMENT ON COLUMN ED2003M_TBL.CTTB_BNSKY_HMMI_BNRI_KBNC_CD_2 IS '調達部分析用品名分類区分値コード２'
/
COMMENT ON COLUMN ED2003M_TBL.CTTB_BNSKY_HMMI_BNRI_KBNC_CD_3 IS '調達部分析用品名分類区分値コード３'
/
COMMENT ON COLUMN ED2003M_TBL.HIKIATE_JOGAI_IKICHI_SURYO IS '引当除外閾値数量'
/
COMMENT ON COLUMN ED2003M_TBL.SHINSEI_SHONIN_NO IS '申請承認番号'
/
COMMENT ON COLUMN ED2003M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED2003M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED2003M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED2003M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED2003M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED2003M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED2003M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED2003M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED2003M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED2003M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED2003M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED2003M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
