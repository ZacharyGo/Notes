﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1038T_TBL.sql
-- 物理名：ED1038T_TBL
-- 論理名：工事ＷＥＢ掲示テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1038T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1038T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KOJI_WEB_KEIJI_SN  CHAR(14) NOT NULL --「工事ＷＥＢ掲示連番」
	,KEIJI_KAISHI_YMD  DATE --「掲示開始年月日」
	,KEIJI_SHURYO_YMD  DATE --「掲示終了年月日」
	,TOROKU_HANI_KBN  CHAR(1) NOT NULL --「登録範囲区分」
	,KOJI_BLOCK_CD  CHAR(3) --「工事ブロックコード」
	,KJ_KYRYK_KISH_TRHKSK_CD  CHAR(9) --「工事協力会社取引先コード」
	,KOJI_TORIHIKISAKI_BUSHO_CD  CHAR(4) --「工事取引先部署コード」
	,TITLE_NM  VARCHAR2(20) --「タイトル名称」
	,HOMBUN_NAIYO  VARCHAR2(300) --「本文内容」
	,KJ_WEB_KIJ_FILE_SHKBTS_KEY  VARCHAR2(255) --「工事ＷＥＢ掲示ファイル識別キー」
	,KOJI_WEB_KEIJI_FILE_NM  VARCHAR2(255) --「工事ＷＥＢ掲示ファイル名称」
	,KJ_WEB_KIJ_MESSAGE_SKSI_YMD  DATE --「工事ＷＥＢ掲示メッセージ作成年月日」
	,SHGI_TRKSH_SHGI_RYSH_NO  CHAR(8) --「社外登録者社外利用者番号」
	,SHGI_KSHNSH_SHGI_RYSH_NO  CHAR(8) --「社外更新者社外利用者番号」
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
	,CONSTRAINT ED1038T_PK PRIMARY KEY(
	 KOJI_WEB_KEIJI_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1038T_TBL IS '工事ＷＥＢ掲示テーブル'
/

COMMENT ON COLUMN ED1038T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1038T_TBL.KOJI_WEB_KEIJI_SN IS '工事ＷＥＢ掲示連番'
/
COMMENT ON COLUMN ED1038T_TBL.KEIJI_KAISHI_YMD IS '掲示開始年月日'
/
COMMENT ON COLUMN ED1038T_TBL.KEIJI_SHURYO_YMD IS '掲示終了年月日'
/
COMMENT ON COLUMN ED1038T_TBL.TOROKU_HANI_KBN IS '登録範囲区分'
/
COMMENT ON COLUMN ED1038T_TBL.KOJI_BLOCK_CD IS '工事ブロックコード'
/
COMMENT ON COLUMN ED1038T_TBL.KJ_KYRYK_KISH_TRHKSK_CD IS '工事協力会社取引先コード'
/
COMMENT ON COLUMN ED1038T_TBL.KOJI_TORIHIKISAKI_BUSHO_CD IS '工事取引先部署コード'
/
COMMENT ON COLUMN ED1038T_TBL.TITLE_NM IS 'タイトル名称'
/
COMMENT ON COLUMN ED1038T_TBL.HOMBUN_NAIYO IS '本文内容'
/
COMMENT ON COLUMN ED1038T_TBL.KJ_WEB_KIJ_FILE_SHKBTS_KEY IS '工事ＷＥＢ掲示ファイル識別キー'
/
COMMENT ON COLUMN ED1038T_TBL.KOJI_WEB_KEIJI_FILE_NM IS '工事ＷＥＢ掲示ファイル名称'
/
COMMENT ON COLUMN ED1038T_TBL.KJ_WEB_KIJ_MESSAGE_SKSI_YMD IS '工事ＷＥＢ掲示メッセージ作成年月日'
/
COMMENT ON COLUMN ED1038T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED1038T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED1038T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1038T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1038T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1038T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1038T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1038T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1038T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1038T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1038T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1038T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1038T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1038T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/