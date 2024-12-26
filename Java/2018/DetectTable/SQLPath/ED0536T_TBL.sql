﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0536T_TBL.sql
-- 物理名：ED0536T_TBL
-- 論理名：受注変更明細テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0536T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0536T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) NOT NULL --「受注契約変更番号」
	,JUCHU_HENKO_MEISAI_SN  NUMBER(6,0) DEFAULT '0' NOT NULL --「受注変更明細連番」
	,JUCHU_HENKO_TAISHO_TABLE_ID  CHAR(11) --「受注変更対象テーブルＩＤ」
	,JUCHU_HENKO_TAISHO_KENSAKU_KEY  VARCHAR2(1024) --「受注変更対象検索キー」
	,JUCHU_HENKO_TAISHO_KOMOKU_ID  CHAR(30) --「受注変更対象項目ＩＤ」
	,JUCHU_HENKO_TAISHO_KOMOKU_NM  VARCHAR2(60) --「受注変更対象項目名称」
	,HENKOMAE_KEIYAKU_NAIYO  VARCHAR2(150) --「変更前契約内容」
	,HENKOGO_KEIYAKU_NAIYO  VARCHAR2(150) --「変更後契約内容」
	,KOSHIN_TAISHO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「更新対象フラグ」
	,RECORD_SOSA_KBN  CHAR(1) NOT NULL --「レコード操作区分」
	,KAITEI_SHORI_TAISHO_KBN  CHAR(1) DEFAULT '3' NOT NULL --「改定処理対象区分」
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
	,CONSTRAINT ED0536T_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  JUCHU_KEIYAKU_HENKO_NO
	,  KAISHA_CD
	,  JUCHU_HENKO_MEISAI_SN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0536T_TBL IS '受注変更明細テーブル'
/

COMMENT ON COLUMN ED0536T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0536T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED0536T_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED0536T_TBL.JUCHU_HENKO_MEISAI_SN IS '受注変更明細連番'
/
COMMENT ON COLUMN ED0536T_TBL.JUCHU_HENKO_TAISHO_TABLE_ID IS '受注変更対象テーブルＩＤ'
/
COMMENT ON COLUMN ED0536T_TBL.JUCHU_HENKO_TAISHO_KENSAKU_KEY IS '受注変更対象検索キー'
/
COMMENT ON COLUMN ED0536T_TBL.JUCHU_HENKO_TAISHO_KOMOKU_ID IS '受注変更対象項目ＩＤ'
/
COMMENT ON COLUMN ED0536T_TBL.JUCHU_HENKO_TAISHO_KOMOKU_NM IS '受注変更対象項目名称'
/
COMMENT ON COLUMN ED0536T_TBL.HENKOMAE_KEIYAKU_NAIYO IS '変更前契約内容'
/
COMMENT ON COLUMN ED0536T_TBL.HENKOGO_KEIYAKU_NAIYO IS '変更後契約内容'
/
COMMENT ON COLUMN ED0536T_TBL.KOSHIN_TAISHO_FLG IS '更新対象フラグ'
/
COMMENT ON COLUMN ED0536T_TBL.RECORD_SOSA_KBN IS 'レコード操作区分'
/
COMMENT ON COLUMN ED0536T_TBL.KAITEI_SHORI_TAISHO_KBN IS '改定処理対象区分'
/
COMMENT ON COLUMN ED0536T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0536T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0536T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0536T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0536T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0536T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0536T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0536T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0536T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0536T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0536T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0536T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
