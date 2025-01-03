﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4175M_TBL.sql
-- 物理名：ED4175M_TBL
-- 論理名：その他費用マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4175M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4175M_TBL (
	 SONOTA_HIYO_CD  CHAR(8) NOT NULL --「その他費用コード」
	,SONOTA_HIYO_NM  VARCHAR2(30) --「その他費用名称」
	,HIMMEI_CD  CHAR(8) --「品名コード」
	,SONOTA_HIYO_TANI_NM  VARCHAR2(5) --「その他費用単位名称」
	,SONOTA_HIYO_GENKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「その他費用原価金額」
	,SHOKI_HYOJI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「初期表示フラグ」
	,SHOKI_HYOJI_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「初期表示数量」
	,SONOTA_HIYO_HYOJUN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「その他費用標準金額」
	,GYM_ITKSK_TRHKSK_CD  CHAR(9) --「業務委託先取引先コード」
	,GYM_ITKSK_TRHKSK_BSH_CD  CHAR(4) --「業務委託先取引先部署コード」
	,JIGYO_SEGMENT_CD  CHAR(3) --「事業セグメントコード」
	,JUCHU_SHORI_KBN  CHAR(2) NOT NULL --「受注処理区分」
	,RYOKIN_KBN  CHAR(5) NOT NULL --「料金区分」
	,SEIKYU_SHIHARAI_CD  CHAR(3) --「請求支払コード」
	,URIAGE_KEIJO_SHUBETSU_KBN  CHAR(2) NOT NULL --「売上計上種別区分」
	,SNT_HIYO_GNK_KNGKH_HENKOKA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「その他費用原価金額変更可フラグ」
	,SONOTA_HIYO_BUNRUI_KBN  CHAR(1) NOT NULL --「その他費用分類区分」
	,SHOKAI_TESURYO_KBN  CHAR(1) NOT NULL --「紹介手数料区分」
	,GYM_ITKSK_HENKOKA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「業務委託先変更可フラグ」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
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
	,CONSTRAINT ED4175M_PK PRIMARY KEY(
	 SONOTA_HIYO_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4175M_TBL IS 'その他費用マスタ'
/

COMMENT ON COLUMN ED4175M_TBL.SONOTA_HIYO_CD IS 'その他費用コード'
/
COMMENT ON COLUMN ED4175M_TBL.SONOTA_HIYO_NM IS 'その他費用名称'
/
COMMENT ON COLUMN ED4175M_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED4175M_TBL.SONOTA_HIYO_TANI_NM IS 'その他費用単位名称'
/
COMMENT ON COLUMN ED4175M_TBL.SONOTA_HIYO_GENKA_AMT IS 'その他費用原価金額'
/
COMMENT ON COLUMN ED4175M_TBL.SHOKI_HYOJI_FLG IS '初期表示フラグ'
/
COMMENT ON COLUMN ED4175M_TBL.SHOKI_HYOJI_SURYO IS '初期表示数量'
/
COMMENT ON COLUMN ED4175M_TBL.SONOTA_HIYO_HYOJUN_AMT IS 'その他費用標準金額'
/
COMMENT ON COLUMN ED4175M_TBL.GYM_ITKSK_TRHKSK_CD IS '業務委託先取引先コード'
/
COMMENT ON COLUMN ED4175M_TBL.GYM_ITKSK_TRHKSK_BSH_CD IS '業務委託先取引先部署コード'
/
COMMENT ON COLUMN ED4175M_TBL.JIGYO_SEGMENT_CD IS '事業セグメントコード'
/
COMMENT ON COLUMN ED4175M_TBL.JUCHU_SHORI_KBN IS '受注処理区分'
/
COMMENT ON COLUMN ED4175M_TBL.RYOKIN_KBN IS '料金区分'
/
COMMENT ON COLUMN ED4175M_TBL.SEIKYU_SHIHARAI_CD IS '請求支払コード'
/
COMMENT ON COLUMN ED4175M_TBL.URIAGE_KEIJO_SHUBETSU_KBN IS '売上計上種別区分'
/
COMMENT ON COLUMN ED4175M_TBL.SNT_HIYO_GNK_KNGKH_HENKOKA_FLG IS 'その他費用原価金額変更可フラグ'
/
COMMENT ON COLUMN ED4175M_TBL.SONOTA_HIYO_BUNRUI_KBN IS 'その他費用分類区分'
/
COMMENT ON COLUMN ED4175M_TBL.SHOKAI_TESURYO_KBN IS '紹介手数料区分'
/
COMMENT ON COLUMN ED4175M_TBL.GYM_ITKSK_HENKOKA_FLG IS '業務委託先変更可フラグ'
/
COMMENT ON COLUMN ED4175M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4175M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4175M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4175M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4175M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4175M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4175M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4175M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4175M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4175M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4175M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4175M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4175M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4175M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
