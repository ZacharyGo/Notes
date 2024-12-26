﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3517T_TBL.sql
-- 物理名：ED3517T_TBL
-- 論理名：請求書テンプレート占有管理テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3517T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3517T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SEIKYUSAKI_TORIHIKISAKI_CD  CHAR(9) NOT NULL --「請求先取引先コード」
	,SEIKYUSAKIBETSU_TEMPLATE_SN  CHAR(5) NOT NULL --「請求先別テンプレート連番」
	,SEIKYUSHO_TEMPLATE_NO  CHAR(14) NOT NULL --「請求書テンプレート番号」
	,SIKYSH_TEMPLATE_SNYSH_SHIN_NO  VARCHAR2(8) --「請求書テンプレート占有者社員番号」
	,SIKYSH_TEMPLATE_SNYSH_JGYSH_CD  CHAR(6) --「請求書テンプレート占有者事業所コード」
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
	,CONSTRAINT ED3517T_PK PRIMARY KEY(
	 SEIKYUSAKI_TORIHIKISAKI_CD
	,  SEIKYUSAKIBETSU_TEMPLATE_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3517T_TBL IS '請求書テンプレート占有管理テーブル'
/

COMMENT ON COLUMN ED3517T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3517T_TBL.SEIKYUSAKI_TORIHIKISAKI_CD IS '請求先取引先コード'
/
COMMENT ON COLUMN ED3517T_TBL.SEIKYUSAKIBETSU_TEMPLATE_SN IS '請求先別テンプレート連番'
/
COMMENT ON COLUMN ED3517T_TBL.SEIKYUSHO_TEMPLATE_NO IS '請求書テンプレート番号'
/
COMMENT ON COLUMN ED3517T_TBL.SIKYSH_TEMPLATE_SNYSH_SHIN_NO IS '請求書テンプレート占有者社員番号'
/
COMMENT ON COLUMN ED3517T_TBL.SIKYSH_TEMPLATE_SNYSH_JGYSH_CD IS '請求書テンプレート占有者事業所コード'
/
COMMENT ON COLUMN ED3517T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3517T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3517T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3517T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3517T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3517T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3517T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3517T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3517T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3517T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3517T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3517T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/