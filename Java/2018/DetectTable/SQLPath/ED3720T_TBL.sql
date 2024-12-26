﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3720T_TBL.sql
-- 物理名：ED3720T_TBL
-- 論理名：滞留債権分割回収テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3720T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3720T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,TAIRYU_SAIKEN_ID  CHAR(14) NOT NULL --「滞留債権ＩＤ」
	,BNKTS_KISH_KIKK_STATUS_KBN  CHAR(1) DEFAULT '0' NOT NULL --「分割回収計画ステータス区分」
	,SEIKYUSAKI_TORIHIKISAKI_CD  CHAR(9) --「請求先取引先コード」
	,SEIKYUSAKIBETSU_TEMPLATE_SN  CHAR(5) --「請求先別テンプレート連番」
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
	,CONSTRAINT ED3720T_PK PRIMARY KEY(
	 TAIRYU_SAIKEN_ID
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3720T_TBL IS '滞留債権分割回収テーブル'
/

COMMENT ON COLUMN ED3720T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3720T_TBL.TAIRYU_SAIKEN_ID IS '滞留債権ＩＤ'
/
COMMENT ON COLUMN ED3720T_TBL.BNKTS_KISH_KIKK_STATUS_KBN IS '分割回収計画ステータス区分'
/
COMMENT ON COLUMN ED3720T_TBL.SEIKYUSAKI_TORIHIKISAKI_CD IS '請求先取引先コード'
/
COMMENT ON COLUMN ED3720T_TBL.SEIKYUSAKIBETSU_TEMPLATE_SN IS '請求先別テンプレート連番'
/
COMMENT ON COLUMN ED3720T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3720T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3720T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3720T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3720T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3720T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3720T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3720T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3720T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3720T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3720T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3720T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
