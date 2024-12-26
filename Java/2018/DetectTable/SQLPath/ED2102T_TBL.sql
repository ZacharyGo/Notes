﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED2102T_TBL.sql
-- 物理名：ED2102T_TBL
-- 論理名：修理明細テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED2102T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED2102T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SHURI_DEMPYO_NO  CHAR(17) NOT NULL --「修理伝票番号」
	,SHURI_DEMPYO_MEISAI_SN  CHAR(14) NOT NULL --「修理伝票明細連番」
	,SHURI_CARD_NO  CHAR(8) NOT NULL --「修理カード番号」
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
	,CONSTRAINT ED2102T_PK PRIMARY KEY(
	 SHURI_DEMPYO_NO
	,  SHURI_DEMPYO_MEISAI_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED2102T_TBL IS '修理明細テーブル'
/

COMMENT ON COLUMN ED2102T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED2102T_TBL.SHURI_DEMPYO_NO IS '修理伝票番号'
/
COMMENT ON COLUMN ED2102T_TBL.SHURI_DEMPYO_MEISAI_SN IS '修理伝票明細連番'
/
COMMENT ON COLUMN ED2102T_TBL.SHURI_CARD_NO IS '修理カード番号'
/
COMMENT ON COLUMN ED2102T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED2102T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED2102T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED2102T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED2102T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED2102T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED2102T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED2102T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED2102T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED2102T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED2102T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED2102T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/