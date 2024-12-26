﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1556T_TBL.sql
-- 物理名：ED1556T_TBL
-- 論理名：評価減伝票テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1556T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1556T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,HYOKAGEN_DEMPYO_NO  CHAR(17) NOT NULL --「評価減伝票番号」
	,HYOKAGEN_DEMPYO_YMD  DATE --「評価減伝票年月日」
	,SOKO_CD  CHAR(6) --「倉庫コード」
	,DEMPYO_JOTAI_KBN  CHAR(1) DEFAULT '0' NOT NULL --「伝票状態区分」
	,HYOKAGEN_BIKO  VARCHAR2(60) --「評価減備考」
	,SHGI_TRKSH_SHGI_RYSH_NO  CHAR(8) --「社外登録者社外利用者番号」
	,SHGI_KSHNSH_SHGI_RYSH_NO  CHAR(8) --「社外更新者社外利用者番号」
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
	,CONSTRAINT ED1556T_PK PRIMARY KEY(
	 HYOKAGEN_DEMPYO_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1556T_TBL IS '評価減伝票テーブル'
/

COMMENT ON COLUMN ED1556T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1556T_TBL.HYOKAGEN_DEMPYO_NO IS '評価減伝票番号'
/
COMMENT ON COLUMN ED1556T_TBL.HYOKAGEN_DEMPYO_YMD IS '評価減伝票年月日'
/
COMMENT ON COLUMN ED1556T_TBL.SOKO_CD IS '倉庫コード'
/
COMMENT ON COLUMN ED1556T_TBL.DEMPYO_JOTAI_KBN IS '伝票状態区分'
/
COMMENT ON COLUMN ED1556T_TBL.HYOKAGEN_BIKO IS '評価減備考'
/
COMMENT ON COLUMN ED1556T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED1556T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED1556T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1556T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1556T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1556T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1556T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1556T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1556T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1556T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1556T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1556T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1556T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1556T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/