﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0308T_TBL.sql
-- 物理名：ED0308T_TBL
-- 論理名：営業行動時間予定分類別集計テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0308T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0308T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,EIGYO_KODO_YOTEI_JIGYOSHO_CD  CHAR(6) NOT NULL --「営業行動予定事業所コード」
	,EIGYO_KODO_YOTEI_SHAIN_NO  VARCHAR2(8) NOT NULL --「営業行動予定社員番号」
	,EIGYO_KODO_YMD  DATE NOT NULL --「営業行動年月日」
	,YOTEI_BUNRUI_CD  CHAR(2) NOT NULL --「予定分類コード」
	,EIGYO_KODO_GOKEI_JIKAN  NUMBER(9,0) DEFAULT '0' NOT NULL --「営業行動合計時間」
	,EIGYO_HOMON_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「営業訪問件数」
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
	,CONSTRAINT ED0308T_PK PRIMARY KEY(
	 EIGYO_KODO_YOTEI_JIGYOSHO_CD
	,  EIGYO_KODO_YOTEI_SHAIN_NO
	,  EIGYO_KODO_YMD
	,  YOTEI_BUNRUI_CD
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0308T_TBL IS '営業行動時間予定分類別集計テーブル'
/

COMMENT ON COLUMN ED0308T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0308T_TBL.EIGYO_KODO_YOTEI_JIGYOSHO_CD IS '営業行動予定事業所コード'
/
COMMENT ON COLUMN ED0308T_TBL.EIGYO_KODO_YOTEI_SHAIN_NO IS '営業行動予定社員番号'
/
COMMENT ON COLUMN ED0308T_TBL.EIGYO_KODO_YMD IS '営業行動年月日'
/
COMMENT ON COLUMN ED0308T_TBL.YOTEI_BUNRUI_CD IS '予定分類コード'
/
COMMENT ON COLUMN ED0308T_TBL.EIGYO_KODO_GOKEI_JIKAN IS '営業行動合計時間'
/
COMMENT ON COLUMN ED0308T_TBL.EIGYO_HOMON_KENSU IS '営業訪問件数'
/
COMMENT ON COLUMN ED0308T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0308T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0308T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0308T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0308T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0308T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0308T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0308T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0308T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0308T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0308T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0308T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
