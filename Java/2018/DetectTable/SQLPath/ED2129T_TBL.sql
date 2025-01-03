﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED2129T_TBL.sql
-- 物理名：ED2129T_TBL
-- 論理名：撤去品テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED2129T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED2129T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,TEKKYOHIN_KANRI_ID  CHAR(16) NOT NULL --「撤去品管理ＩＤ」
	,TEKKYOHIN_SHUKAN_JIGYOSHO_CD  CHAR(6) NOT NULL --「撤去品主管事業所コード」
	,HIMMEI_CD  CHAR(8) NOT NULL --「品名コード」
	,TEKKYO_YMD  DATE --「撤去年月日」
	,CHOBO_TEKKYO_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「帳簿撤去数量」
	,YUKO_TEKKYO_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「有効撤去数量」
	,JUCHU_KEIYAKU_NO  CHAR(15) --「受注契約番号」
	,TAISHOSAKI_CD  CHAR(9) --「対象先コード」
	,TEKKYOHIN_HAISO_YOTEI_YMD  DATE --「撤去品配送予定年月日」
	,HENKYAKU_KIBO_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「返却希望数量」
	,SAIHYOKA_YOTEI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「再評価予定フラグ」
	,REPAIR_CENTER_HOKAN_FLG  CHAR(1) DEFAULT '0' NOT NULL --「リペアセンタ保管フラグ」
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
	,CONSTRAINT ED2129T_PK PRIMARY KEY(
	 TEKKYOHIN_KANRI_ID
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED2129T_TBL IS '撤去品テーブル'
/

COMMENT ON COLUMN ED2129T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED2129T_TBL.TEKKYOHIN_KANRI_ID IS '撤去品管理ＩＤ'
/
COMMENT ON COLUMN ED2129T_TBL.TEKKYOHIN_SHUKAN_JIGYOSHO_CD IS '撤去品主管事業所コード'
/
COMMENT ON COLUMN ED2129T_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED2129T_TBL.TEKKYO_YMD IS '撤去年月日'
/
COMMENT ON COLUMN ED2129T_TBL.CHOBO_TEKKYO_SURYO IS '帳簿撤去数量'
/
COMMENT ON COLUMN ED2129T_TBL.YUKO_TEKKYO_SURYO IS '有効撤去数量'
/
COMMENT ON COLUMN ED2129T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED2129T_TBL.TAISHOSAKI_CD IS '対象先コード'
/
COMMENT ON COLUMN ED2129T_TBL.TEKKYOHIN_HAISO_YOTEI_YMD IS '撤去品配送予定年月日'
/
COMMENT ON COLUMN ED2129T_TBL.HENKYAKU_KIBO_SURYO IS '返却希望数量'
/
COMMENT ON COLUMN ED2129T_TBL.SAIHYOKA_YOTEI_FLG IS '再評価予定フラグ'
/
COMMENT ON COLUMN ED2129T_TBL.REPAIR_CENTER_HOKAN_FLG IS 'リペアセンタ保管フラグ'
/
COMMENT ON COLUMN ED2129T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED2129T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED2129T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED2129T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED2129T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED2129T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED2129T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED2129T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED2129T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED2129T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED2129T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED2129T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
