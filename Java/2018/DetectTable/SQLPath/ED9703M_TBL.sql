﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9703M_TBL.sql
-- 物理名：ED9703M_TBL
-- 論理名：オンライン画面運用管理マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9703M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9703M_TBL (
	 GAMEN_ID  CHAR(15) NOT NULL --「画面ＩＤ」
	,GAMEN_NM  VARCHAR2(20) --「画面名称」
	,GAMEN_SERVICE_KAISHI_TM  CHAR(4) DEFAULT '0000' --「画面サービス開始時刻」
	,GAMEN_SERVICE_SHURYO_TM  CHAR(4) DEFAULT '2359' --「画面サービス終了時刻」
	,GAMEN_SERVICE_TEISHI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「画面サービス停止フラグ」
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
	,CONSTRAINT ED9703M_PK PRIMARY KEY(
	 GAMEN_ID
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9703M_TBL IS 'オンライン画面運用管理マスタ'
/

COMMENT ON COLUMN ED9703M_TBL.GAMEN_ID IS '画面ＩＤ'
/
COMMENT ON COLUMN ED9703M_TBL.GAMEN_NM IS '画面名称'
/
COMMENT ON COLUMN ED9703M_TBL.GAMEN_SERVICE_KAISHI_TM IS '画面サービス開始時刻'
/
COMMENT ON COLUMN ED9703M_TBL.GAMEN_SERVICE_SHURYO_TM IS '画面サービス終了時刻'
/
COMMENT ON COLUMN ED9703M_TBL.GAMEN_SERVICE_TEISHI_FLG IS '画面サービス停止フラグ'
/
COMMENT ON COLUMN ED9703M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9703M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9703M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9703M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9703M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9703M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9703M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9703M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9703M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9703M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9703M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9703M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
