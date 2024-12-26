﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1078T_TBL.sql
-- 物理名：ED1078T_TBL
-- 論理名：ＳＳ部工事希望空き集計テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1078T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1078T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JIGYOSHO_CD  CHAR(6) NOT NULL --「事業所コード」
	,KIBO_TOROKU_AKIWAKU_YMD  DATE NOT NULL --「希望登録空き枠年月日」
	,KB_TRK_AKWK_JKNTI_KBN  CHAR(1) NOT NULL --「希望登録空き枠時間帯区分」
	,KIBO_AKI_WAKUSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「希望空き枠数」
	,ARIGEME_ALSOK_KNRYKNSKN_WAKUSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「洗替前ＡＬＳＯＫ完了検査可能枠数」
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
	,CONSTRAINT ED1078T_PK PRIMARY KEY(
	 JIGYOSHO_CD
	,  KIBO_TOROKU_AKIWAKU_YMD
	,  KB_TRK_AKWK_JKNTI_KBN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1078T_TBL IS 'ＳＳ部工事希望空き集計テーブル'
/

COMMENT ON COLUMN ED1078T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1078T_TBL.JIGYOSHO_CD IS '事業所コード'
/
COMMENT ON COLUMN ED1078T_TBL.KIBO_TOROKU_AKIWAKU_YMD IS '希望登録空き枠年月日'
/
COMMENT ON COLUMN ED1078T_TBL.KB_TRK_AKWK_JKNTI_KBN IS '希望登録空き枠時間帯区分'
/
COMMENT ON COLUMN ED1078T_TBL.KIBO_AKI_WAKUSU IS '希望空き枠数'
/
COMMENT ON COLUMN ED1078T_TBL.ARIGEME_ALSOK_KNRYKNSKN_WAKUSU IS '洗替前ＡＬＳＯＫ完了検査可能枠数'
/
COMMENT ON COLUMN ED1078T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED1078T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED1078T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1078T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1078T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1078T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1078T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1078T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1078T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1078T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1078T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1078T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1078T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1078T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/