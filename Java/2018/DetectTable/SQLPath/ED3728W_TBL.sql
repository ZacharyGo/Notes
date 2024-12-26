﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3728W_TBL.sql
-- 物理名：ED3728W_TBL
-- 論理名：滞留債権タスク通知ワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3728W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3728W_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,URIKAKE_SAIKEN_ID  CHAR(14) NOT NULL --「売掛債権ＩＤ」
	,TAIRYU_SAIKEN_TSUCHI_NAIYO_KBN  CHAR(1) NOT NULL --「滞留債権通知内容区分」
	,SEIKYUSHO_NO  CHAR(14) --「請求書番号」
	,SEIKYU_KANRI_MEISAI_NO  CHAR(14) --「請求管理明細番号」
	,JUCHU_KEIYAKU_NO  CHAR(15) --「受注契約番号」
	,TORIKOMIMOTO_KBN  CHAR(2) NOT NULL --「取込元区分」
	,SIKYSK_TRHKSK_SISHK_NM  VARCHAR2(50) --「請求先取引先正式名称」
	,SEIKYUSHO_TEMPLATE_NO  CHAR(14) --「請求書テンプレート番号」
	,SEIKYU_ZANDAKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「請求残高金額」
	,SAIDAI_TAIRYU_TSUKISU  NUMBER(9,0) --「最大滞留月数」
	,TSH_SIKYSH_HKK_YTI_YMD  DATE --「当初請求書発行予定年月日」
	,TOSHO_NYUKIN_YOTEI_YMD  DATE --「当初入金予定年月日」
	,YY_KKN_KSNG_TSH_NYKN_YTI_YMD  DATE --「猶予期間加算後当初入金予定年月日」
	,TASK_TSUCHI_NO  CHAR(10) --「タスク通知番号」
	,SEIKYU_KANRI_JIGYOSHO_CD  CHAR(6) --「請求管理事業所コード」
	,SIKY_KNR_JGYSH_TNTSH_SHIN_NO  VARCHAR2(8) --「請求管理事業所担当者社員番号」
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
	,CONSTRAINT ED3728W_PK PRIMARY KEY(
	 URIKAKE_SAIKEN_ID
	,  TORIKOMIMOTO_KBN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3728W_TBL IS '滞留債権タスク通知ワーク'
/

COMMENT ON COLUMN ED3728W_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3728W_TBL.URIKAKE_SAIKEN_ID IS '売掛債権ＩＤ'
/
COMMENT ON COLUMN ED3728W_TBL.TAIRYU_SAIKEN_TSUCHI_NAIYO_KBN IS '滞留債権通知内容区分'
/
COMMENT ON COLUMN ED3728W_TBL.SEIKYUSHO_NO IS '請求書番号'
/
COMMENT ON COLUMN ED3728W_TBL.SEIKYU_KANRI_MEISAI_NO IS '請求管理明細番号'
/
COMMENT ON COLUMN ED3728W_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED3728W_TBL.TORIKOMIMOTO_KBN IS '取込元区分'
/
COMMENT ON COLUMN ED3728W_TBL.SIKYSK_TRHKSK_SISHK_NM IS '請求先取引先正式名称'
/
COMMENT ON COLUMN ED3728W_TBL.SEIKYUSHO_TEMPLATE_NO IS '請求書テンプレート番号'
/
COMMENT ON COLUMN ED3728W_TBL.SEIKYU_ZANDAKA_AMT IS '請求残高金額'
/
COMMENT ON COLUMN ED3728W_TBL.SAIDAI_TAIRYU_TSUKISU IS '最大滞留月数'
/
COMMENT ON COLUMN ED3728W_TBL.TSH_SIKYSH_HKK_YTI_YMD IS '当初請求書発行予定年月日'
/
COMMENT ON COLUMN ED3728W_TBL.TOSHO_NYUKIN_YOTEI_YMD IS '当初入金予定年月日'
/
COMMENT ON COLUMN ED3728W_TBL.YY_KKN_KSNG_TSH_NYKN_YTI_YMD IS '猶予期間加算後当初入金予定年月日'
/
COMMENT ON COLUMN ED3728W_TBL.TASK_TSUCHI_NO IS 'タスク通知番号'
/
COMMENT ON COLUMN ED3728W_TBL.SEIKYU_KANRI_JIGYOSHO_CD IS '請求管理事業所コード'
/
COMMENT ON COLUMN ED3728W_TBL.SIKY_KNR_JGYSH_TNTSH_SHIN_NO IS '請求管理事業所担当者社員番号'
/
COMMENT ON COLUMN ED3728W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3728W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3728W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3728W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3728W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3728W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3728W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3728W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3728W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3728W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3728W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3728W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/