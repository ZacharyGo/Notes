﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0707M_TBL.sql
-- 物理名：ED0707M_TBL
-- 論理名：入出金機メーカ休日マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0707M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0707M_TBL (
	 NSKKIS_JD_MAIL_SSS_NM_KBN  CHAR(2) NOT NULL --「入出金機移設自動メール送信先名称区分」
	,NSKK_MAKER_KYUJITSU_YMD  DATE NOT NULL --「入出金機メーカ休日年月日」
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
	,CONSTRAINT ED0707M_PK PRIMARY KEY(
	 NSKKIS_JD_MAIL_SSS_NM_KBN
	,  NSKK_MAKER_KYUJITSU_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0707M_TBL IS '入出金機メーカ休日マスタ'
/

COMMENT ON COLUMN ED0707M_TBL.NSKKIS_JD_MAIL_SSS_NM_KBN IS '入出金機移設自動メール送信先名称区分'
/
COMMENT ON COLUMN ED0707M_TBL.NSKK_MAKER_KYUJITSU_YMD IS '入出金機メーカ休日年月日'
/
COMMENT ON COLUMN ED0707M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0707M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0707M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0707M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0707M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0707M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0707M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0707M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0707M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0707M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0707M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0707M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
