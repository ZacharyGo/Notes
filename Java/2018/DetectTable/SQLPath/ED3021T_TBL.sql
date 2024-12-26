﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3021T_TBL.sql
-- 物理名：ED3021T_TBL
-- 論理名：原図照合結果テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3021T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3021T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KI_NO  NUMBER(3,0) NOT NULL --「期番号」
	,JOI_JIGYOSHO_CD  CHAR(6) NOT NULL --「上位事業所コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,KEIYAKU_STATUS_KBN  CHAR(1) NOT NULL --「契約ステータス区分」
	,KIYKSK_TRHKSK_SISHK_NM  VARCHAR2(50) --「契約先取引先正式名称」
	,SEIGYO_SOCHI_HIMMEI_NM  VARCHAR2(60) --「制御装置品名名称」
	,TAISHOSAKI_NM  VARCHAR2(40) --「対象先名称」
	,TAISHOSAKI_JUSHO  VARCHAR2(60) --「対象先住所」
	,GENZU_KANRI_NO  CHAR(10) --「原図管理番号」
	,GENZU_RIREKI_NO  NUMBER(4,0) --「原図履歴番号」
	,GNZ_TRK_SIS_SNN_YMD  DATE --「原図登録最終承認年月日」
	,GENZU_KANRI_JOI_JIGYOSHO_CD  CHAR(6) --「原図管理上位事業所コード」
	,GENZU_KANRI_JOI_JIGYOSHO_NM  VARCHAR2(200) --「原図管理上位事業所名称」
	,GNZ_SISH_KSHNSH_SHAIN_NO  VARCHAR2(8) --「原図最終更新者社員番号」
	,GNZ_SISH_KSHNSH_SHAIN_NM  VARCHAR2(60) --「原図最終更新者社員氏名」
	,GENZU_SHOGO_YMD  DATE --「原図照合年月日」
	,GENZU_SHOGO_TANTOSHA_SHAIN_NO  VARCHAR2(8) --「原図照合担当者社員番号」
	,GENZU_SHOGO_TANTOSHA_SHAIN_NM  VARCHAR2(60) --「原図照合担当者社員氏名」
	,GENZU_SHG_KEKKA_GENZU_NM  VARCHAR2(60) --「原図照合結果原図名称」
	,GENZU_SHOGO_KEKKA_KBN  CHAR(1) NOT NULL --「原図照合結果区分」
	,GENZU_SHOGO_FUKA_FUGOKAKU_RIYU  VARCHAR2(300) --「原図照合不可不合格理由」
	,GENZU_PAGESU  NUMBER(9,0) DEFAULT '0' NOT NULL --「原図頁数」
	,GENZU_SHG_TISH_FLG  CHAR(1) DEFAULT '0' NOT NULL --「原図照合対象フラグ」
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
	,CONSTRAINT ED3021T_PK PRIMARY KEY(
	 KI_NO
	,  JOI_JIGYOSHO_CD
	,  JUCHU_KEIYAKU_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3021T_TBL IS '原図照合結果テーブル'
/

COMMENT ON COLUMN ED3021T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3021T_TBL.KI_NO IS '期番号'
/
COMMENT ON COLUMN ED3021T_TBL.JOI_JIGYOSHO_CD IS '上位事業所コード'
/
COMMENT ON COLUMN ED3021T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED3021T_TBL.KEIYAKU_STATUS_KBN IS '契約ステータス区分'
/
COMMENT ON COLUMN ED3021T_TBL.KIYKSK_TRHKSK_SISHK_NM IS '契約先取引先正式名称'
/
COMMENT ON COLUMN ED3021T_TBL.SEIGYO_SOCHI_HIMMEI_NM IS '制御装置品名名称'
/
COMMENT ON COLUMN ED3021T_TBL.TAISHOSAKI_NM IS '対象先名称'
/
COMMENT ON COLUMN ED3021T_TBL.TAISHOSAKI_JUSHO IS '対象先住所'
/
COMMENT ON COLUMN ED3021T_TBL.GENZU_KANRI_NO IS '原図管理番号'
/
COMMENT ON COLUMN ED3021T_TBL.GENZU_RIREKI_NO IS '原図履歴番号'
/
COMMENT ON COLUMN ED3021T_TBL.GNZ_TRK_SIS_SNN_YMD IS '原図登録最終承認年月日'
/
COMMENT ON COLUMN ED3021T_TBL.GENZU_KANRI_JOI_JIGYOSHO_CD IS '原図管理上位事業所コード'
/
COMMENT ON COLUMN ED3021T_TBL.GENZU_KANRI_JOI_JIGYOSHO_NM IS '原図管理上位事業所名称'
/
COMMENT ON COLUMN ED3021T_TBL.GNZ_SISH_KSHNSH_SHAIN_NO IS '原図最終更新者社員番号'
/
COMMENT ON COLUMN ED3021T_TBL.GNZ_SISH_KSHNSH_SHAIN_NM IS '原図最終更新者社員氏名'
/
COMMENT ON COLUMN ED3021T_TBL.GENZU_SHOGO_YMD IS '原図照合年月日'
/
COMMENT ON COLUMN ED3021T_TBL.GENZU_SHOGO_TANTOSHA_SHAIN_NO IS '原図照合担当者社員番号'
/
COMMENT ON COLUMN ED3021T_TBL.GENZU_SHOGO_TANTOSHA_SHAIN_NM IS '原図照合担当者社員氏名'
/
COMMENT ON COLUMN ED3021T_TBL.GENZU_SHG_KEKKA_GENZU_NM IS '原図照合結果原図名称'
/
COMMENT ON COLUMN ED3021T_TBL.GENZU_SHOGO_KEKKA_KBN IS '原図照合結果区分'
/
COMMENT ON COLUMN ED3021T_TBL.GENZU_SHOGO_FUKA_FUGOKAKU_RIYU IS '原図照合不可不合格理由'
/
COMMENT ON COLUMN ED3021T_TBL.GENZU_PAGESU IS '原図頁数'
/
COMMENT ON COLUMN ED3021T_TBL.GENZU_SHG_TISH_FLG IS '原図照合対象フラグ'
/
COMMENT ON COLUMN ED3021T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3021T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3021T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3021T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3021T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3021T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3021T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3021T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3021T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3021T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3021T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3021T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/