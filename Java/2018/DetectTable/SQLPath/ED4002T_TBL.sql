﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4002T_TBL.sql
-- 物理名：ED4002T_TBL
-- 論理名：支払申請明細テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4002T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4002T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SHIHARAI_SHINSEI_NO  CHAR(12) NOT NULL --「支払申請番号」
	,SHIHARAI_SHINSEI_MEISAI_SN  CHAR(14) NOT NULL --「支払申請明細連番」
	,SHHRISK_TRHKSK_BSH_CD  CHAR(4) --「支払先取引先部署コード」
	,SHHRISK_TRHKSK_SHHRI_JH_CD  CHAR(4) --「支払先取引先支払情報コード」
	,KEIRI_GYOMU_KBN  CHAR(3) --「経理業務区分」
	,JISSHI_JIGYOSHO_CD  CHAR(6) --「実施事業所コード」
	,JIGYO_SEGMENT_CD  CHAR(3) --「事業セグメントコード」
	,JURYO_SEIKYUSHO_NO  VARCHAR2(22) --「受領請求書番号」
	,JUCHU_KEIYAKU_NO  CHAR(15) --「受注契約番号」
	,GYM_ITK_HATCHUSHO_NO  CHAR(28) --「業務委託発注書番号」
	,KEIYAKUSAKI_TORIHIKISAKI_CD  CHAR(9) --「契約先取引先コード」
	,HATCHUSAKI_TORIHIKISAKI_CD  CHAR(9) --「発注先取引先コード」
	,GYOMU_TAISHOSAKI_CD  CHAR(9) --「業務対象先コード」
	,SEIKYU_SHIHARAI_CD  CHAR(3) --「請求支払コード」
	,HIMMEI_CD  CHAR(8) --「品名コード」
	,SEIKYU_YMD  DATE --「請求年月日」
	,ZEINUKI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「税抜金額」
	,SHOHIZEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「消費税金額」
	,ZEIKOMI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「税込金額」
	,SHOHIZEI_KBN  CHAR(1) NOT NULL --「消費税区分」
	,SHOHI_ZEIRITSU_CD  CHAR(2) --「消費税率コード」
	,CHOSEI_SHOHIZEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「調整消費税金額」
	,CHOSEI_SHOHIZEI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「調整消費税データフラグ」
	,SAGYO_KAISHI_YMD  DATE --「作業開始年月日」
	,SAGYO_SHURYO_YMD  DATE --「作業終了年月日」
	,SHHRI_SHNSIMT_JGYSH_CD  CHAR(6) --「支払申請元事業所コード」
	,KANJO_KAMOKU_CD  VARCHAR2(12) --「勘定科目コード」
	,HOJO_KAMOKU_CD  VARCHAR2(12) --「補助科目コード」
	,SEIKYU_DAIKO_IRAISHO_NO  CHAR(10) --「請求代行依頼書番号」
	,SIKY_DIK_SIKY_TRHKSK_CD  CHAR(9) --「請求代行請求取引先コード」
	,SEIKYU_DAIKO_BIKO  VARCHAR2(100) --「請求代行備考」
	,SEIKYU_DAIKO_JUCHU_JIGYOSHO_CD  CHAR(6) --「請求代行受注事業所コード」
	,SIKY_DIK_JCH_TNTSH_SHIN_NO  VARCHAR2(8) --「請求代行受注担当者社員番号」
	,SHIWAKE_SHIKIBETSU_CD  CHAR(8) NOT NULL --「仕訳識別コード」
	,JUCHU_KANRI_NO_KBN  CHAR(1) --「受注管理番号区分」
	,KEIYAKU_CHOKI_RINJI_KBN  CHAR(1) --「契約長期臨時区分」
	,CHUMON_KBN  CHAR(1) --「注文区分」
	,SHUKKA_KBN  CHAR(1) --「出荷区分」
	,KOJI_KBN  CHAR(1) --「工事区分」
	,HIMMOKU_KBN  CHAR(1) --「品目区分」
	,HATCHUSAKI_KBN  CHAR(1) --「発注先区分」
	,CHOZOHIN_KBN  CHAR(2) --「貯蔵品区分」
	,ZAIKO_HIMMOKU_KBN  CHAR(1) --「在庫品目区分」
	,HENKIN_KBN  CHAR(1) --「返金区分」
	,SHIZAI_SOBI_KBN  CHAR(1) --「資材装備区分」
	,SHIWAKE_PATTERN_HOJO_CD  CHAR(6) --「仕訳パターン補助コード」
	,SHOHIN_SERVICE_BUNRUI_CD  CHAR(6) --「商品サービス分類コード」
	,SHIWAKEMOTO_DEMPYO_NO  CHAR(20) --「仕訳元伝票番号」
	,SHIWAKEMOTO_DEMPYO_NO_BN  CHAR(20) --「仕訳元伝票番号枝番」
	,SHWKMT_DMPY_MISIGY_NO  CHAR(20) --「仕訳元伝票明細行番号」
	,SHWKMT_DMPY_MISIGY_NO_BN  CHAR(20) --「仕訳元伝票明細行番号枝番」
	,RONRI_SAKUJO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「論理削除フラグ」
	,GM_ITK_SHRI_YTI_SHRI_MISI_SN  CHAR(14) --「業務委託支払予定支払明細連番」
	,SHIIRE_DEMPYO_NO  CHAR(17) --「仕入伝票番号」
	,SHIIRE_DEMPYONAI_SN  CHAR(14) --「仕入伝票内連番」
	,SHIIRE_DEMPYO_MEISAI_SN  NUMBER(3,0) --「仕入伝票明細連番」
	,NOHIN_DEMPYO_NO  CHAR(17) --「納品伝票番号」
	,NOHIN_DEMPYO_MEISAI_SN  CHAR(14) --「納品伝票明細連番」
	,BUNNO_KAISU  NUMBER(9,0) --「分納回数」
	,KOJI_CHUMONSHO_NO  CHAR(13) --「工事注文書番号」
	,KOJI_CHUMONSHO_KAIHAN_NO  CHAR(1) --「工事注文書改版番号」
	,KOJI_CHUMONSHO_MEISAI_SN  CHAR(14) --「工事注文書明細連番」
	,SHURI_DEMPYO_NO  CHAR(17) --「修理伝票番号」
	,SHURI_DEMPYO_MEISAI_SN  CHAR(14) --「修理伝票明細連番」
	,HEMPIN_DEMPYO_NO  CHAR(17) --「返品伝票番号」
	,HEMPIN_DEMPYO_MEISAI_SN  CHAR(14) --「返品伝票明細連番」
	,SEIKYU_DAIKO_KANRI_NO  CHAR(13) --「請求代行管理番号」
	,SEIKYU_DAIKO_TESURYO_SEIKYU_YM  CHAR(6) --「請求代行手数料請求年月」
	,SEIKYU_KANRI_JIGYOSHO_CD  CHAR(6) --「請求管理事業所コード」
	,SEIKYUSHO_NO  CHAR(14) --「請求書番号」
	,SEIKYU_DAIKO_NYUKIN_YMD  DATE --「請求代行入金年月日」
	,HENKIN_SHINSEI_NO  CHAR(14) --「返金申請番号」
	,JOI_JIGYOSHO_CD  CHAR(6) --「上位事業所コード」
	,KEIJO_YMD  DATE --「計上年月日」
	,KAIKEI_SHORI_YMD  DATE --「会計処理年月日」
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
	,CONSTRAINT ED4002T_PK PRIMARY KEY(
	 SHIHARAI_SHINSEI_NO
	,  SHIHARAI_SHINSEI_MEISAI_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4002T_TBL IS '支払申請明細テーブル'
/

COMMENT ON COLUMN ED4002T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED4002T_TBL.SHIHARAI_SHINSEI_NO IS '支払申請番号'
/
COMMENT ON COLUMN ED4002T_TBL.SHIHARAI_SHINSEI_MEISAI_SN IS '支払申請明細連番'
/
COMMENT ON COLUMN ED4002T_TBL.SHHRISK_TRHKSK_BSH_CD IS '支払先取引先部署コード'
/
COMMENT ON COLUMN ED4002T_TBL.SHHRISK_TRHKSK_SHHRI_JH_CD IS '支払先取引先支払情報コード'
/
COMMENT ON COLUMN ED4002T_TBL.KEIRI_GYOMU_KBN IS '経理業務区分'
/
COMMENT ON COLUMN ED4002T_TBL.JISSHI_JIGYOSHO_CD IS '実施事業所コード'
/
COMMENT ON COLUMN ED4002T_TBL.JIGYO_SEGMENT_CD IS '事業セグメントコード'
/
COMMENT ON COLUMN ED4002T_TBL.JURYO_SEIKYUSHO_NO IS '受領請求書番号'
/
COMMENT ON COLUMN ED4002T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED4002T_TBL.GYM_ITK_HATCHUSHO_NO IS '業務委託発注書番号'
/
COMMENT ON COLUMN ED4002T_TBL.KEIYAKUSAKI_TORIHIKISAKI_CD IS '契約先取引先コード'
/
COMMENT ON COLUMN ED4002T_TBL.HATCHUSAKI_TORIHIKISAKI_CD IS '発注先取引先コード'
/
COMMENT ON COLUMN ED4002T_TBL.GYOMU_TAISHOSAKI_CD IS '業務対象先コード'
/
COMMENT ON COLUMN ED4002T_TBL.SEIKYU_SHIHARAI_CD IS '請求支払コード'
/
COMMENT ON COLUMN ED4002T_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED4002T_TBL.SEIKYU_YMD IS '請求年月日'
/
COMMENT ON COLUMN ED4002T_TBL.ZEINUKI_AMT IS '税抜金額'
/
COMMENT ON COLUMN ED4002T_TBL.SHOHIZEI_AMT IS '消費税金額'
/
COMMENT ON COLUMN ED4002T_TBL.ZEIKOMI_AMT IS '税込金額'
/
COMMENT ON COLUMN ED4002T_TBL.SHOHIZEI_KBN IS '消費税区分'
/
COMMENT ON COLUMN ED4002T_TBL.SHOHI_ZEIRITSU_CD IS '消費税率コード'
/
COMMENT ON COLUMN ED4002T_TBL.CHOSEI_SHOHIZEI_AMT IS '調整消費税金額'
/
COMMENT ON COLUMN ED4002T_TBL.CHOSEI_SHOHIZEI_FLG IS '調整消費税データフラグ'
/
COMMENT ON COLUMN ED4002T_TBL.SAGYO_KAISHI_YMD IS '作業開始年月日'
/
COMMENT ON COLUMN ED4002T_TBL.SAGYO_SHURYO_YMD IS '作業終了年月日'
/
COMMENT ON COLUMN ED4002T_TBL.SHHRI_SHNSIMT_JGYSH_CD IS '支払申請元事業所コード'
/
COMMENT ON COLUMN ED4002T_TBL.KANJO_KAMOKU_CD IS '勘定科目コード'
/
COMMENT ON COLUMN ED4002T_TBL.HOJO_KAMOKU_CD IS '補助科目コード'
/
COMMENT ON COLUMN ED4002T_TBL.SEIKYU_DAIKO_IRAISHO_NO IS '請求代行依頼書番号'
/
COMMENT ON COLUMN ED4002T_TBL.SIKY_DIK_SIKY_TRHKSK_CD IS '請求代行請求取引先コード'
/
COMMENT ON COLUMN ED4002T_TBL.SEIKYU_DAIKO_BIKO IS '請求代行備考'
/
COMMENT ON COLUMN ED4002T_TBL.SEIKYU_DAIKO_JUCHU_JIGYOSHO_CD IS '請求代行受注事業所コード'
/
COMMENT ON COLUMN ED4002T_TBL.SIKY_DIK_JCH_TNTSH_SHIN_NO IS '請求代行受注担当者社員番号'
/
COMMENT ON COLUMN ED4002T_TBL.SHIWAKE_SHIKIBETSU_CD IS '仕訳識別コード'
/
COMMENT ON COLUMN ED4002T_TBL.JUCHU_KANRI_NO_KBN IS '受注管理番号区分'
/
COMMENT ON COLUMN ED4002T_TBL.KEIYAKU_CHOKI_RINJI_KBN IS '契約長期臨時区分'
/
COMMENT ON COLUMN ED4002T_TBL.CHUMON_KBN IS '注文区分'
/
COMMENT ON COLUMN ED4002T_TBL.SHUKKA_KBN IS '出荷区分'
/
COMMENT ON COLUMN ED4002T_TBL.KOJI_KBN IS '工事区分'
/
COMMENT ON COLUMN ED4002T_TBL.HIMMOKU_KBN IS '品目区分'
/
COMMENT ON COLUMN ED4002T_TBL.HATCHUSAKI_KBN IS '発注先区分'
/
COMMENT ON COLUMN ED4002T_TBL.CHOZOHIN_KBN IS '貯蔵品区分'
/
COMMENT ON COLUMN ED4002T_TBL.ZAIKO_HIMMOKU_KBN IS '在庫品目区分'
/
COMMENT ON COLUMN ED4002T_TBL.HENKIN_KBN IS '返金区分'
/
COMMENT ON COLUMN ED4002T_TBL.SHIZAI_SOBI_KBN IS '資材装備区分'
/
COMMENT ON COLUMN ED4002T_TBL.SHIWAKE_PATTERN_HOJO_CD IS '仕訳パターン補助コード'
/
COMMENT ON COLUMN ED4002T_TBL.SHOHIN_SERVICE_BUNRUI_CD IS '商品サービス分類コード'
/
COMMENT ON COLUMN ED4002T_TBL.SHIWAKEMOTO_DEMPYO_NO IS '仕訳元伝票番号'
/
COMMENT ON COLUMN ED4002T_TBL.SHIWAKEMOTO_DEMPYO_NO_BN IS '仕訳元伝票番号枝番'
/
COMMENT ON COLUMN ED4002T_TBL.SHWKMT_DMPY_MISIGY_NO IS '仕訳元伝票明細行番号'
/
COMMENT ON COLUMN ED4002T_TBL.SHWKMT_DMPY_MISIGY_NO_BN IS '仕訳元伝票明細行番号枝番'
/
COMMENT ON COLUMN ED4002T_TBL.RONRI_SAKUJO_FLG IS '論理削除フラグ'
/
COMMENT ON COLUMN ED4002T_TBL.GM_ITK_SHRI_YTI_SHRI_MISI_SN IS '業務委託支払予定支払明細連番'
/
COMMENT ON COLUMN ED4002T_TBL.SHIIRE_DEMPYO_NO IS '仕入伝票番号'
/
COMMENT ON COLUMN ED4002T_TBL.SHIIRE_DEMPYONAI_SN IS '仕入伝票内連番'
/
COMMENT ON COLUMN ED4002T_TBL.SHIIRE_DEMPYO_MEISAI_SN IS '仕入伝票明細連番'
/
COMMENT ON COLUMN ED4002T_TBL.NOHIN_DEMPYO_NO IS '納品伝票番号'
/
COMMENT ON COLUMN ED4002T_TBL.NOHIN_DEMPYO_MEISAI_SN IS '納品伝票明細連番'
/
COMMENT ON COLUMN ED4002T_TBL.BUNNO_KAISU IS '分納回数'
/
COMMENT ON COLUMN ED4002T_TBL.KOJI_CHUMONSHO_NO IS '工事注文書番号'
/
COMMENT ON COLUMN ED4002T_TBL.KOJI_CHUMONSHO_KAIHAN_NO IS '工事注文書改版番号'
/
COMMENT ON COLUMN ED4002T_TBL.KOJI_CHUMONSHO_MEISAI_SN IS '工事注文書明細連番'
/
COMMENT ON COLUMN ED4002T_TBL.SHURI_DEMPYO_NO IS '修理伝票番号'
/
COMMENT ON COLUMN ED4002T_TBL.SHURI_DEMPYO_MEISAI_SN IS '修理伝票明細連番'
/
COMMENT ON COLUMN ED4002T_TBL.HEMPIN_DEMPYO_NO IS '返品伝票番号'
/
COMMENT ON COLUMN ED4002T_TBL.HEMPIN_DEMPYO_MEISAI_SN IS '返品伝票明細連番'
/
COMMENT ON COLUMN ED4002T_TBL.SEIKYU_DAIKO_KANRI_NO IS '請求代行管理番号'
/
COMMENT ON COLUMN ED4002T_TBL.SEIKYU_DAIKO_TESURYO_SEIKYU_YM IS '請求代行手数料請求年月'
/
COMMENT ON COLUMN ED4002T_TBL.SEIKYU_KANRI_JIGYOSHO_CD IS '請求管理事業所コード'
/
COMMENT ON COLUMN ED4002T_TBL.SEIKYUSHO_NO IS '請求書番号'
/
COMMENT ON COLUMN ED4002T_TBL.SEIKYU_DAIKO_NYUKIN_YMD IS '請求代行入金年月日'
/
COMMENT ON COLUMN ED4002T_TBL.HENKIN_SHINSEI_NO IS '返金申請番号'
/
COMMENT ON COLUMN ED4002T_TBL.JOI_JIGYOSHO_CD IS '上位事業所コード'
/
COMMENT ON COLUMN ED4002T_TBL.KEIJO_YMD IS '計上年月日'
/
COMMENT ON COLUMN ED4002T_TBL.KAIKEI_SHORI_YMD IS '会計処理年月日'
/
COMMENT ON COLUMN ED4002T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4002T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4002T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4002T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4002T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4002T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4002T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4002T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4002T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4002T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4002T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4002T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
