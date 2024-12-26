﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4211M_TBL.sql
-- 物理名：ED4211M_TBL
-- 論理名：ＡＥＤ機器構成マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4211M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4211M_TBL (
	 SEKISAN_AED_KIKI_KOSEI_CD  CHAR(8) NOT NULL --「積算ＡＥＤ機器構成コード」
	,SEKISAN_AED_KIKI_KOSEI_NM  VARCHAR2(60) --「積算ＡＥＤ機器構成名称」
	,AED_KIKI_KOSEI_SN  CHAR(14) NOT NULL --「ＡＥＤ機器構成連番」
	,HIMMEI_CD  CHAR(8) NOT NULL --「品名コード」
	,SHOKI_HYOJI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「初期表示フラグ」
	,HONTAI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「本体フラグ」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
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
	,CONSTRAINT ED4211M_PK PRIMARY KEY(
	 SEKISAN_AED_KIKI_KOSEI_CD
	,  AED_KIKI_KOSEI_SN
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4211M_TBL IS 'ＡＥＤ機器構成マスタ'
/

COMMENT ON COLUMN ED4211M_TBL.SEKISAN_AED_KIKI_KOSEI_CD IS '積算ＡＥＤ機器構成コード'
/
COMMENT ON COLUMN ED4211M_TBL.SEKISAN_AED_KIKI_KOSEI_NM IS '積算ＡＥＤ機器構成名称'
/
COMMENT ON COLUMN ED4211M_TBL.AED_KIKI_KOSEI_SN IS 'ＡＥＤ機器構成連番'
/
COMMENT ON COLUMN ED4211M_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED4211M_TBL.SHOKI_HYOJI_FLG IS '初期表示フラグ'
/
COMMENT ON COLUMN ED4211M_TBL.HONTAI_FLG IS '本体フラグ'
/
COMMENT ON COLUMN ED4211M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4211M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4211M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4211M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4211M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4211M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4211M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4211M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4211M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4211M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4211M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4211M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4211M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4211M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/