﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9031M_TBL.sql
-- 物理名：ED9031M_TBL
-- 論理名：業務日付管理マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9031M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9031M_TBL (
	 GYOMU_HIZUKE_KOTEI_CD  CHAR(3) NOT NULL --「業務日付固定コード」
	,CALENDAR_YMD  DATE NOT NULL --「カレンダ年月日」
	,CALENDAR_ZENKAI_YMD  DATE NOT NULL --「カレンダ前回年月日」
	,EIGYO_KANRI_YMD  DATE NOT NULL --「営業管理年月日」
	,EIGYO_KANRI_ZENKAI_YMD  DATE NOT NULL --「営業管理前回年月日」
	,EIGYO_KANRI_YM  CHAR(6) NOT NULL --「営業管理年月」
	,EIGYO_KANRI_NENDO  CHAR(4) NOT NULL --「営業管理年度」
	,EIGYO_KISHU_YMD  DATE NOT NULL --「営業期首年月日」
	,EIGYO_GESSHO_YMD  DATE NOT NULL --「営業月初年月日」
	,KEIRI_KANRI_YMD  DATE NOT NULL --「経理管理年月日」
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
	,CONSTRAINT ED9031M_PK PRIMARY KEY(
	 GYOMU_HIZUKE_KOTEI_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9031M_TBL IS '業務日付管理マスタ'
/

COMMENT ON COLUMN ED9031M_TBL.GYOMU_HIZUKE_KOTEI_CD IS '業務日付固定コード'
/
COMMENT ON COLUMN ED9031M_TBL.CALENDAR_YMD IS 'カレンダ年月日'
/
COMMENT ON COLUMN ED9031M_TBL.CALENDAR_ZENKAI_YMD IS 'カレンダ前回年月日'
/
COMMENT ON COLUMN ED9031M_TBL.EIGYO_KANRI_YMD IS '営業管理年月日'
/
COMMENT ON COLUMN ED9031M_TBL.EIGYO_KANRI_ZENKAI_YMD IS '営業管理前回年月日'
/
COMMENT ON COLUMN ED9031M_TBL.EIGYO_KANRI_YM IS '営業管理年月'
/
COMMENT ON COLUMN ED9031M_TBL.EIGYO_KANRI_NENDO IS '営業管理年度'
/
COMMENT ON COLUMN ED9031M_TBL.EIGYO_KISHU_YMD IS '営業期首年月日'
/
COMMENT ON COLUMN ED9031M_TBL.EIGYO_GESSHO_YMD IS '営業月初年月日'
/
COMMENT ON COLUMN ED9031M_TBL.KEIRI_KANRI_YMD IS '経理管理年月日'
/
COMMENT ON COLUMN ED9031M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9031M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9031M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9031M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9031M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9031M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9031M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9031M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9031M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9031M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9031M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9031M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
