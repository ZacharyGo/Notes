﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0511T_TBL.sql
-- 物理名：ED0511T_TBL
-- 論理名：契約入出金機料金内訳テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0511T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0511T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KEIYAKU_ID  CHAR(18) NOT NULL --「契約ＩＤ」
	,NYSHKKNK_RYKN_UCHWK_CD  CHAR(8) NOT NULL --「入出金機料金内訳コード」
	,NYSHKKNK_RYKN_UCHWK_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「入出金機料金内訳金額」
	,JISSHI_JIGYOSHO_CD  CHAR(6) --「実施事業所コード」
	,NSKK_RYOKIN_UW_HB_JIGYOSHO_KBN  CHAR(1) NOT NULL --「入出金機料金内訳配分事業所区分」
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
	,CONSTRAINT ED0511T_PK PRIMARY KEY(
	 KEIYAKU_ID
	,  NYSHKKNK_RYKN_UCHWK_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0511T_TBL IS '契約入出金機料金内訳テーブル'
/

COMMENT ON COLUMN ED0511T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0511T_TBL.KEIYAKU_ID IS '契約ＩＤ'
/
COMMENT ON COLUMN ED0511T_TBL.NYSHKKNK_RYKN_UCHWK_CD IS '入出金機料金内訳コード'
/
COMMENT ON COLUMN ED0511T_TBL.NYSHKKNK_RYKN_UCHWK_AMT IS '入出金機料金内訳金額'
/
COMMENT ON COLUMN ED0511T_TBL.JISSHI_JIGYOSHO_CD IS '実施事業所コード'
/
COMMENT ON COLUMN ED0511T_TBL.NSKK_RYOKIN_UW_HB_JIGYOSHO_KBN IS '入出金機料金内訳配分事業所区分'
/
COMMENT ON COLUMN ED0511T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0511T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0511T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0511T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0511T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0511T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0511T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0511T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0511T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0511T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0511T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0511T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
