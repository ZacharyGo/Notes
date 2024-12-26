﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4129M_TBL.sql
-- 物理名：ED4129M_TBL
-- 論理名：積算アップロードファイルマスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4129M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4129M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,USER_KAKUNIN_TAISHO_JOB_ID  CHAR(15) NOT NULL --「ユーザ確認対象ジョブＩＤ」
	,SEKISAN_UPLOAD_FILE_SN  CHAR(14) NOT NULL --「積算アップロードファイル連番」
	,SKSN_UPLOAD_FILE_SHKBTS_KEY  VARCHAR2(255) --「積算アップロードファイル識別キー」
	,SKSN_UPLOAD_FILE_NM  VARCHAR2(255) --「積算アップロードファイル名称」
	,SKSN_UPLOAD_FILE_HYOJI_JUN  NUMBER(4,0) DEFAULT '0' NOT NULL --「積算アップロードファイル表示順」
	,UPLOAD_JIGYOSHO_CD_1  CHAR(6) NOT NULL --「アップロード事業所コード１」
	,UPLOAD_JIGYOSHO_CD_2  CHAR(6) --「アップロード事業所コード２」
	,UPLOAD_JIGYOSHO_CD_3  CHAR(6) --「アップロード事業所コード３」
	,UPLOAD_JIGYOSHO_CD_4  CHAR(6) --「アップロード事業所コード４」
	,UPLOAD_JIGYOSHO_CD_5  CHAR(6) --「アップロード事業所コード５」
	,UPLOAD_JIGYOSHO_CD_6  CHAR(6) --「アップロード事業所コード６」
	,UPLOAD_JIGYOSHO_CD_7  CHAR(6) --「アップロード事業所コード７」
	,UPLOAD_JIGYOSHO_CD_8  CHAR(6) --「アップロード事業所コード８」
	,UPLOAD_JIGYOSHO_CD_9  CHAR(6) --「アップロード事業所コード９」
	,UPLOAD_JIGYOSHO_CD_10  CHAR(6) --「アップロード事業所コード１０」
	,DOWNLOAD_JIGYOSHO_CD_1  CHAR(6) NOT NULL --「ダウンロード事業所コード１」
	,DOWNLOAD_JIGYOSHO_CD_2  CHAR(6) --「ダウンロード事業所コード２」
	,DOWNLOAD_JIGYOSHO_CD_3  CHAR(6) --「ダウンロード事業所コード３」
	,DOWNLOAD_JIGYOSHO_CD_4  CHAR(6) --「ダウンロード事業所コード４」
	,DOWNLOAD_JIGYOSHO_CD_5  CHAR(6) --「ダウンロード事業所コード５」
	,DOWNLOAD_JIGYOSHO_CD_6  CHAR(6) --「ダウンロード事業所コード６」
	,DOWNLOAD_JIGYOSHO_CD_7  CHAR(6) --「ダウンロード事業所コード７」
	,DOWNLOAD_JIGYOSHO_CD_8  CHAR(6) --「ダウンロード事業所コード８」
	,DOWNLOAD_JIGYOSHO_CD_9  CHAR(6) --「ダウンロード事業所コード９」
	,DOWNLOAD_JIGYOSHO_CD_10  CHAR(6) --「ダウンロード事業所コード１０」
	,SKSN_UPLOAD_HISSU_FLG  CHAR(1) DEFAULT '0' NOT NULL --「積算アップロード必須フラグ」
	,SS_UPLOADFILE_SKJH_FILE_SB_KEY  VARCHAR2(255) --「積算アップロードファイル設計情報ファイル識別キー」
	,FILE_MOJI_CD_KBN  CHAR(2) NOT NULL --「ファイル文字コード区分」
	,SS_UPLOAD_ERROR_J_SR_KIZK_FLG  CHAR(1) DEFAULT '0' NOT NULL --「積算アップロードエラー時処理継続フラグ」
	,UPLOAD_TABLE_ID  CHAR(11) --「アップロードテーブルＩＤ」
	,CSV_FILE_WORK_TABLE_ID  CHAR(11) --「ＣＳＶファイルワークテーブルＩＤ」
	,GYOUMU_CHECK_PGM_ID  VARCHAR2(255) --「業務チェックプログラムＩＤ」
	,CSV_EXPORT_PGM_ID  VARCHAR2(255) --「ＣＳＶ出力プログラムＩＤ」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
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
	,CONSTRAINT ED4129M_PK PRIMARY KEY(
	 USER_KAKUNIN_TAISHO_JOB_ID
	,  SEKISAN_UPLOAD_FILE_SN
	,  KAISHA_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4129M_TBL IS '積算アップロードファイルマスタ'
/

COMMENT ON COLUMN ED4129M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED4129M_TBL.USER_KAKUNIN_TAISHO_JOB_ID IS 'ユーザ確認対象ジョブＩＤ'
/
COMMENT ON COLUMN ED4129M_TBL.SEKISAN_UPLOAD_FILE_SN IS '積算アップロードファイル連番'
/
COMMENT ON COLUMN ED4129M_TBL.SKSN_UPLOAD_FILE_SHKBTS_KEY IS '積算アップロードファイル識別キー'
/
COMMENT ON COLUMN ED4129M_TBL.SKSN_UPLOAD_FILE_NM IS '積算アップロードファイル名称'
/
COMMENT ON COLUMN ED4129M_TBL.SKSN_UPLOAD_FILE_HYOJI_JUN IS '積算アップロードファイル表示順'
/
COMMENT ON COLUMN ED4129M_TBL.UPLOAD_JIGYOSHO_CD_1 IS 'アップロード事業所コード１'
/
COMMENT ON COLUMN ED4129M_TBL.UPLOAD_JIGYOSHO_CD_2 IS 'アップロード事業所コード２'
/
COMMENT ON COLUMN ED4129M_TBL.UPLOAD_JIGYOSHO_CD_3 IS 'アップロード事業所コード３'
/
COMMENT ON COLUMN ED4129M_TBL.UPLOAD_JIGYOSHO_CD_4 IS 'アップロード事業所コード４'
/
COMMENT ON COLUMN ED4129M_TBL.UPLOAD_JIGYOSHO_CD_5 IS 'アップロード事業所コード５'
/
COMMENT ON COLUMN ED4129M_TBL.UPLOAD_JIGYOSHO_CD_6 IS 'アップロード事業所コード６'
/
COMMENT ON COLUMN ED4129M_TBL.UPLOAD_JIGYOSHO_CD_7 IS 'アップロード事業所コード７'
/
COMMENT ON COLUMN ED4129M_TBL.UPLOAD_JIGYOSHO_CD_8 IS 'アップロード事業所コード８'
/
COMMENT ON COLUMN ED4129M_TBL.UPLOAD_JIGYOSHO_CD_9 IS 'アップロード事業所コード９'
/
COMMENT ON COLUMN ED4129M_TBL.UPLOAD_JIGYOSHO_CD_10 IS 'アップロード事業所コード１０'
/
COMMENT ON COLUMN ED4129M_TBL.DOWNLOAD_JIGYOSHO_CD_1 IS 'ダウンロード事業所コード１'
/
COMMENT ON COLUMN ED4129M_TBL.DOWNLOAD_JIGYOSHO_CD_2 IS 'ダウンロード事業所コード２'
/
COMMENT ON COLUMN ED4129M_TBL.DOWNLOAD_JIGYOSHO_CD_3 IS 'ダウンロード事業所コード３'
/
COMMENT ON COLUMN ED4129M_TBL.DOWNLOAD_JIGYOSHO_CD_4 IS 'ダウンロード事業所コード４'
/
COMMENT ON COLUMN ED4129M_TBL.DOWNLOAD_JIGYOSHO_CD_5 IS 'ダウンロード事業所コード５'
/
COMMENT ON COLUMN ED4129M_TBL.DOWNLOAD_JIGYOSHO_CD_6 IS 'ダウンロード事業所コード６'
/
COMMENT ON COLUMN ED4129M_TBL.DOWNLOAD_JIGYOSHO_CD_7 IS 'ダウンロード事業所コード７'
/
COMMENT ON COLUMN ED4129M_TBL.DOWNLOAD_JIGYOSHO_CD_8 IS 'ダウンロード事業所コード８'
/
COMMENT ON COLUMN ED4129M_TBL.DOWNLOAD_JIGYOSHO_CD_9 IS 'ダウンロード事業所コード９'
/
COMMENT ON COLUMN ED4129M_TBL.DOWNLOAD_JIGYOSHO_CD_10 IS 'ダウンロード事業所コード１０'
/
COMMENT ON COLUMN ED4129M_TBL.SKSN_UPLOAD_HISSU_FLG IS '積算アップロード必須フラグ'
/
COMMENT ON COLUMN ED4129M_TBL.SS_UPLOADFILE_SKJH_FILE_SB_KEY IS '積算アップロードファイル設計情報ファイル識別キー'
/
COMMENT ON COLUMN ED4129M_TBL.FILE_MOJI_CD_KBN IS 'ファイル文字コード区分'
/
COMMENT ON COLUMN ED4129M_TBL.SS_UPLOAD_ERROR_J_SR_KIZK_FLG IS '積算アップロードエラー時処理継続フラグ'
/
COMMENT ON COLUMN ED4129M_TBL.UPLOAD_TABLE_ID IS 'アップロードテーブルＩＤ'
/
COMMENT ON COLUMN ED4129M_TBL.CSV_FILE_WORK_TABLE_ID IS 'ＣＳＶファイルワークテーブルＩＤ'
/
COMMENT ON COLUMN ED4129M_TBL.GYOUMU_CHECK_PGM_ID IS '業務チェックプログラムＩＤ'
/
COMMENT ON COLUMN ED4129M_TBL.CSV_EXPORT_PGM_ID IS 'ＣＳＶ出力プログラムＩＤ'
/
COMMENT ON COLUMN ED4129M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4129M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4129M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4129M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4129M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4129M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4129M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4129M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4129M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4129M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4129M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4129M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4129M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4129M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/