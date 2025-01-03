﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9087W_TBL.sql
-- 物理名：ED9087W_TBL
-- 論理名：補助科目マスタＩＦファイルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9087W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9087W_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SAIMOKU_CD_SHIKIBETSU_KBN  CHAR(4) NOT NULL --「細目コード識別区分」
	,HOJO_KAMOKU_CD  VARCHAR2(12) NOT NULL --「補助科目コード」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,HOJO_KAMOKU_NM  VARCHAR2(64) --「補助科目名称」
	,HOJO_KAMOKU_RNM  VARCHAR2(16) --「補助科目略称」
	,SETTEI_KANO_BUMON_SOSHIKI_CD  VARCHAR2(6) --「設定可能部門組織コード」
	,SEDAI_SHIKIBETSU_NO  VARCHAR2(3) --「世代識別番号」
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
	,CONSTRAINT ED9087W_PK PRIMARY KEY(
	 SAIMOKU_CD_SHIKIBETSU_KBN
	,  HOJO_KAMOKU_CD
	,  KAISHA_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9087W_TBL IS '補助科目マスタＩＦファイルワーク'
/

COMMENT ON COLUMN ED9087W_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED9087W_TBL.SAIMOKU_CD_SHIKIBETSU_KBN IS '細目コード識別区分'
/
COMMENT ON COLUMN ED9087W_TBL.HOJO_KAMOKU_CD IS '補助科目コード'
/
COMMENT ON COLUMN ED9087W_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED9087W_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED9087W_TBL.HOJO_KAMOKU_NM IS '補助科目名称'
/
COMMENT ON COLUMN ED9087W_TBL.HOJO_KAMOKU_RNM IS '補助科目略称'
/
COMMENT ON COLUMN ED9087W_TBL.SETTEI_KANO_BUMON_SOSHIKI_CD IS '設定可能部門組織コード'
/
COMMENT ON COLUMN ED9087W_TBL.SEDAI_SHIKIBETSU_NO IS '世代識別番号'
/
COMMENT ON COLUMN ED9087W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9087W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9087W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9087W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9087W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9087W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9087W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9087W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9087W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9087W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9087W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9087W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
