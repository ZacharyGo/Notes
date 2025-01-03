﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4004T_TBL.sql
-- 物理名：ED4004T_TBL
-- 論理名：検収完了明細テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4004T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4004T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KENSHU_KANRYO_NO  CHAR(12) NOT NULL --「検収完了番号」
	,KENSHU_KANRYO_MEISAI_SN  CHAR(14) NOT NULL --「検収完了明細連番」
	,JISSHI_JIGYOSHO_CD  CHAR(6) --「実施事業所コード」
	,JIGYO_SEGMENT_CD  CHAR(3) --「事業セグメントコード」
	,JUCHU_KEIYAKU_NO  CHAR(15) --「受注契約番号」
	,GYM_ITK_HATCHUSHO_NO  CHAR(28) --「業務委託発注書番号」
	,KEIYAKUSAKI_TORIHIKISAKI_CD  CHAR(9) --「契約先取引先コード」
	,HATCHUSAKI_TORIHIKISAKI_CD  CHAR(9) --「発注先取引先コード」
	,GYOMU_TAISHOSAKI_CD  CHAR(9) --「業務対象先コード」
	,SEIKYU_SHIHARAI_CD  CHAR(3) --「請求支払コード」
	,HIMMEI_CD  CHAR(8) --「品名コード」
	,ZEINUKI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「税抜金額」
	,SHOHIZEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「消費税金額」
	,ZEIKOMI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「税込金額」
	,SHOHIZEI_KBN  CHAR(1) NOT NULL --「消費税区分」
	,SHOHI_ZEIRITSU_CD  CHAR(2) --「消費税率コード」
	,SAGYO_KAISHI_YMD  DATE --「作業開始年月日」
	,SAGYO_SHURYO_YMD  DATE --「作業終了年月日」
	,SHIHARAI_SHINSEIZUMI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「支払申請済フラグ」
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
	,HEMPIN_DEMPYO_MEISAI_SN  CHAR(14) --「返品伝票明細連番」
	,HEMPIN_DEMPYO_NO  CHAR(17) --「返品伝票番号」
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
	,CONSTRAINT ED4004T_PK PRIMARY KEY(
	 KENSHU_KANRYO_NO
	,  KENSHU_KANRYO_MEISAI_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4004T_TBL IS '検収完了明細テーブル'
/

COMMENT ON COLUMN ED4004T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED4004T_TBL.KENSHU_KANRYO_NO IS '検収完了番号'
/
COMMENT ON COLUMN ED4004T_TBL.KENSHU_KANRYO_MEISAI_SN IS '検収完了明細連番'
/
COMMENT ON COLUMN ED4004T_TBL.JISSHI_JIGYOSHO_CD IS '実施事業所コード'
/
COMMENT ON COLUMN ED4004T_TBL.JIGYO_SEGMENT_CD IS '事業セグメントコード'
/
COMMENT ON COLUMN ED4004T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED4004T_TBL.GYM_ITK_HATCHUSHO_NO IS '業務委託発注書番号'
/
COMMENT ON COLUMN ED4004T_TBL.KEIYAKUSAKI_TORIHIKISAKI_CD IS '契約先取引先コード'
/
COMMENT ON COLUMN ED4004T_TBL.HATCHUSAKI_TORIHIKISAKI_CD IS '発注先取引先コード'
/
COMMENT ON COLUMN ED4004T_TBL.GYOMU_TAISHOSAKI_CD IS '業務対象先コード'
/
COMMENT ON COLUMN ED4004T_TBL.SEIKYU_SHIHARAI_CD IS '請求支払コード'
/
COMMENT ON COLUMN ED4004T_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED4004T_TBL.ZEINUKI_AMT IS '税抜金額'
/
COMMENT ON COLUMN ED4004T_TBL.SHOHIZEI_AMT IS '消費税金額'
/
COMMENT ON COLUMN ED4004T_TBL.ZEIKOMI_AMT IS '税込金額'
/
COMMENT ON COLUMN ED4004T_TBL.SHOHIZEI_KBN IS '消費税区分'
/
COMMENT ON COLUMN ED4004T_TBL.SHOHI_ZEIRITSU_CD IS '消費税率コード'
/
COMMENT ON COLUMN ED4004T_TBL.SAGYO_KAISHI_YMD IS '作業開始年月日'
/
COMMENT ON COLUMN ED4004T_TBL.SAGYO_SHURYO_YMD IS '作業終了年月日'
/
COMMENT ON COLUMN ED4004T_TBL.SHIHARAI_SHINSEIZUMI_FLG IS '支払申請済フラグ'
/
COMMENT ON COLUMN ED4004T_TBL.RONRI_SAKUJO_FLG IS '論理削除フラグ'
/
COMMENT ON COLUMN ED4004T_TBL.GM_ITK_SHRI_YTI_SHRI_MISI_SN IS '業務委託支払予定支払明細連番'
/
COMMENT ON COLUMN ED4004T_TBL.SHIIRE_DEMPYO_NO IS '仕入伝票番号'
/
COMMENT ON COLUMN ED4004T_TBL.SHIIRE_DEMPYONAI_SN IS '仕入伝票内連番'
/
COMMENT ON COLUMN ED4004T_TBL.SHIIRE_DEMPYO_MEISAI_SN IS '仕入伝票明細連番'
/
COMMENT ON COLUMN ED4004T_TBL.NOHIN_DEMPYO_NO IS '納品伝票番号'
/
COMMENT ON COLUMN ED4004T_TBL.NOHIN_DEMPYO_MEISAI_SN IS '納品伝票明細連番'
/
COMMENT ON COLUMN ED4004T_TBL.BUNNO_KAISU IS '分納回数'
/
COMMENT ON COLUMN ED4004T_TBL.KOJI_CHUMONSHO_NO IS '工事注文書番号'
/
COMMENT ON COLUMN ED4004T_TBL.KOJI_CHUMONSHO_KAIHAN_NO IS '工事注文書改版番号'
/
COMMENT ON COLUMN ED4004T_TBL.KOJI_CHUMONSHO_MEISAI_SN IS '工事注文書明細連番'
/
COMMENT ON COLUMN ED4004T_TBL.SHURI_DEMPYO_NO IS '修理伝票番号'
/
COMMENT ON COLUMN ED4004T_TBL.SHURI_DEMPYO_MEISAI_SN IS '修理伝票明細連番'
/
COMMENT ON COLUMN ED4004T_TBL.HEMPIN_DEMPYO_MEISAI_SN IS '返品伝票明細連番'
/
COMMENT ON COLUMN ED4004T_TBL.HEMPIN_DEMPYO_NO IS '返品伝票番号'
/
COMMENT ON COLUMN ED4004T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4004T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4004T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4004T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4004T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4004T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4004T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4004T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4004T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4004T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4004T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4004T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
