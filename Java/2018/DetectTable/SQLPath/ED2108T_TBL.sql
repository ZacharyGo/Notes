﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED2108T_TBL.sql
-- 物理名：ED2108T_TBL
-- 論理名：再評価テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED2108T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED2108T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SAIHYOKA_DEMPYO_NO  CHAR(17) NOT NULL --「再評価伝票番号」
	,DEMPYO_JOTAI_KBN  CHAR(1) NOT NULL --「伝票状態区分」
	,SHIZAI_SOBI_KBN  CHAR(1) NOT NULL --「資材装備区分」
	,DEMPYO_KIHYO_JIGYOSHO_CD  CHAR(6) NOT NULL --「伝票起票事業所コード」
	,SAIHYOKA_YMD  DATE --「再評価年月日」
	,SAIHYOKAHIN_NYUKO_JIGYOSHO_CD  CHAR(6) --「再評価品入庫事業所コード」
	,SAIHYOKAHIN_NYUKO_SOKO_CD  CHAR(6) --「再評価品入庫倉庫コード」
	,SHINSEI_SHONIN_NO  CHAR(14) --「申請承認番号」
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
	,CONSTRAINT ED2108T_PK PRIMARY KEY(
	 SAIHYOKA_DEMPYO_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED2108T_TBL IS '再評価テーブル'
/

COMMENT ON COLUMN ED2108T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED2108T_TBL.SAIHYOKA_DEMPYO_NO IS '再評価伝票番号'
/
COMMENT ON COLUMN ED2108T_TBL.DEMPYO_JOTAI_KBN IS '伝票状態区分'
/
COMMENT ON COLUMN ED2108T_TBL.SHIZAI_SOBI_KBN IS '資材装備区分'
/
COMMENT ON COLUMN ED2108T_TBL.DEMPYO_KIHYO_JIGYOSHO_CD IS '伝票起票事業所コード'
/
COMMENT ON COLUMN ED2108T_TBL.SAIHYOKA_YMD IS '再評価年月日'
/
COMMENT ON COLUMN ED2108T_TBL.SAIHYOKAHIN_NYUKO_JIGYOSHO_CD IS '再評価品入庫事業所コード'
/
COMMENT ON COLUMN ED2108T_TBL.SAIHYOKAHIN_NYUKO_SOKO_CD IS '再評価品入庫倉庫コード'
/
COMMENT ON COLUMN ED2108T_TBL.SHINSEI_SHONIN_NO IS '申請承認番号'
/
COMMENT ON COLUMN ED2108T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED2108T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED2108T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED2108T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED2108T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED2108T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED2108T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED2108T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED2108T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED2108T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED2108T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED2108T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
