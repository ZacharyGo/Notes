﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1017T_TBL.sql
-- 物理名：ED1017T_TBL
-- 論理名：セルフチェック明細テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1017T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1017T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KOJI_SHIGOTO_SN  CHAR(14) NOT NULL --「工事仕事連番」
	,KOJI_KOTEI_SN  CHAR(14) NOT NULL --「工事工程連番」
	,TAISHOSAKI_CD  CHAR(9) NOT NULL --「対象先コード」
	,SELF_CHECK_SHURUI_KBN  CHAR(1) NOT NULL --「セルフチェック種類区分」
	,SELF_CHECK_MEISAI_SN  CHAR(14) NOT NULL --「セルフチェック明細連番」
	,SELF_CHECK_KOMOKU_NAIYO  VARCHAR2(100) --「セルフチェック項目内容」
	,SELF_CHECK_KEKKAYOSHI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「セルフチェック結果良フラグ」
	,SHIDO_KAIZEN_JIKO  VARCHAR2(100) --「指導改善事項」
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
	,CONSTRAINT ED1017T_PK PRIMARY KEY(
	 KOJI_SHIGOTO_SN
	,  KOJI_KOTEI_SN
	,  TAISHOSAKI_CD
	,  SELF_CHECK_SHURUI_KBN
	,  SELF_CHECK_MEISAI_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1017T_TBL IS 'セルフチェック明細テーブル'
/

COMMENT ON COLUMN ED1017T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1017T_TBL.KOJI_SHIGOTO_SN IS '工事仕事連番'
/
COMMENT ON COLUMN ED1017T_TBL.KOJI_KOTEI_SN IS '工事工程連番'
/
COMMENT ON COLUMN ED1017T_TBL.TAISHOSAKI_CD IS '対象先コード'
/
COMMENT ON COLUMN ED1017T_TBL.SELF_CHECK_SHURUI_KBN IS 'セルフチェック種類区分'
/
COMMENT ON COLUMN ED1017T_TBL.SELF_CHECK_MEISAI_SN IS 'セルフチェック明細連番'
/
COMMENT ON COLUMN ED1017T_TBL.SELF_CHECK_KOMOKU_NAIYO IS 'セルフチェック項目内容'
/
COMMENT ON COLUMN ED1017T_TBL.SELF_CHECK_KEKKAYOSHI_FLG IS 'セルフチェック結果良フラグ'
/
COMMENT ON COLUMN ED1017T_TBL.SHIDO_KAIZEN_JIKO IS '指導改善事項'
/
COMMENT ON COLUMN ED1017T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED1017T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED1017T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1017T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1017T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1017T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1017T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1017T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1017T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1017T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1017T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1017T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1017T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1017T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/