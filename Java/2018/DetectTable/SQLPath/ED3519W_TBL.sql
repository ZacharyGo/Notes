﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3519W_TBL.sql
-- 物理名：ED3519W_TBL
-- 論理名：請求実績ワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3519W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3519W_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SEIKYU_JISSEKI_ID  CHAR(16) NOT NULL --「請求実績ＩＤ」
	,JUCHU_KEIYAKU_NO  CHAR(15) --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) --「受注契約変更番号」
	,SEIKYU_SHIHARAI_CD  CHAR(3) --「請求支払コード」
	,SEIKYU_KANRI_MEISAI_NO  CHAR(14) --「請求管理明細番号」
	,SEIKYUSHO_NO  CHAR(14) --「請求書番号」
	,SEIKYUSHO_MEISAI_SN  CHAR(14) --「請求書明細連番」
	,GASSAN_UCHIWAKE_MEISAI_SN  CHAR(14) --「合算内訳明細連番」
	,JIGYO_SEGMENT_CD  CHAR(3) --「事業セグメントコード」
	,SEIKYUSHO_TEMPLATE_NO  CHAR(14) --「請求書テンプレート番号」
	,SEIKYUSHO_HYOJI_KAISHI_YMD  DATE --「請求書表示開始年月日」
	,SEIKYUSHO_HYOJI_SHURYO_YMD  DATE --「請求書表示終了年月日」
	,ZEIKOMI_SEIKYU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「税込請求金額」
	,SEIKYUSAKI_TORIHIKISAKI_CD  CHAR(9) --「請求先取引先コード」
	,JUCHU_JIGYOSHO_CD  CHAR(6) --「受注事業所コード」
	,GSSNSK_SIKY_KNR_MISI_NO  CHAR(14) --「合算先請求管理明細番号」
	,BNKTSMT_SIKY_KNR_MISI_NO  CHAR(14) --「分割元請求管理明細番号」
	,GASSANSAKI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「合算先フラグ」
	,BUNKATSUZUMI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「分割済フラグ」
	,URIAGE_SEIKYU_TORIKESHI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「売上請求取消フラグ」
	,SEIKYUSHO_URIAGE_HIMOZUKE_NO  CHAR(14) --「請求書売上紐付番号」
	,DATA_TORIKOMIZUMI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「データ取込済フラグ」
	,RONRI_SAKUJO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「論理削除フラグ」
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
	,CONSTRAINT ED3519W_PK PRIMARY KEY(
	 SEIKYU_JISSEKI_ID
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3519W_TBL IS '請求実績ワーク'
/

COMMENT ON COLUMN ED3519W_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3519W_TBL.SEIKYU_JISSEKI_ID IS '請求実績ＩＤ'
/
COMMENT ON COLUMN ED3519W_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED3519W_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED3519W_TBL.SEIKYU_SHIHARAI_CD IS '請求支払コード'
/
COMMENT ON COLUMN ED3519W_TBL.SEIKYU_KANRI_MEISAI_NO IS '請求管理明細番号'
/
COMMENT ON COLUMN ED3519W_TBL.SEIKYUSHO_NO IS '請求書番号'
/
COMMENT ON COLUMN ED3519W_TBL.SEIKYUSHO_MEISAI_SN IS '請求書明細連番'
/
COMMENT ON COLUMN ED3519W_TBL.GASSAN_UCHIWAKE_MEISAI_SN IS '合算内訳明細連番'
/
COMMENT ON COLUMN ED3519W_TBL.JIGYO_SEGMENT_CD IS '事業セグメントコード'
/
COMMENT ON COLUMN ED3519W_TBL.SEIKYUSHO_TEMPLATE_NO IS '請求書テンプレート番号'
/
COMMENT ON COLUMN ED3519W_TBL.SEIKYUSHO_HYOJI_KAISHI_YMD IS '請求書表示開始年月日'
/
COMMENT ON COLUMN ED3519W_TBL.SEIKYUSHO_HYOJI_SHURYO_YMD IS '請求書表示終了年月日'
/
COMMENT ON COLUMN ED3519W_TBL.ZEIKOMI_SEIKYU_AMT IS '税込請求金額'
/
COMMENT ON COLUMN ED3519W_TBL.SEIKYUSAKI_TORIHIKISAKI_CD IS '請求先取引先コード'
/
COMMENT ON COLUMN ED3519W_TBL.JUCHU_JIGYOSHO_CD IS '受注事業所コード'
/
COMMENT ON COLUMN ED3519W_TBL.GSSNSK_SIKY_KNR_MISI_NO IS '合算先請求管理明細番号'
/
COMMENT ON COLUMN ED3519W_TBL.BNKTSMT_SIKY_KNR_MISI_NO IS '分割元請求管理明細番号'
/
COMMENT ON COLUMN ED3519W_TBL.GASSANSAKI_FLG IS '合算先フラグ'
/
COMMENT ON COLUMN ED3519W_TBL.BUNKATSUZUMI_FLG IS '分割済フラグ'
/
COMMENT ON COLUMN ED3519W_TBL.URIAGE_SEIKYU_TORIKESHI_FLG IS '売上請求取消フラグ'
/
COMMENT ON COLUMN ED3519W_TBL.SEIKYUSHO_URIAGE_HIMOZUKE_NO IS '請求書売上紐付番号'
/
COMMENT ON COLUMN ED3519W_TBL.DATA_TORIKOMIZUMI_FLG IS 'データ取込済フラグ'
/
COMMENT ON COLUMN ED3519W_TBL.RONRI_SAKUJO_FLG IS '論理削除フラグ'
/
COMMENT ON COLUMN ED3519W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3519W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3519W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3519W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3519W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3519W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3519W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3519W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3519W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3519W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3519W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3519W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
