﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9008M_TBL.sql
-- 物理名：ED9008M_TBL
-- 論理名：事業所マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9008M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9008M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JIGYOSHO_CD  CHAR(6) NOT NULL --「事業所コード」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,JIGYOSHO_KBN  CHAR(2) NOT NULL --「事業所区分」
	,JIGYOSHO_NM  VARCHAR2(200) --「事業所名称」
	,JIGYOSHO_KN_NM  VARCHAR2(200) --「事業所カナ名称」
	,JIGYOSHO_RNM  VARCHAR2(200) --「事業所略称」
	,JIGYOSHO_KETSUGO_NM  VARCHAR2(400) --「事業所結合名称」
	,JUSHO_CD  CHAR(11) --「住所コード」
	,YUBIN_NO  CHAR(7) --「郵便番号」
	,JUSHO_BANCHI  VARCHAR2(50) --「住所番地」
	,TATEMONO_NM  VARCHAR2(50) --「建物名称」
	,TATEMONO_KN_NM  VARCHAR2(50) --「建物カナ名称」
	,TO_NM  VARCHAR2(50) --「棟名称」
	,KAI_NM  VARCHAR2(50) --「階名称」
	,KUKAKU_NM  VARCHAR2(50) --「区画名称」
	,HEYA_NM  VARCHAR2(50) --「部屋名称」
	,DENWA_NO  VARCHAR2(20) --「電話番号」
	,DAIHYO_MAIL_ADDRESS  VARCHAR2(200) --「代表メールアドレス」
	,ROMU_TANKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「労務単価金額」
	,SHIHARAI_JIGYOSHO_CD  CHAR(6) --「支払事業所コード」
	,JISHA_KOZA_CD  CHAR(4) --「自社口座コード」
	,KOJI_BLOCK_CD  CHAR(3) --「工事ブロックコード」
	,AED_HAMBAI_KYOKA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「ＡＥＤ販売許可フラグ」
	,ALSOK_KANRYO_KENSA_KANO_WAKUSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「ＡＬＳＯＫ完了検査可能枠数」
	,HA_Y_ALSOK_KNRY_KNS_KN_WAKUSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「ＨＡ用ＡＬＳＯＫ完了検査可能枠数」
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
	,CONSTRAINT ED9008M_PK PRIMARY KEY(
	 JIGYOSHO_CD
	,  KAISHA_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9008M_TBL IS '事業所マスタ'
/

COMMENT ON COLUMN ED9008M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED9008M_TBL.JIGYOSHO_CD IS '事業所コード'
/
COMMENT ON COLUMN ED9008M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED9008M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED9008M_TBL.JIGYOSHO_KBN IS '事業所区分'
/
COMMENT ON COLUMN ED9008M_TBL.JIGYOSHO_NM IS '事業所名称'
/
COMMENT ON COLUMN ED9008M_TBL.JIGYOSHO_KN_NM IS '事業所カナ名称'
/
COMMENT ON COLUMN ED9008M_TBL.JIGYOSHO_RNM IS '事業所略称'
/
COMMENT ON COLUMN ED9008M_TBL.JIGYOSHO_KETSUGO_NM IS '事業所結合名称'
/
COMMENT ON COLUMN ED9008M_TBL.JUSHO_CD IS '住所コード'
/
COMMENT ON COLUMN ED9008M_TBL.YUBIN_NO IS '郵便番号'
/
COMMENT ON COLUMN ED9008M_TBL.JUSHO_BANCHI IS '住所番地'
/
COMMENT ON COLUMN ED9008M_TBL.TATEMONO_NM IS '建物名称'
/
COMMENT ON COLUMN ED9008M_TBL.TATEMONO_KN_NM IS '建物カナ名称'
/
COMMENT ON COLUMN ED9008M_TBL.TO_NM IS '棟名称'
/
COMMENT ON COLUMN ED9008M_TBL.KAI_NM IS '階名称'
/
COMMENT ON COLUMN ED9008M_TBL.KUKAKU_NM IS '区画名称'
/
COMMENT ON COLUMN ED9008M_TBL.HEYA_NM IS '部屋名称'
/
COMMENT ON COLUMN ED9008M_TBL.DENWA_NO IS '電話番号'
/
COMMENT ON COLUMN ED9008M_TBL.DAIHYO_MAIL_ADDRESS IS '代表メールアドレス'
/
COMMENT ON COLUMN ED9008M_TBL.ROMU_TANKA_AMT IS '労務単価金額'
/
COMMENT ON COLUMN ED9008M_TBL.SHIHARAI_JIGYOSHO_CD IS '支払事業所コード'
/
COMMENT ON COLUMN ED9008M_TBL.JISHA_KOZA_CD IS '自社口座コード'
/
COMMENT ON COLUMN ED9008M_TBL.KOJI_BLOCK_CD IS '工事ブロックコード'
/
COMMENT ON COLUMN ED9008M_TBL.AED_HAMBAI_KYOKA_FLG IS 'ＡＥＤ販売許可フラグ'
/
COMMENT ON COLUMN ED9008M_TBL.ALSOK_KANRYO_KENSA_KANO_WAKUSU IS 'ＡＬＳＯＫ完了検査可能枠数'
/
COMMENT ON COLUMN ED9008M_TBL.HA_Y_ALSOK_KNRY_KNS_KN_WAKUSU IS 'ＨＡ用ＡＬＳＯＫ完了検査可能枠数'
/
COMMENT ON COLUMN ED9008M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9008M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9008M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9008M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9008M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9008M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9008M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9008M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9008M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9008M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9008M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9008M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/