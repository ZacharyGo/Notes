﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4463T_TBL.sql
-- 物理名：ED4463T_TBL
-- 論理名：見積書作成テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4463T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4463T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_SHINSEI_NO  CHAR(20) NOT NULL --「受注申請番号」
	,MITSUMORISHO_SAKUSEI_IRAI_SN  CHAR(14) NOT NULL --「見積書作成依頼連番」
	,MITSUMORISHO_NO  CHAR(20) NOT NULL --「見積書番号」
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
	,CONSTRAINT ED4463T_PK PRIMARY KEY(
	 JUCHU_SHINSEI_NO
	,  MITSUMORISHO_SAKUSEI_IRAI_SN
	,  MITSUMORISHO_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4463T_TBL IS '見積書作成テーブル'
/

COMMENT ON COLUMN ED4463T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED4463T_TBL.JUCHU_SHINSEI_NO IS '受注申請番号'
/
COMMENT ON COLUMN ED4463T_TBL.MITSUMORISHO_SAKUSEI_IRAI_SN IS '見積書作成依頼連番'
/
COMMENT ON COLUMN ED4463T_TBL.MITSUMORISHO_NO IS '見積書番号'
/
COMMENT ON COLUMN ED4463T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4463T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4463T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4463T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4463T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4463T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4463T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4463T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4463T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4463T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4463T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4463T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/