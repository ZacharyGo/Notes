﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0535T_TBL.sql
-- 物理名：ED0535T_TBL
-- 論理名：受注変更テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0535T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0535T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) NOT NULL --「受注契約変更番号」
	,KEIYAKU_HENKO_TEKIYO_YMD  DATE --「契約変更適用年月日」
	,JUCHU_HIZUKE_HENKOARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「受注日付変更有フラグ」
	,HENKO_RIYU_NAIYO  VARCHAR2(50) --「変更理由内容」
	,KEIYAKU_HENKO_SHONINYO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「契約変更承認要フラグ」
	,KIYK_HNK_NYRYK_SHIN_NO  VARCHAR2(8) --「契約変更入力社員番号」
	,TORIKOMIMOTO_KBN  CHAR(2) NOT NULL --「取込元区分」
	,KANREN_JUCHU_KEIYAKU_NO  CHAR(15) --「関連受注契約番号」
	,JUCHU_STATUS_KBN  CHAR(2) NOT NULL --「受注ステータス区分」
	,JUCHU_SHUBETSU_KBN  CHAR(2) NOT NULL --「受注種別区分」
	,TEKIYO_KIJUN_YMD  DATE --「適用基準年月日」
	,GCNC_SOSINZUMI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「ＧＣＮＣ送信済フラグ」
	,RYOHANKI_SOSINZUMI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「量販機送信済フラグ」
	,NHS_SOSINZUMI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「ＮＨＳ送信済フラグ」
	,JUCHU_HENKO_CANCEL_FLG  CHAR(1) DEFAULT '0' NOT NULL --「受注変更キャンセルフラグ」
	,KEIYAKU_KBN  CHAR(1) NOT NULL --「契約区分」
	,SHIZAI_KOJI_JOHO_ARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「資材工事情報有フラグ」
	,UNYO_JOHO_ARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「運用情報有フラグ」
	,SHIZAI_KOJI_JOHO_TRKZM_FLG  CHAR(1) DEFAULT '0' NOT NULL --「資材工事情報登録済フラグ」
	,KEIBIKEI_SOSINZUMI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「警備系送信済フラグ」
	,JCH_KIYK_HNK_RRK_MSKSI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「受注契約変更履歴未作成フラグ」
	,UNYO_JOHO_TRK_KBN  CHAR(1) NOT NULL --「運用情報登録区分」
	,KAITEI_RIYU_KBN  CHAR(2) --「改定理由区分」
	,IRAI_HOSOKU_JIKO  VARCHAR2(200) --「依頼補足事項」
	,KEIRI_TORIKOMI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「経理取込フラグ」
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
	,CONSTRAINT ED0535T_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  JUCHU_KEIYAKU_HENKO_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0535T_TBL IS '受注変更テーブル'
/

COMMENT ON COLUMN ED0535T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0535T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED0535T_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED0535T_TBL.KEIYAKU_HENKO_TEKIYO_YMD IS '契約変更適用年月日'
/
COMMENT ON COLUMN ED0535T_TBL.JUCHU_HIZUKE_HENKOARI_FLG IS '受注日付変更有フラグ'
/
COMMENT ON COLUMN ED0535T_TBL.HENKO_RIYU_NAIYO IS '変更理由内容'
/
COMMENT ON COLUMN ED0535T_TBL.KEIYAKU_HENKO_SHONINYO_FLG IS '契約変更承認要フラグ'
/
COMMENT ON COLUMN ED0535T_TBL.KIYK_HNK_NYRYK_SHIN_NO IS '契約変更入力社員番号'
/
COMMENT ON COLUMN ED0535T_TBL.TORIKOMIMOTO_KBN IS '取込元区分'
/
COMMENT ON COLUMN ED0535T_TBL.KANREN_JUCHU_KEIYAKU_NO IS '関連受注契約番号'
/
COMMENT ON COLUMN ED0535T_TBL.JUCHU_STATUS_KBN IS '受注ステータス区分'
/
COMMENT ON COLUMN ED0535T_TBL.JUCHU_SHUBETSU_KBN IS '受注種別区分'
/
COMMENT ON COLUMN ED0535T_TBL.TEKIYO_KIJUN_YMD IS '適用基準年月日'
/
COMMENT ON COLUMN ED0535T_TBL.GCNC_SOSINZUMI_FLG IS 'ＧＣＮＣ送信済フラグ'
/
COMMENT ON COLUMN ED0535T_TBL.RYOHANKI_SOSINZUMI_FLG IS '量販機送信済フラグ'
/
COMMENT ON COLUMN ED0535T_TBL.NHS_SOSINZUMI_FLG IS 'ＮＨＳ送信済フラグ'
/
COMMENT ON COLUMN ED0535T_TBL.JUCHU_HENKO_CANCEL_FLG IS '受注変更キャンセルフラグ'
/
COMMENT ON COLUMN ED0535T_TBL.KEIYAKU_KBN IS '契約区分'
/
COMMENT ON COLUMN ED0535T_TBL.SHIZAI_KOJI_JOHO_ARI_FLG IS '資材工事情報有フラグ'
/
COMMENT ON COLUMN ED0535T_TBL.UNYO_JOHO_ARI_FLG IS '運用情報有フラグ'
/
COMMENT ON COLUMN ED0535T_TBL.SHIZAI_KOJI_JOHO_TRKZM_FLG IS '資材工事情報登録済フラグ'
/
COMMENT ON COLUMN ED0535T_TBL.KEIBIKEI_SOSINZUMI_FLG IS '警備系送信済フラグ'
/
COMMENT ON COLUMN ED0535T_TBL.JCH_KIYK_HNK_RRK_MSKSI_FLG IS '受注契約変更履歴未作成フラグ'
/
COMMENT ON COLUMN ED0535T_TBL.UNYO_JOHO_TRK_KBN IS '運用情報登録区分'
/
COMMENT ON COLUMN ED0535T_TBL.KAITEI_RIYU_KBN IS '改定理由区分'
/
COMMENT ON COLUMN ED0535T_TBL.IRAI_HOSOKU_JIKO IS '依頼補足事項'
/
COMMENT ON COLUMN ED0535T_TBL.KEIRI_TORIKOMI_FLG IS '経理取込フラグ'
/
COMMENT ON COLUMN ED0535T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0535T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0535T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0535T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0535T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0535T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0535T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0535T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0535T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0535T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0535T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0535T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
