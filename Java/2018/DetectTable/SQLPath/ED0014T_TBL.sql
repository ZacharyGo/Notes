﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0014T_TBL.sql
-- 物理名：ED0014T_TBL
-- 論理名：ターゲットリストテーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0014T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0014T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,TARGET_LIST_CD  CHAR(11) NOT NULL --「ターゲットリストコード」
	,TARGET_LIST_NM  VARCHAR2(30) NOT NULL --「ターゲットリスト名称」
	,HASSHIN_JIGYOSHO_CD  CHAR(6) NOT NULL --「発信事業所コード」
	,TARGET_LIST_KAISHI_YMD  DATE NOT NULL --「ターゲットリスト開始年月日」
	,TARGET_LIST_SHURYO_YMD  DATE NOT NULL --「ターゲットリスト終了年月日」
	,BUNSHO_NO  VARCHAR2(30) --「文書番号」
	,SHIJI_BUNSHO_KBN  CHAR(1) NOT NULL --「指示文書区分」
	,TARGET_LIST_CMNT  VARCHAR2(100) --「ターゲットリストコメント」
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
	,CONSTRAINT ED0014T_PK PRIMARY KEY(
	 TARGET_LIST_CD
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0014T_TBL IS 'ターゲットリストテーブル'
/

COMMENT ON COLUMN ED0014T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0014T_TBL.TARGET_LIST_CD IS 'ターゲットリストコード'
/
COMMENT ON COLUMN ED0014T_TBL.TARGET_LIST_NM IS 'ターゲットリスト名称'
/
COMMENT ON COLUMN ED0014T_TBL.HASSHIN_JIGYOSHO_CD IS '発信事業所コード'
/
COMMENT ON COLUMN ED0014T_TBL.TARGET_LIST_KAISHI_YMD IS 'ターゲットリスト開始年月日'
/
COMMENT ON COLUMN ED0014T_TBL.TARGET_LIST_SHURYO_YMD IS 'ターゲットリスト終了年月日'
/
COMMENT ON COLUMN ED0014T_TBL.BUNSHO_NO IS '文書番号'
/
COMMENT ON COLUMN ED0014T_TBL.SHIJI_BUNSHO_KBN IS '指示文書区分'
/
COMMENT ON COLUMN ED0014T_TBL.TARGET_LIST_CMNT IS 'ターゲットリストコメント'
/
COMMENT ON COLUMN ED0014T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0014T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0014T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0014T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0014T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0014T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0014T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0014T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0014T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0014T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0014T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0014T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/