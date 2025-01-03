﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9128M_TBL.sql
-- 物理名：ED9128M_TBL
-- 論理名：タスク通知分類受信者マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9128M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9128M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,TASK_TSUCHI_BUNRUI_CD  CHAR(6) NOT NULL --「タスク通知分類コード」
	,TASK_TSUCHI_BUNRUI_JUSHIN_SN  NUMBER(5,0) DEFAULT '0' NOT NULL --「タスク通知分類受信連番」
	,TASK_JUSHINSHA_JIGYOSHO_CD  CHAR(6) --「タスク受信者事業所コード」
	,TASK_JUSHINSHA_ROLE_ID  CHAR(6) --「タスク受信者ロールＩＤ」
	,TASK_JUSHINSHA_YAKUSHOKU_CD  VARCHAR2(4) --「タスク受信者役職コード」
	,TASK_JUSHINSHA_SHOKUMU_CD  VARCHAR2(4) --「タスク受信者職務コード」
	,TASK_JUSHINSHA_SHAIN_NO  VARCHAR2(8) --「タスク受信者社員番号」
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
	,CONSTRAINT ED9128M_PK PRIMARY KEY(
	 TASK_TSUCHI_BUNRUI_JUSHIN_SN
	,  TASK_TSUCHI_BUNRUI_CD
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9128M_TBL IS 'タスク通知分類受信者マスタ'
/

COMMENT ON COLUMN ED9128M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED9128M_TBL.TASK_TSUCHI_BUNRUI_CD IS 'タスク通知分類コード'
/
COMMENT ON COLUMN ED9128M_TBL.TASK_TSUCHI_BUNRUI_JUSHIN_SN IS 'タスク通知分類受信連番'
/
COMMENT ON COLUMN ED9128M_TBL.TASK_JUSHINSHA_JIGYOSHO_CD IS 'タスク受信者事業所コード'
/
COMMENT ON COLUMN ED9128M_TBL.TASK_JUSHINSHA_ROLE_ID IS 'タスク受信者ロールＩＤ'
/
COMMENT ON COLUMN ED9128M_TBL.TASK_JUSHINSHA_YAKUSHOKU_CD IS 'タスク受信者役職コード'
/
COMMENT ON COLUMN ED9128M_TBL.TASK_JUSHINSHA_SHOKUMU_CD IS 'タスク受信者職務コード'
/
COMMENT ON COLUMN ED9128M_TBL.TASK_JUSHINSHA_SHAIN_NO IS 'タスク受信者社員番号'
/
COMMENT ON COLUMN ED9128M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9128M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9128M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9128M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9128M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9128M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9128M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9128M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9128M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9128M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9128M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9128M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
