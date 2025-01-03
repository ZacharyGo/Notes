﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9188T_TBL.sql
-- 物理名：ED9188T_TBL
-- 論理名：全社ポータル掲示対象先テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9188T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9188T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,ZENSHA_PORTAL_KEIJI_NO  NUMBER(10,0) DEFAULT '1' NOT NULL --「全社ポータル掲示番号」
	,ZNSH_PORTAL_KIJ_TISHSK_SN  NUMBER(3,0) DEFAULT '1' NOT NULL --「全社ポータル掲示対象先連番」
	,KEIJI_TAISHO_GROUP_KBN  CHAR(2) NOT NULL --「掲示対象グループ区分」
	,KEIJI_TAISHO_GROUP_KAISHA_CD  CHAR(5) NOT NULL --「掲示対象グループ会社コード」
	,KEIJI_TAISHO_GROUP_JIGYOSHO_CD  CHAR(6) NOT NULL --「掲示対象グループ事業所コード」
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
	,CONSTRAINT ED9188T_PK PRIMARY KEY(
	 ZENSHA_PORTAL_KEIJI_NO
	,  ZNSH_PORTAL_KIJ_TISHSK_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9188T_TBL IS '全社ポータル掲示対象先テーブル'
/

COMMENT ON COLUMN ED9188T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED9188T_TBL.ZENSHA_PORTAL_KEIJI_NO IS '全社ポータル掲示番号'
/
COMMENT ON COLUMN ED9188T_TBL.ZNSH_PORTAL_KIJ_TISHSK_SN IS '全社ポータル掲示対象先連番'
/
COMMENT ON COLUMN ED9188T_TBL.KEIJI_TAISHO_GROUP_KBN IS '掲示対象グループ区分'
/
COMMENT ON COLUMN ED9188T_TBL.KEIJI_TAISHO_GROUP_KAISHA_CD IS '掲示対象グループ会社コード'
/
COMMENT ON COLUMN ED9188T_TBL.KEIJI_TAISHO_GROUP_JIGYOSHO_CD IS '掲示対象グループ事業所コード'
/
COMMENT ON COLUMN ED9188T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9188T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9188T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9188T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9188T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9188T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9188T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9188T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9188T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9188T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9188T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9188T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
