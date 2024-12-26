﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9105M_TBL.sql
-- 物理名：ED9105M_TBL
-- 論理名：共通アップロードファイルマスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9105M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9105M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,USER_KAKUNIN_TAISHO_JOB_ID  CHAR(15) NOT NULL --「ユーザ確認対象ジョブＩＤ」
	,KYOTSU_UPLOAD_FILE_SN  NUMBER(4,0) DEFAULT '0' NOT NULL --「共通アップロードファイル連番」
	,KYTS_UPLOAD_FILE_SHKBTS_KEY  VARCHAR2(255) --「共通アップロードファイル識別キー」
	,KYOTSU_UPLOAD_FILE_NM  VARCHAR2(255) --「共通アップロードファイル名称」
	,KYOTSU_UPLOAD_FILE_HYOJI_JUN  NUMBER(4,0) DEFAULT '0' NOT NULL --「共通アップロードファイル表示順」
	,KYOTSU_UPLOAD_HISSU_FLG  CHAR(1) DEFAULT '0' NOT NULL --「共通アップロード必須フラグ」
	,KT_UPLOADFILE_SKJH_FILE_SB_KEY  VARCHAR2(255) --「共通アップロードファイル設計情報ファイル識別キー」
	,FILE_MOJI_CD_KBN  CHAR(2) --「ファイル文字コード区分」
	,KYTS_UPLOAD_FILE_KKCHSH_KBN  CHAR(2) DEFAULT '0' NOT NULL --「共通アップロードファイル拡張子区分」
	,KT_UPLOAD_ERROR_J_SR_KIZK_FLG  CHAR(1) DEFAULT '0' NOT NULL --「共通アップロードエラー時処理継続フラグ」
	,CSV_HEDER_GYO_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「ＣＳＶヘッダ行件数」
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
	,CONSTRAINT ED9105M_PK PRIMARY KEY(
	 USER_KAKUNIN_TAISHO_JOB_ID
	,  KYOTSU_UPLOAD_FILE_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9105M_TBL IS '共通アップロードファイルマスタ'
/

COMMENT ON COLUMN ED9105M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED9105M_TBL.USER_KAKUNIN_TAISHO_JOB_ID IS 'ユーザ確認対象ジョブＩＤ'
/
COMMENT ON COLUMN ED9105M_TBL.KYOTSU_UPLOAD_FILE_SN IS '共通アップロードファイル連番'
/
COMMENT ON COLUMN ED9105M_TBL.KYTS_UPLOAD_FILE_SHKBTS_KEY IS '共通アップロードファイル識別キー'
/
COMMENT ON COLUMN ED9105M_TBL.KYOTSU_UPLOAD_FILE_NM IS '共通アップロードファイル名称'
/
COMMENT ON COLUMN ED9105M_TBL.KYOTSU_UPLOAD_FILE_HYOJI_JUN IS '共通アップロードファイル表示順'
/
COMMENT ON COLUMN ED9105M_TBL.KYOTSU_UPLOAD_HISSU_FLG IS '共通アップロード必須フラグ'
/
COMMENT ON COLUMN ED9105M_TBL.KT_UPLOADFILE_SKJH_FILE_SB_KEY IS '共通アップロードファイル設計情報ファイル識別キー'
/
COMMENT ON COLUMN ED9105M_TBL.FILE_MOJI_CD_KBN IS 'ファイル文字コード区分'
/
COMMENT ON COLUMN ED9105M_TBL.KYTS_UPLOAD_FILE_KKCHSH_KBN IS '共通アップロードファイル拡張子区分'
/
COMMENT ON COLUMN ED9105M_TBL.KT_UPLOAD_ERROR_J_SR_KIZK_FLG IS '共通アップロードエラー時処理継続フラグ'
/
COMMENT ON COLUMN ED9105M_TBL.CSV_HEDER_GYO_KENSU IS 'ＣＳＶヘッダ行件数'
/
COMMENT ON COLUMN ED9105M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9105M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9105M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9105M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9105M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9105M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9105M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9105M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9105M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9105M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9105M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9105M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/