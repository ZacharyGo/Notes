﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3011T_TBL.sql
-- 物理名：ED3011T_TBL
-- 論理名：保全結果月次報告テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3011T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3011T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JOI_JIGYOSHO_CD  CHAR(6) NOT NULL --「上位事業所コード」
	,HOZEN_KEKKA_HOKOKU_YM  CHAR(6) NOT NULL --「保全結果報告年月」
	,SHINSEI_SHONIN_NO  CHAR(14) --「申請承認番号」
	,HZN_KEKKA_HKK_MTSSI_RIYU  VARCHAR2(300) --「保全結果報告未達成理由」
	,HZN_KEKKA_HKK_KIZNSK_NAIYO  VARCHAR2(300) --「保全結果報告改善策内容」
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
	,CONSTRAINT ED3011T_PK PRIMARY KEY(
	 JOI_JIGYOSHO_CD
	,  HOZEN_KEKKA_HOKOKU_YM
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3011T_TBL IS '保全結果月次報告テーブル'
/

COMMENT ON COLUMN ED3011T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3011T_TBL.JOI_JIGYOSHO_CD IS '上位事業所コード'
/
COMMENT ON COLUMN ED3011T_TBL.HOZEN_KEKKA_HOKOKU_YM IS '保全結果報告年月'
/
COMMENT ON COLUMN ED3011T_TBL.SHINSEI_SHONIN_NO IS '申請承認番号'
/
COMMENT ON COLUMN ED3011T_TBL.HZN_KEKKA_HKK_MTSSI_RIYU IS '保全結果報告未達成理由'
/
COMMENT ON COLUMN ED3011T_TBL.HZN_KEKKA_HKK_KIZNSK_NAIYO IS '保全結果報告改善策内容'
/
COMMENT ON COLUMN ED3011T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3011T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3011T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3011T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3011T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3011T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3011T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3011T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3011T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3011T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3011T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3011T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/