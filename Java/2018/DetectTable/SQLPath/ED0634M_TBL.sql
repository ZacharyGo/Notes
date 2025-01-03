﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0634M_TBL.sql
-- 物理名：ED0634M_TBL
-- 論理名：入出金機移設自動メールマスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0634M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0634M_TBL (
	 NSKKIS_JD_MAIL_SSS_SHBTS_KBN  CHAR(1) NOT NULL --「入出金機移設自動メール送信先種別区分」
	,NSKKIS_JD_MAIL_SSS_NM_KBN  CHAR(2) NOT NULL --「入出金機移設自動メール送信先名称区分」
	,ATESAKI_FUKUSU_MAIL_ADDRESS  VARCHAR2(1000) --「宛先複数メールアドレス」
	,MAIL_KEMMEI  VARCHAR2(100) --「メール件名」
	,MAIL_HOMBUN  VARCHAR2(1000) --「メール本文」
	,MAIL_TMP_FILE_PASSWORD  VARCHAR2(128) --「メール添付ファイル暗号化パスワード」
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
	,CONSTRAINT ED0634M_PK PRIMARY KEY(
	 NSKKIS_JD_MAIL_SSS_SHBTS_KBN
	,  NSKKIS_JD_MAIL_SSS_NM_KBN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0634M_TBL IS '入出金機移設自動メールマスタ'
/

COMMENT ON COLUMN ED0634M_TBL.NSKKIS_JD_MAIL_SSS_SHBTS_KBN IS '入出金機移設自動メール送信先種別区分'
/
COMMENT ON COLUMN ED0634M_TBL.NSKKIS_JD_MAIL_SSS_NM_KBN IS '入出金機移設自動メール送信先名称区分'
/
COMMENT ON COLUMN ED0634M_TBL.ATESAKI_FUKUSU_MAIL_ADDRESS IS '宛先複数メールアドレス'
/
COMMENT ON COLUMN ED0634M_TBL.MAIL_KEMMEI IS 'メール件名'
/
COMMENT ON COLUMN ED0634M_TBL.MAIL_HOMBUN IS 'メール本文'
/
COMMENT ON COLUMN ED0634M_TBL.MAIL_TMP_FILE_PASSWORD IS 'メール添付ファイル暗号化パスワード'
/
COMMENT ON COLUMN ED0634M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0634M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0634M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0634M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0634M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0634M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0634M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0634M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0634M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0634M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0634M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0634M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
