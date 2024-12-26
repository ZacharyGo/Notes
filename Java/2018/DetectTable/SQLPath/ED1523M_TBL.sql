﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1523M_TBL.sql
-- 物理名：ED1523M_TBL
-- 論理名：倉庫内ロケーションマスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1523M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1523M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SOKO_CD  CHAR(6) NOT NULL --「倉庫コード」
	,HIMMEI_CD  CHAR(8) NOT NULL --「品名コード」
	,SOKONAI_LOCATION_CD  VARCHAR2(10) --「倉庫内ロケーションコード」
	,SOKONAI_LOCATION_BIKO  VARCHAR2(30) --「倉庫内ロケーション備考」
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
	,CONSTRAINT ED1523M_PK PRIMARY KEY(
	 SOKO_CD
	,  HIMMEI_CD
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1523M_TBL IS '倉庫内ロケーションマスタ'
/

COMMENT ON COLUMN ED1523M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1523M_TBL.SOKO_CD IS '倉庫コード'
/
COMMENT ON COLUMN ED1523M_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED1523M_TBL.SOKONAI_LOCATION_CD IS '倉庫内ロケーションコード'
/
COMMENT ON COLUMN ED1523M_TBL.SOKONAI_LOCATION_BIKO IS '倉庫内ロケーション備考'
/
COMMENT ON COLUMN ED1523M_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED1523M_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED1523M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1523M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1523M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1523M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1523M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1523M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1523M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1523M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1523M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1523M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1523M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1523M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/