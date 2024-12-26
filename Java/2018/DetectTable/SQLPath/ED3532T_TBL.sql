﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3532T_TBL.sql
-- 物理名：ED3532T_TBL
-- 論理名：請求代行実績補正テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3532T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3532T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SEIKYU_DAIKO_TESURYO_SEIKYU_YM  CHAR(6) NOT NULL --「請求代行手数料請求年月」
	,SEIKYUSHO_NO  CHAR(14) NOT NULL --「請求書番号」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,NYUKIN_YMD  DATE NOT NULL --「入金年月日」
	,SEIKYU_DAIKO_JISSEKI_HOSEI_SN  CHAR(14) NOT NULL --「請求代行実績補正連番」
	,SEIKYU_DAIKO_KANRI_NO  CHAR(13) NOT NULL --「請求代行管理番号」
	,JUCHU_JIGYOSHO_CD  CHAR(6) --「受注事業所コード」
	,SEIKYU_DAIKO_IRAISHO_NO  CHAR(10) --「請求代行依頼書番号」
	,TAISHOSAKI_CD  CHAR(9) --「対象先コード」
	,SEIKYU_DAIKO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「請求代行金額」
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
	,CONSTRAINT ED3532T_PK PRIMARY KEY(
	 SEIKYU_DAIKO_TESURYO_SEIKYU_YM
	,  SEIKYUSHO_NO
	,  JUCHU_KEIYAKU_NO
	,  NYUKIN_YMD
	,  KAISHA_CD
	,  SEIKYU_DAIKO_JISSEKI_HOSEI_SN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3532T_TBL IS '請求代行実績補正テーブル'
/

COMMENT ON COLUMN ED3532T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3532T_TBL.SEIKYU_DAIKO_TESURYO_SEIKYU_YM IS '請求代行手数料請求年月'
/
COMMENT ON COLUMN ED3532T_TBL.SEIKYUSHO_NO IS '請求書番号'
/
COMMENT ON COLUMN ED3532T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED3532T_TBL.NYUKIN_YMD IS '入金年月日'
/
COMMENT ON COLUMN ED3532T_TBL.SEIKYU_DAIKO_JISSEKI_HOSEI_SN IS '請求代行実績補正連番'
/
COMMENT ON COLUMN ED3532T_TBL.SEIKYU_DAIKO_KANRI_NO IS '請求代行管理番号'
/
COMMENT ON COLUMN ED3532T_TBL.JUCHU_JIGYOSHO_CD IS '受注事業所コード'
/
COMMENT ON COLUMN ED3532T_TBL.SEIKYU_DAIKO_IRAISHO_NO IS '請求代行依頼書番号'
/
COMMENT ON COLUMN ED3532T_TBL.TAISHOSAKI_CD IS '対象先コード'
/
COMMENT ON COLUMN ED3532T_TBL.SEIKYU_DAIKO_AMT IS '請求代行金額'
/
COMMENT ON COLUMN ED3532T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3532T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3532T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3532T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3532T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3532T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3532T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3532T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3532T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3532T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3532T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3532T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
