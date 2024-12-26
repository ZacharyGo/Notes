﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9099T_TBL.sql
-- 物理名：ED9099T_TBL
-- 論理名：タスク通知受信テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9099T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9099T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,TASK_TSUCHI_NO  CHAR(10) NOT NULL --「タスク通知番号」
	,TASK_TSUCHI_JUSHIN_SN  NUMBER(5,0) DEFAULT '0' NOT NULL --「タスク通知受信連番」
	,TASK_JUSHINSHA_JIGYOSHO_CD  CHAR(6) NOT NULL --「タスク受信者事業所コード」
	,TASK_JUSHINSHA_SHAIN_NO  VARCHAR2(8) NOT NULL --「タスク受信者社員番号」
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
	,CONSTRAINT ED9099T_PK PRIMARY KEY(
	 TASK_TSUCHI_JUSHIN_SN
	,  TASK_TSUCHI_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9099T_TBL IS 'タスク通知受信テーブル'
/

COMMENT ON COLUMN ED9099T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED9099T_TBL.TASK_TSUCHI_NO IS 'タスク通知番号'
/
COMMENT ON COLUMN ED9099T_TBL.TASK_TSUCHI_JUSHIN_SN IS 'タスク通知受信連番'
/
COMMENT ON COLUMN ED9099T_TBL.TASK_JUSHINSHA_JIGYOSHO_CD IS 'タスク受信者事業所コード'
/
COMMENT ON COLUMN ED9099T_TBL.TASK_JUSHINSHA_SHAIN_NO IS 'タスク受信者社員番号'
/
COMMENT ON COLUMN ED9099T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9099T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9099T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9099T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9099T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9099T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9099T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9099T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9099T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9099T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9099T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9099T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
