﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0005T_TBL.sql
-- 物理名：ED0005T_TBL
-- 論理名：案件担当者テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0005T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0005T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,ANKEN_NO  CHAR(13) NOT NULL --「案件番号」
	,ANKEN_SHAIN_NO  VARCHAR2(8) NOT NULL --「案件社員番号」
	,HYOJI_JUN  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順」
	,ANKEN_TANTO_KBN  CHAR(1) NOT NULL --「案件担当区分」
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
	,CONSTRAINT ED0005T_PK PRIMARY KEY(
	 ANKEN_NO
	,  ANKEN_SHAIN_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0005T_TBL IS '案件担当者テーブル'
/

COMMENT ON COLUMN ED0005T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0005T_TBL.ANKEN_NO IS '案件番号'
/
COMMENT ON COLUMN ED0005T_TBL.ANKEN_SHAIN_NO IS '案件社員番号'
/
COMMENT ON COLUMN ED0005T_TBL.HYOJI_JUN IS '表示順'
/
COMMENT ON COLUMN ED0005T_TBL.ANKEN_TANTO_KBN IS '案件担当区分'
/
COMMENT ON COLUMN ED0005T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0005T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0005T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0005T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0005T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0005T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0005T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0005T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0005T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0005T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0005T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0005T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
