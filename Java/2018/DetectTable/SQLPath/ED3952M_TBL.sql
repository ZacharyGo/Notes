﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3952M_TBL.sql
-- 物理名：ED3952M_TBL
-- 論理名：消込グループマスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3952M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3952M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KESHIKOMI_GROUP_NO  NUMBER(5,0) NOT NULL --「消込グループ番号」
	,KESHIKOMI_GROUP_NM  VARCHAR2(30) --「消込グループ名称」
	,JISHA_KOZA_CD  CHAR(4) --「自社口座コード」
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
	,CONSTRAINT ED3952M_PK PRIMARY KEY(
	 KESHIKOMI_GROUP_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3952M_TBL IS '消込グループマスタ'
/

COMMENT ON COLUMN ED3952M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3952M_TBL.KESHIKOMI_GROUP_NO IS '消込グループ番号'
/
COMMENT ON COLUMN ED3952M_TBL.KESHIKOMI_GROUP_NM IS '消込グループ名称'
/
COMMENT ON COLUMN ED3952M_TBL.JISHA_KOZA_CD IS '自社口座コード'
/
COMMENT ON COLUMN ED3952M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3952M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3952M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3952M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3952M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3952M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3952M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3952M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3952M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3952M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3952M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3952M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
