﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0201M_TBL.sql
-- 物理名：ED0201M_TBL
-- 論理名：キャンペーンマスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0201M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0201M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,CAMPAIGN_CD  CHAR(11) NOT NULL --「キャンペーンコード」
	,CAMPAIGN_NM  VARCHAR2(60) NOT NULL --「キャンペーン名称」
	,KEIJO_TAISHO_NENDO  CHAR(4) NOT NULL --「計上対象年度」
	,SHUKEI_HOHO_KBN  CHAR(1) NOT NULL --「集計方法区分」
	,DAIICHI_CAMPAIGN_JOKEN_KBN  CHAR(1) NOT NULL --「第一キャンペーン条件区分」
	,DIICH_CAMPAIGN_JKN_KISH_YMD  DATE NOT NULL --「第一キャンペーン条件開始年月日」
	,DIICH_CAMPAIGN_JKN_SHRY_YMD  DATE NOT NULL --「第一キャンペーン条件終了年月日」
	,DAINI_CAMPAIGN_JOKEN_KBN  CHAR(1) --「第二キャンペーン条件区分」
	,DIN_CAMPAIGN_JKN_KISH_YMD  DATE --「第二キャンペーン条件開始年月日」
	,DIN_CAMPAIGN_JKN_SHRY_YMD  DATE --「第二キャンペーン条件終了年月日」
	,MOKUHYO_SETTEI_SAIKASO_KBN  CHAR(1) NOT NULL --「目標設定最下層区分」
	,MOKUHYO_SETTEI_TANI_KBN  CHAR(1) NOT NULL --「目標設定単位区分」
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
	,CONSTRAINT ED0201M_PK PRIMARY KEY(
	 CAMPAIGN_CD
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0201M_TBL IS 'キャンペーンマスタ'
/

COMMENT ON COLUMN ED0201M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0201M_TBL.CAMPAIGN_CD IS 'キャンペーンコード'
/
COMMENT ON COLUMN ED0201M_TBL.CAMPAIGN_NM IS 'キャンペーン名称'
/
COMMENT ON COLUMN ED0201M_TBL.KEIJO_TAISHO_NENDO IS '計上対象年度'
/
COMMENT ON COLUMN ED0201M_TBL.SHUKEI_HOHO_KBN IS '集計方法区分'
/
COMMENT ON COLUMN ED0201M_TBL.DAIICHI_CAMPAIGN_JOKEN_KBN IS '第一キャンペーン条件区分'
/
COMMENT ON COLUMN ED0201M_TBL.DIICH_CAMPAIGN_JKN_KISH_YMD IS '第一キャンペーン条件開始年月日'
/
COMMENT ON COLUMN ED0201M_TBL.DIICH_CAMPAIGN_JKN_SHRY_YMD IS '第一キャンペーン条件終了年月日'
/
COMMENT ON COLUMN ED0201M_TBL.DAINI_CAMPAIGN_JOKEN_KBN IS '第二キャンペーン条件区分'
/
COMMENT ON COLUMN ED0201M_TBL.DIN_CAMPAIGN_JKN_KISH_YMD IS '第二キャンペーン条件開始年月日'
/
COMMENT ON COLUMN ED0201M_TBL.DIN_CAMPAIGN_JKN_SHRY_YMD IS '第二キャンペーン条件終了年月日'
/
COMMENT ON COLUMN ED0201M_TBL.MOKUHYO_SETTEI_SAIKASO_KBN IS '目標設定最下層区分'
/
COMMENT ON COLUMN ED0201M_TBL.MOKUHYO_SETTEI_TANI_KBN IS '目標設定単位区分'
/
COMMENT ON COLUMN ED0201M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0201M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0201M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0201M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0201M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0201M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0201M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0201M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0201M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0201M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0201M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0201M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
