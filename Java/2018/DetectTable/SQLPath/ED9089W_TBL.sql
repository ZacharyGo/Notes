﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9089W_TBL.sql
-- 物理名：ED9089W_TBL
-- 論理名：金融機関マスタＩＦファイルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9089W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9089W_TBL (
	 KINYU_KIKAN_CD  CHAR(4) NOT NULL --「金融機関コード」
	,KINYU_KIKAN_SHITEN_CD  CHAR(3) NOT NULL --「金融機関支店コード」
	,KINYU_KIKAN_HKN_NM  VARCHAR2(30) --「金融機関半角カナ名称」
	,KINYU_KIKAN_NM  VARCHAR2(30) --「金融機関名称」
	,KINYU_KIKAN_SHITEN_HKN_NM  VARCHAR2(30) --「金融機関支店半角カナ名称」
	,KINYU_KIKAN_SHITEN_NM  VARCHAR2(30) --「金融機関支店名称」
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
	,CONSTRAINT ED9089W_PK PRIMARY KEY(
	 KINYU_KIKAN_CD
	,  KINYU_KIKAN_SHITEN_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9089W_TBL IS '金融機関マスタＩＦファイルワーク'
/

COMMENT ON COLUMN ED9089W_TBL.KINYU_KIKAN_CD IS '金融機関コード'
/
COMMENT ON COLUMN ED9089W_TBL.KINYU_KIKAN_SHITEN_CD IS '金融機関支店コード'
/
COMMENT ON COLUMN ED9089W_TBL.KINYU_KIKAN_HKN_NM IS '金融機関半角カナ名称'
/
COMMENT ON COLUMN ED9089W_TBL.KINYU_KIKAN_NM IS '金融機関名称'
/
COMMENT ON COLUMN ED9089W_TBL.KINYU_KIKAN_SHITEN_HKN_NM IS '金融機関支店半角カナ名称'
/
COMMENT ON COLUMN ED9089W_TBL.KINYU_KIKAN_SHITEN_NM IS '金融機関支店名称'
/
COMMENT ON COLUMN ED9089W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9089W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9089W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9089W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9089W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9089W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9089W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9089W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9089W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9089W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9089W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9089W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
