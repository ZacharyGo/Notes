﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0628T_TBL.sql
-- 物理名：ED0628T_TBL
-- 論理名：受注受注実績事業所テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0628T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0628T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) NOT NULL --「受注契約変更番号」
	,JUCHU_JISSEKI_JIGYOSHO_SN  CHAR(14) NOT NULL --「受注実績事業所連番」
	,SHN_SERVICE_MEISAI_CD  CHAR(3) --「商品サービス明細コード」
	,JUCHU_JIGYOSHO_CD  CHAR(6) --「受注事業所コード」
	,JUCHU_TANTO_SHAIN_NO  VARCHAR2(8) --「受注担当社員番号」
	,JUCHU_JISSEKI_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「受注実績率」
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
	,CONSTRAINT ED0628T_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  JUCHU_KEIYAKU_HENKO_NO
	,  KAISHA_CD
	,  JUCHU_JISSEKI_JIGYOSHO_SN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0628T_TBL IS '受注受注実績事業所テーブル'
/

COMMENT ON COLUMN ED0628T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0628T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED0628T_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED0628T_TBL.JUCHU_JISSEKI_JIGYOSHO_SN IS '受注実績事業所連番'
/
COMMENT ON COLUMN ED0628T_TBL.SHN_SERVICE_MEISAI_CD IS '商品サービス明細コード'
/
COMMENT ON COLUMN ED0628T_TBL.JUCHU_JIGYOSHO_CD IS '受注事業所コード'
/
COMMENT ON COLUMN ED0628T_TBL.JUCHU_TANTO_SHAIN_NO IS '受注担当社員番号'
/
COMMENT ON COLUMN ED0628T_TBL.JUCHU_JISSEKI_RITSU IS '受注実績率'
/
COMMENT ON COLUMN ED0628T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0628T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0628T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0628T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0628T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0628T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0628T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0628T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0628T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0628T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0628T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0628T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
