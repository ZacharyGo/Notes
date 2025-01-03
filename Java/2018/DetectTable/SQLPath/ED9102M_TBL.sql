﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9102M_TBL.sql
-- 物理名：ED9102M_TBL
-- 論理名：全社ポータル掲示マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9102M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9102M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,ZENSHA_PORTAL_KEIJI_NO  NUMBER(10,0) DEFAULT '1' NOT NULL --「全社ポータル掲示番号」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,ZENSHA_PORTAL_KEIJI_AREA_KBN  CHAR(2) NOT NULL --「全社ポータル掲示エリア区分」
	,KEIJI_STATUS_KBN  CHAR(2) NOT NULL --「掲示ステータス区分」
	,KEIJI_TITLE_NM  VARCHAR2(100) NOT NULL --「掲示タイトル名称」
	,KEIJI_NAIYO  VARCHAR2(500) NOT NULL --「掲示内容」
	,KIJ_SHSHN_FILE_SHKBTS_KEY  VARCHAR2(255) --「掲示写真ファイル識別キー」
	,KEIJI_YMD  DATE --「掲示年月日」
	,KEIJI_NAIYO_TOROKU_KAISHA_CD  CHAR(5) --「掲示内容登録会社コード」
	,KEIJI_NAIYO_TOROKU_JIGYOSHO_CD  CHAR(6) --「掲示内容登録事業所コード」
	,KEIJI_NAIYO_TOROKU_SHAIN_NO  VARCHAR2(8) --「掲示内容登録社員番号」
	,KEIJI_NAIYO_KOSHIN_KAISHA_CD  CHAR(5) --「掲示内容更新会社コード」
	,KEIJI_NAIYO_KOSHIN_JIGYOSHO_CD  CHAR(6) --「掲示内容更新事業所コード」
	,KEIJI_NAIYO_KOSHIN_SHAIN_NO  VARCHAR2(8) --「掲示内容更新社員番号」
	,LOCAL_FILE_NM  VARCHAR2(255) --「ローカルファイル名称」
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
	,CONSTRAINT ED9102M_PK PRIMARY KEY(
	 ZENSHA_PORTAL_KEIJI_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9102M_TBL IS '全社ポータル掲示マスタ'
/

COMMENT ON COLUMN ED9102M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED9102M_TBL.ZENSHA_PORTAL_KEIJI_NO IS '全社ポータル掲示番号'
/
COMMENT ON COLUMN ED9102M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED9102M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED9102M_TBL.ZENSHA_PORTAL_KEIJI_AREA_KBN IS '全社ポータル掲示エリア区分'
/
COMMENT ON COLUMN ED9102M_TBL.KEIJI_STATUS_KBN IS '掲示ステータス区分'
/
COMMENT ON COLUMN ED9102M_TBL.KEIJI_TITLE_NM IS '掲示タイトル名称'
/
COMMENT ON COLUMN ED9102M_TBL.KEIJI_NAIYO IS '掲示内容'
/
COMMENT ON COLUMN ED9102M_TBL.KIJ_SHSHN_FILE_SHKBTS_KEY IS '掲示写真ファイル識別キー'
/
COMMENT ON COLUMN ED9102M_TBL.KEIJI_YMD IS '掲示年月日'
/
COMMENT ON COLUMN ED9102M_TBL.KEIJI_NAIYO_TOROKU_KAISHA_CD IS '掲示内容登録会社コード'
/
COMMENT ON COLUMN ED9102M_TBL.KEIJI_NAIYO_TOROKU_JIGYOSHO_CD IS '掲示内容登録事業所コード'
/
COMMENT ON COLUMN ED9102M_TBL.KEIJI_NAIYO_TOROKU_SHAIN_NO IS '掲示内容登録社員番号'
/
COMMENT ON COLUMN ED9102M_TBL.KEIJI_NAIYO_KOSHIN_KAISHA_CD IS '掲示内容更新会社コード'
/
COMMENT ON COLUMN ED9102M_TBL.KEIJI_NAIYO_KOSHIN_JIGYOSHO_CD IS '掲示内容更新事業所コード'
/
COMMENT ON COLUMN ED9102M_TBL.KEIJI_NAIYO_KOSHIN_SHAIN_NO IS '掲示内容更新社員番号'
/
COMMENT ON COLUMN ED9102M_TBL.LOCAL_FILE_NM IS 'ローカルファイル名称'
/
COMMENT ON COLUMN ED9102M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9102M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9102M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9102M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9102M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9102M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9102M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9102M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9102M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9102M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9102M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9102M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
