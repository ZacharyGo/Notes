﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9132W_TBL.sql
-- 物理名：ED9132W_TBL
-- 論理名：営業管理業種分類マスタファイルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9132W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9132W_TBL (
	 EIGY_KNR_GYSH_DIBNRI_CD  CHAR(2) NOT NULL --「営業管理業種大分類コード」
	,EIGY_KNR_GYSH_CHBNRI_CD  CHAR(2) NOT NULL --「営業管理業種中分類コード」
	,EIGY_KNR_GYSH_SHBNRI_CD  CHAR(3) NOT NULL --「営業管理業種小分類コード」
	,EIGY_KNR_GYSH_SIBNRI_CD  CHAR(4) NOT NULL --「営業管理業種細分類コード」
	,RECORD_SOSA_KBN  CHAR(1) NOT NULL --「レコード操作区分」
	,EIGY_KNR_GYSH_BNRI_HYJ_JUN  NUMBER(4,0) DEFAULT '0' NOT NULL --「営業管理業種分類表示順」
	,EIGYO_KANRI_GYOSHU_BUNRUI_NM  VARCHAR2(60) --「営業管理業種分類名称」
	,SHIYO_FUKA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「使用不可フラグ」
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
	,CONSTRAINT ED9132W_PK PRIMARY KEY(
	 EIGY_KNR_GYSH_DIBNRI_CD
	,  EIGY_KNR_GYSH_CHBNRI_CD
	,  EIGY_KNR_GYSH_SHBNRI_CD
	,  EIGY_KNR_GYSH_SIBNRI_CD
	,  RECORD_SOSA_KBN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9132W_TBL IS '営業管理業種分類マスタファイルワーク'
/

COMMENT ON COLUMN ED9132W_TBL.EIGY_KNR_GYSH_DIBNRI_CD IS '営業管理業種大分類コード'
/
COMMENT ON COLUMN ED9132W_TBL.EIGY_KNR_GYSH_CHBNRI_CD IS '営業管理業種中分類コード'
/
COMMENT ON COLUMN ED9132W_TBL.EIGY_KNR_GYSH_SHBNRI_CD IS '営業管理業種小分類コード'
/
COMMENT ON COLUMN ED9132W_TBL.EIGY_KNR_GYSH_SIBNRI_CD IS '営業管理業種細分類コード'
/
COMMENT ON COLUMN ED9132W_TBL.RECORD_SOSA_KBN IS 'レコード操作区分'
/
COMMENT ON COLUMN ED9132W_TBL.EIGY_KNR_GYSH_BNRI_HYJ_JUN IS '営業管理業種分類表示順'
/
COMMENT ON COLUMN ED9132W_TBL.EIGYO_KANRI_GYOSHU_BUNRUI_NM IS '営業管理業種分類名称'
/
COMMENT ON COLUMN ED9132W_TBL.SHIYO_FUKA_FLG IS '使用不可フラグ'
/
COMMENT ON COLUMN ED9132W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9132W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9132W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9132W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9132W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9132W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9132W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9132W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9132W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9132W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9132W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9132W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
