﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0586T_TBL.sql
-- 物理名：ED0586T_TBL
-- 論理名：契約対象先テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0586T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0586T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KEIYAKU_ID  CHAR(18) NOT NULL --「契約ＩＤ」
	,TAISHOSAKI_SN  CHAR(14) NOT NULL --「対象先連番」
	,TAISHOSAKI_CD  CHAR(9) --「対象先コード」
	,DAIHYO_TAISHOSAKI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「代表対象先フラグ」
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
	,CONSTRAINT ED0586T_PK PRIMARY KEY(
	 KEIYAKU_ID
	,  TAISHOSAKI_SN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0586T_TBL IS '契約対象先テーブル'
/

COMMENT ON COLUMN ED0586T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0586T_TBL.KEIYAKU_ID IS '契約ＩＤ'
/
COMMENT ON COLUMN ED0586T_TBL.TAISHOSAKI_SN IS '対象先連番'
/
COMMENT ON COLUMN ED0586T_TBL.TAISHOSAKI_CD IS '対象先コード'
/
COMMENT ON COLUMN ED0586T_TBL.DAIHYO_TAISHOSAKI_FLG IS '代表対象先フラグ'
/
COMMENT ON COLUMN ED0586T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0586T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0586T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0586T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0586T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0586T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0586T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0586T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0586T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0586T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0586T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0586T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
