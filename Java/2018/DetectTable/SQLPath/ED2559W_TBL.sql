﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED2559W_TBL.sql
-- 物理名：ED2559W_TBL
-- 論理名：業務委託支払予定テーブルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED2559W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED2559W_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,GM_ITK_SHRI_YTI_SHRI_MISI_SN  CHAR(14) NOT NULL --「業務委託支払予定支払明細連番」
	,GYOMU_SHITEI_KBN  CHAR(2) NOT NULL --「業務指定区分」
	,KENSHU_KANRYOMOTO_JIGYOSHO_CD  CHAR(6) NOT NULL --「検収完了元事業所コード」
	,SHIHARAISAKI_TORIHIKISAKI_CD  CHAR(9) NOT NULL --「支払先取引先コード」
	,SHHRISK_TRHKSK_SHHRI_JH_CD  CHAR(4) NOT NULL --「支払先取引先支払情報コード」
	,KENSHU_YMD  DATE NOT NULL --「検収年月日」
	,SHIHARAI_YOTEI_YMD  DATE NOT NULL --「支払予定年月日」
	,JISSHI_JIGYOSHO_CD  CHAR(6) NOT NULL --「実施事業所コード」
	,JIGYO_SEGMENT_CD  CHAR(3) NOT NULL --「事業セグメントコード」
	,GYM_ITK_HATCHUSHO_NO  CHAR(28) --「業務委託発注書番号」
	,KEIYAKUSAKI_TORIHIKISAKI_CD  CHAR(9) NOT NULL --「契約先取引先コード」
	,HATCHUSAKI_TORIHIKISAKI_CD  CHAR(9) NOT NULL --「発注先取引先コード」
	,GYOMU_TAISHOSAKI_CD  CHAR(9) NOT NULL --「業務対象先コード」
	,ZEINUKI_AMT  NUMBER(13,0) NOT NULL --「税抜金額」
	,SHOHIZEI_AMT  NUMBER(13,0) NOT NULL --「消費税金額」
	,ZEIKOMI_AMT  NUMBER(13,0) NOT NULL --「税込金額」
	,SHOHIZEI_KBN  CHAR(1) NOT NULL --「消費税区分」
	,SHOHI_ZEIRITSU_CD  CHAR(2) NOT NULL --「消費税率コード」
	,SEIKYU_SHIHARAI_CD  CHAR(3) NOT NULL --「請求支払コード」
	,SAGYO_KAISHI_YMD  DATE NOT NULL --「作業開始年月日」
	,SAGYO_SHURYO_YMD  DATE NOT NULL --「作業終了年月日」
	,RONRI_SAKUJO_FLG  CHAR(1) NOT NULL --「論理削除フラグ」
	,HASSEIMOTO_GYOMU_KBN  CHAR(3) NOT NULL --「発生元業務区分」
	,HASSEIMOTO_KINO_ID  CHAR(15) NOT NULL --「発生元機能ＩＤ」
	,SHIWAKE_SHIKIBETSU_CD  CHAR(8) NOT NULL --「仕訳識別コード」
	,SHIWAKEMOTO_DEMPYO_NO  CHAR(20) NOT NULL --「仕訳元伝票番号」
	,SHIWAKEMOTO_DEMPYO_NO_BN  CHAR(20) NOT NULL --「仕訳元伝票番号枝番」
	,JUCHU_KANRI_NO_KBN  CHAR(1) --「受注管理番号区分」
	,KEIYAKU_CHOKI_RINJI_KBN  CHAR(1) --「契約長期臨時区分」
	,SHIHARAI_JIGYOSHO_CD  CHAR(6) --「支払事業所コード」
	,GLOVIA_SHWK_DMPY_MISI_TEKIYO  VARCHAR2(64) --「ＧＬＯＶＩＡ仕訳伝票明細摘要」
	,TORIHIKISAKI_CD  CHAR(9) --「取引先コード」
	,SHOHIN_SERVICE_BUNRUI_CD  CHAR(6) --「商品サービス分類コード」
	,KEIJO_YMD  DATE NOT NULL --「計上年月日」
	,JUCHU_JIGYOSHO_CD  CHAR(6) --「受注事業所コード」
	,SHIWAKE_TORIKESHI_FLG  CHAR(1) NOT NULL --「仕訳取消フラグ」
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
	,CONSTRAINT ED2559W_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  GM_ITK_SHRI_YTI_SHRI_MISI_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED2559W_TBL IS '業務委託支払予定テーブルワーク'
/

COMMENT ON COLUMN ED2559W_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED2559W_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED2559W_TBL.GM_ITK_SHRI_YTI_SHRI_MISI_SN IS '業務委託支払予定支払明細連番'
/
COMMENT ON COLUMN ED2559W_TBL.GYOMU_SHITEI_KBN IS '業務指定区分'
/
COMMENT ON COLUMN ED2559W_TBL.KENSHU_KANRYOMOTO_JIGYOSHO_CD IS '検収完了元事業所コード'
/
COMMENT ON COLUMN ED2559W_TBL.SHIHARAISAKI_TORIHIKISAKI_CD IS '支払先取引先コード'
/
COMMENT ON COLUMN ED2559W_TBL.SHHRISK_TRHKSK_SHHRI_JH_CD IS '支払先取引先支払情報コード'
/
COMMENT ON COLUMN ED2559W_TBL.KENSHU_YMD IS '検収年月日'
/
COMMENT ON COLUMN ED2559W_TBL.SHIHARAI_YOTEI_YMD IS '支払予定年月日'
/
COMMENT ON COLUMN ED2559W_TBL.JISSHI_JIGYOSHO_CD IS '実施事業所コード'
/
COMMENT ON COLUMN ED2559W_TBL.JIGYO_SEGMENT_CD IS '事業セグメントコード'
/
COMMENT ON COLUMN ED2559W_TBL.GYM_ITK_HATCHUSHO_NO IS '業務委託発注書番号'
/
COMMENT ON COLUMN ED2559W_TBL.KEIYAKUSAKI_TORIHIKISAKI_CD IS '契約先取引先コード'
/
COMMENT ON COLUMN ED2559W_TBL.HATCHUSAKI_TORIHIKISAKI_CD IS '発注先取引先コード'
/
COMMENT ON COLUMN ED2559W_TBL.GYOMU_TAISHOSAKI_CD IS '業務対象先コード'
/
COMMENT ON COLUMN ED2559W_TBL.ZEINUKI_AMT IS '税抜金額'
/
COMMENT ON COLUMN ED2559W_TBL.SHOHIZEI_AMT IS '消費税金額'
/
COMMENT ON COLUMN ED2559W_TBL.ZEIKOMI_AMT IS '税込金額'
/
COMMENT ON COLUMN ED2559W_TBL.SHOHIZEI_KBN IS '消費税区分'
/
COMMENT ON COLUMN ED2559W_TBL.SHOHI_ZEIRITSU_CD IS '消費税率コード'
/
COMMENT ON COLUMN ED2559W_TBL.SEIKYU_SHIHARAI_CD IS '請求支払コード'
/
COMMENT ON COLUMN ED2559W_TBL.SAGYO_KAISHI_YMD IS '作業開始年月日'
/
COMMENT ON COLUMN ED2559W_TBL.SAGYO_SHURYO_YMD IS '作業終了年月日'
/
COMMENT ON COLUMN ED2559W_TBL.RONRI_SAKUJO_FLG IS '論理削除フラグ'
/
COMMENT ON COLUMN ED2559W_TBL.HASSEIMOTO_GYOMU_KBN IS '発生元業務区分'
/
COMMENT ON COLUMN ED2559W_TBL.HASSEIMOTO_KINO_ID IS '発生元機能ＩＤ'
/
COMMENT ON COLUMN ED2559W_TBL.SHIWAKE_SHIKIBETSU_CD IS '仕訳識別コード'
/
COMMENT ON COLUMN ED2559W_TBL.SHIWAKEMOTO_DEMPYO_NO IS '仕訳元伝票番号'
/
COMMENT ON COLUMN ED2559W_TBL.SHIWAKEMOTO_DEMPYO_NO_BN IS '仕訳元伝票番号枝番'
/
COMMENT ON COLUMN ED2559W_TBL.JUCHU_KANRI_NO_KBN IS '受注管理番号区分'
/
COMMENT ON COLUMN ED2559W_TBL.KEIYAKU_CHOKI_RINJI_KBN IS '契約長期臨時区分'
/
COMMENT ON COLUMN ED2559W_TBL.SHIHARAI_JIGYOSHO_CD IS '支払事業所コード'
/
COMMENT ON COLUMN ED2559W_TBL.GLOVIA_SHWK_DMPY_MISI_TEKIYO IS 'ＧＬＯＶＩＡ仕訳伝票明細摘要'
/
COMMENT ON COLUMN ED2559W_TBL.TORIHIKISAKI_CD IS '取引先コード'
/
COMMENT ON COLUMN ED2559W_TBL.SHOHIN_SERVICE_BUNRUI_CD IS '商品サービス分類コード'
/
COMMENT ON COLUMN ED2559W_TBL.KEIJO_YMD IS '計上年月日'
/
COMMENT ON COLUMN ED2559W_TBL.JUCHU_JIGYOSHO_CD IS '受注事業所コード'
/
COMMENT ON COLUMN ED2559W_TBL.SHIWAKE_TORIKESHI_FLG IS '仕訳取消フラグ'
/
COMMENT ON COLUMN ED2559W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED2559W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED2559W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED2559W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED2559W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED2559W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED2559W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED2559W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED2559W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED2559W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED2559W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED2559W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
