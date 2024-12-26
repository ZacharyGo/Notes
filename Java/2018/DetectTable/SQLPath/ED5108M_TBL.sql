﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED5108M_TBL.sql
-- 物理名：ED5108M_TBL
-- 論理名：ＮＢカセット交換理由マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED5108M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED5108M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,NB_CASSETTE_KOKAN_RIYU_CD  CHAR(2) NOT NULL --「ＮＢカセット交換理由コード」
	,NB_CASSETTE_KOKAN_RIYU  VARCHAR2(60) --「ＮＢカセット交換理由」
	,NB_CSSTT_KKN_SIKY_KH_KBN  CHAR(1) DEFAULT '0' NOT NULL --「ＮＢカセット交換請求可否区分」
	,NB_CSSTT_KKN_TSJ_SKO_KBN  CHAR(1) DEFAULT '0' NOT NULL --「ＮＢカセット交換通常即応区分」
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
	,CONSTRAINT ED5108M_PK PRIMARY KEY(
	 NB_CASSETTE_KOKAN_RIYU_CD
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED5108M_TBL IS 'ＮＢカセット交換理由マスタ'
/

COMMENT ON COLUMN ED5108M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED5108M_TBL.NB_CASSETTE_KOKAN_RIYU_CD IS 'ＮＢカセット交換理由コード'
/
COMMENT ON COLUMN ED5108M_TBL.NB_CASSETTE_KOKAN_RIYU IS 'ＮＢカセット交換理由'
/
COMMENT ON COLUMN ED5108M_TBL.NB_CSSTT_KKN_SIKY_KH_KBN IS 'ＮＢカセット交換請求可否区分'
/
COMMENT ON COLUMN ED5108M_TBL.NB_CSSTT_KKN_TSJ_SKO_KBN IS 'ＮＢカセット交換通常即応区分'
/
COMMENT ON COLUMN ED5108M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED5108M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED5108M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED5108M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED5108M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED5108M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED5108M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED5108M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED5108M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED5108M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED5108M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED5108M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/