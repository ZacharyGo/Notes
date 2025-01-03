﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4218M_TBL.sql
-- 物理名：ED4218M_TBL
-- 論理名：積算品名分類マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4218M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4218M_TBL (
	 SEKISAN_HIMMEI_BUNRUI_1_CD  CHAR(3) NOT NULL --「積算品名分類１コード」
	,SEKISAN_HIMMEI_BUNRUI_2_CD  CHAR(3) NOT NULL --「積算品名分類２コード」
	,SEKISAN_HIMMEI_BUNRUI_3_CD  CHAR(3) NOT NULL --「積算品名分類３コード」
	,SEKISAN_HIMMEI_BUNRUI_NM  VARCHAR2(30) --「積算品名分類名称」
	,HMMI_BNRI_KBN  CHAR(2) NOT NULL --「品名分類区分」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,RONRI_SAKUJO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「論理削除フラグ」
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
	,CONSTRAINT ED4218M_PK PRIMARY KEY(
	 SEKISAN_HIMMEI_BUNRUI_1_CD
	,  SEKISAN_HIMMEI_BUNRUI_2_CD
	,  SEKISAN_HIMMEI_BUNRUI_3_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4218M_TBL IS '積算品名分類マスタ'
/

COMMENT ON COLUMN ED4218M_TBL.SEKISAN_HIMMEI_BUNRUI_1_CD IS '積算品名分類１コード'
/
COMMENT ON COLUMN ED4218M_TBL.SEKISAN_HIMMEI_BUNRUI_2_CD IS '積算品名分類２コード'
/
COMMENT ON COLUMN ED4218M_TBL.SEKISAN_HIMMEI_BUNRUI_3_CD IS '積算品名分類３コード'
/
COMMENT ON COLUMN ED4218M_TBL.SEKISAN_HIMMEI_BUNRUI_NM IS '積算品名分類名称'
/
COMMENT ON COLUMN ED4218M_TBL.HMMI_BNRI_KBN IS '品名分類区分'
/
COMMENT ON COLUMN ED4218M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4218M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4218M_TBL.RONRI_SAKUJO_FLG IS '論理削除フラグ'
/
COMMENT ON COLUMN ED4218M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4218M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4218M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4218M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4218M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4218M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4218M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4218M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4218M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4218M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4218M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4218M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
