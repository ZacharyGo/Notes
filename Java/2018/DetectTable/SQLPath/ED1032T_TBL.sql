﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1032T_TBL.sql
-- 物理名：ED1032T_TBL
-- 論理名：信号テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1032T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1032T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,TAISHOSAKI_CD  CHAR(9) NOT NULL --「対象先コード」
	,SHINGO_SN  CHAR(14) NOT NULL --「信号連番」
	,JUCHU_KEIYAKU_NO  CHAR(15) --「受注契約番号」
	,TANSHI_ADDRESS_NM  VARCHAR2(12) --「端子アドレス名称」
	,SUB_SHINGO_ADDRESS_NM  VARCHAR2(6) --「サブ信号アドレス名称」
	,SHINGO_SHUBETSU_NO  VARCHAR2(4) --「信号種別番号」
	,SHINGO_JUSHIN_SHIKEN_NM  VARCHAR2(15) --「信号受信試験名称」
	,KEIHO_SHINGO_BIKO  VARCHAR2(20) --「警報信号備考」
	,KEIHO_SHINGO_SHOCHI_KBN  CHAR(1) NOT NULL --「警報信号処置区分」
	,HOZEN_KEIHO_KBN  CHAR(1) NOT NULL --「保全警報区分」
	,DEMPYO_YMD  DATE NOT NULL --「伝票年月日」
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
	,CONSTRAINT ED1032T_PK PRIMARY KEY(
	 TAISHOSAKI_CD
	,  SHINGO_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1032T_TBL IS '信号テーブル'
/

COMMENT ON COLUMN ED1032T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1032T_TBL.TAISHOSAKI_CD IS '対象先コード'
/
COMMENT ON COLUMN ED1032T_TBL.SHINGO_SN IS '信号連番'
/
COMMENT ON COLUMN ED1032T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED1032T_TBL.TANSHI_ADDRESS_NM IS '端子アドレス名称'
/
COMMENT ON COLUMN ED1032T_TBL.SUB_SHINGO_ADDRESS_NM IS 'サブ信号アドレス名称'
/
COMMENT ON COLUMN ED1032T_TBL.SHINGO_SHUBETSU_NO IS '信号種別番号'
/
COMMENT ON COLUMN ED1032T_TBL.SHINGO_JUSHIN_SHIKEN_NM IS '信号受信試験名称'
/
COMMENT ON COLUMN ED1032T_TBL.KEIHO_SHINGO_BIKO IS '警報信号備考'
/
COMMENT ON COLUMN ED1032T_TBL.KEIHO_SHINGO_SHOCHI_KBN IS '警報信号処置区分'
/
COMMENT ON COLUMN ED1032T_TBL.HOZEN_KEIHO_KBN IS '保全警報区分'
/
COMMENT ON COLUMN ED1032T_TBL.DEMPYO_YMD IS '伝票年月日'
/
COMMENT ON COLUMN ED1032T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1032T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1032T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1032T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1032T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1032T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1032T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1032T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1032T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1032T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1032T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1032T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
