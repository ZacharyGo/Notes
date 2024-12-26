﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3013T_TBL.sql
-- 物理名：ED3013T_TBL
-- 論理名：保全結果月次進捗テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3013T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3013T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JOI_JIGYOSHO_CD  CHAR(6) NOT NULL --「上位事業所コード」
	,HOZEN_KEKKA_HOKOKU_YM  CHAR(6) NOT NULL --「保全結果報告年月」
	,TEIKI_TENKEN_SHINCHOKU_KBN  CHAR(1) NOT NULL --「定期点検進捗区分」
	,HZN_GTSJ_SHNCHK_MTSSI_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「保全月次進捗未達成件数」
	,HZN_GTSJ_SHNCHK_KIZN_YTI_M  CHAR(2) DEFAULT '0' NOT NULL --「保全月次進捗改善予定月」
	,TEIKI_HOZEN_KEIKAKU_4_M_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「定期保全計画４月件数」
	,TEIKI_HOZEN_KEIKAKU_5_M_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「定期保全計画５月件数」
	,TEIKI_HOZEN_KEIKAKU_6_M_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「定期保全計画６月件数」
	,TEIKI_HOZEN_KEIKAKU_7_M_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「定期保全計画７月件数」
	,TEIKI_HOZEN_KEIKAKU_8_M_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「定期保全計画８月件数」
	,TEIKI_HOZEN_KEIKAKU_9_M_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「定期保全計画９月件数」
	,TEIKI_HOZEN_KEIKAKU_10_M_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「定期保全計画１０月件数」
	,TEIKI_HOZEN_KEIKAKU_11_M_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「定期保全計画１１月件数」
	,TEIKI_HOZEN_KEIKAKU_12_M_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「定期保全計画１２月件数」
	,TEIKI_HOZEN_KEIKAKU_1_M_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「定期保全計画１月件数」
	,TEIKI_HOZEN_KEIKAKU_2_M_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「定期保全計画２月件数」
	,TEIKI_HOZEN_KEIKAKU_3_M_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「定期保全計画３月件数」
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
	,CONSTRAINT ED3013T_PK PRIMARY KEY(
	 JOI_JIGYOSHO_CD
	,  HOZEN_KEKKA_HOKOKU_YM
	,  TEIKI_TENKEN_SHINCHOKU_KBN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3013T_TBL IS '保全結果月次進捗テーブル'
/

COMMENT ON COLUMN ED3013T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3013T_TBL.JOI_JIGYOSHO_CD IS '上位事業所コード'
/
COMMENT ON COLUMN ED3013T_TBL.HOZEN_KEKKA_HOKOKU_YM IS '保全結果報告年月'
/
COMMENT ON COLUMN ED3013T_TBL.TEIKI_TENKEN_SHINCHOKU_KBN IS '定期点検進捗区分'
/
COMMENT ON COLUMN ED3013T_TBL.HZN_GTSJ_SHNCHK_MTSSI_KENSU IS '保全月次進捗未達成件数'
/
COMMENT ON COLUMN ED3013T_TBL.HZN_GTSJ_SHNCHK_KIZN_YTI_M IS '保全月次進捗改善予定月'
/
COMMENT ON COLUMN ED3013T_TBL.TEIKI_HOZEN_KEIKAKU_4_M_KENSU IS '定期保全計画４月件数'
/
COMMENT ON COLUMN ED3013T_TBL.TEIKI_HOZEN_KEIKAKU_5_M_KENSU IS '定期保全計画５月件数'
/
COMMENT ON COLUMN ED3013T_TBL.TEIKI_HOZEN_KEIKAKU_6_M_KENSU IS '定期保全計画６月件数'
/
COMMENT ON COLUMN ED3013T_TBL.TEIKI_HOZEN_KEIKAKU_7_M_KENSU IS '定期保全計画７月件数'
/
COMMENT ON COLUMN ED3013T_TBL.TEIKI_HOZEN_KEIKAKU_8_M_KENSU IS '定期保全計画８月件数'
/
COMMENT ON COLUMN ED3013T_TBL.TEIKI_HOZEN_KEIKAKU_9_M_KENSU IS '定期保全計画９月件数'
/
COMMENT ON COLUMN ED3013T_TBL.TEIKI_HOZEN_KEIKAKU_10_M_KENSU IS '定期保全計画１０月件数'
/
COMMENT ON COLUMN ED3013T_TBL.TEIKI_HOZEN_KEIKAKU_11_M_KENSU IS '定期保全計画１１月件数'
/
COMMENT ON COLUMN ED3013T_TBL.TEIKI_HOZEN_KEIKAKU_12_M_KENSU IS '定期保全計画１２月件数'
/
COMMENT ON COLUMN ED3013T_TBL.TEIKI_HOZEN_KEIKAKU_1_M_KENSU IS '定期保全計画１月件数'
/
COMMENT ON COLUMN ED3013T_TBL.TEIKI_HOZEN_KEIKAKU_2_M_KENSU IS '定期保全計画２月件数'
/
COMMENT ON COLUMN ED3013T_TBL.TEIKI_HOZEN_KEIKAKU_3_M_KENSU IS '定期保全計画３月件数'
/
COMMENT ON COLUMN ED3013T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3013T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3013T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3013T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3013T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3013T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3013T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3013T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3013T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3013T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3013T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3013T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
