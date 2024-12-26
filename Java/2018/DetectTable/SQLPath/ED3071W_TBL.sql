﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3071W_TBL.sql
-- 物理名：ED3071W_TBL
-- 論理名：コースマスタファイルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3071W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3071W_TBL (
	 CM_FILE_JYOTAI  CHAR(1) --「ＣＭ＿ファイル状態」
	,CM_GC_NO  CHAR(4) --「ＣＭ＿ＧＣ番号」
	,CM_SGS_RONRI_NO  CHAR(10) --「ＣＭ＿ＳＧＳ論理番号」
	,CM_DENKEI_NO  CHAR(9) --「ＣＭ＿電計番号」
	,CM_COURSE_NO  CHAR(3) --「ＣＭ＿コース番号」
	,CM_JIGYOSHO_CD  CHAR(6) --「ＣＭ＿事業所コード」
	,CM_CHUDAN_MARK  CHAR(1) --「ＣＭ＿中断マーク」
	,CM_KOSHIN_KBN  CHAR(1) --「ＣＭ＿更新区分」
	,DATA_RENKEI_FILE_NM  VARCHAR2(255) --「データ連携ファイル名称」
	,KAISHA_CD  CHAR(5) --「会社コード」
	,SHORI_JOKYO_KBN  CHAR(1) NOT NULL --「処理状況区分」
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
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3071W_TBL IS 'コースマスタファイルワーク'
/

COMMENT ON COLUMN ED3071W_TBL.CM_FILE_JYOTAI IS 'ＣＭ＿ファイル状態'
/
COMMENT ON COLUMN ED3071W_TBL.CM_GC_NO IS 'ＣＭ＿ＧＣ番号'
/
COMMENT ON COLUMN ED3071W_TBL.CM_SGS_RONRI_NO IS 'ＣＭ＿ＳＧＳ論理番号'
/
COMMENT ON COLUMN ED3071W_TBL.CM_DENKEI_NO IS 'ＣＭ＿電計番号'
/
COMMENT ON COLUMN ED3071W_TBL.CM_COURSE_NO IS 'ＣＭ＿コース番号'
/
COMMENT ON COLUMN ED3071W_TBL.CM_JIGYOSHO_CD IS 'ＣＭ＿事業所コード'
/
COMMENT ON COLUMN ED3071W_TBL.CM_CHUDAN_MARK IS 'ＣＭ＿中断マーク'
/
COMMENT ON COLUMN ED3071W_TBL.CM_KOSHIN_KBN IS 'ＣＭ＿更新区分'
/
COMMENT ON COLUMN ED3071W_TBL.DATA_RENKEI_FILE_NM IS 'データ連携ファイル名称'
/
COMMENT ON COLUMN ED3071W_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3071W_TBL.SHORI_JOKYO_KBN IS '処理状況区分'
/
COMMENT ON COLUMN ED3071W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3071W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3071W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3071W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3071W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3071W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3071W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3071W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3071W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3071W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3071W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3071W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/