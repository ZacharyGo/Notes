﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4133M_TBL.sql
-- 物理名：ED4133M_TBL
-- 論理名：待機所マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4133M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4133M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,TAIKISHO_CD  CHAR(4) NOT NULL --「待機所コード」
	,TAIKISHO_NM  VARCHAR2(40) --「待機所名称」
	,HYOJI_JUN_1  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順１」
	,JUSHO_CD  CHAR(11) --「住所コード」
	,TATEMONO_NM  VARCHAR2(50) --「建物名称」
	,TO_NM  VARCHAR2(50) --「棟名称」
	,KAI_NM  VARCHAR2(50) --「階名称」
	,KUKAKU_NM  VARCHAR2(50) --「区画名称」
	,HEYA_NM  VARCHAR2(50) --「部屋名称」
	,HOSOKU_JUSHO  VARCHAR2(60) --「補足住所」
	,JUSHO_BANCHI  VARCHAR2(50) --「住所番地」
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
	,CONSTRAINT ED4133M_PK PRIMARY KEY(
	 TAIKISHO_CD
	,  KAISHA_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4133M_TBL IS '待機所マスタ'
/

COMMENT ON COLUMN ED4133M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED4133M_TBL.TAIKISHO_CD IS '待機所コード'
/
COMMENT ON COLUMN ED4133M_TBL.TAIKISHO_NM IS '待機所名称'
/
COMMENT ON COLUMN ED4133M_TBL.HYOJI_JUN_1 IS '表示順１'
/
COMMENT ON COLUMN ED4133M_TBL.JUSHO_CD IS '住所コード'
/
COMMENT ON COLUMN ED4133M_TBL.TATEMONO_NM IS '建物名称'
/
COMMENT ON COLUMN ED4133M_TBL.TO_NM IS '棟名称'
/
COMMENT ON COLUMN ED4133M_TBL.KAI_NM IS '階名称'
/
COMMENT ON COLUMN ED4133M_TBL.KUKAKU_NM IS '区画名称'
/
COMMENT ON COLUMN ED4133M_TBL.HEYA_NM IS '部屋名称'
/
COMMENT ON COLUMN ED4133M_TBL.HOSOKU_JUSHO IS '補足住所'
/
COMMENT ON COLUMN ED4133M_TBL.JUSHO_BANCHI IS '住所番地'
/
COMMENT ON COLUMN ED4133M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4133M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4133M_TBL.RONRI_SAKUJO_FLG IS '論理削除フラグ'
/
COMMENT ON COLUMN ED4133M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4133M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4133M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4133M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4133M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4133M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4133M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4133M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4133M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4133M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4133M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4133M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
