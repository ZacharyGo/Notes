﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0686W_TBL.sql
-- 物理名：ED0686W_TBL
-- 論理名：ＧＣ契約再開ファイル出力ワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0686W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0686W_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) NOT NULL --「受注契約変更番号」
	,KEIYAKU_KBN  CHAR(1) NOT NULL --「契約区分」
	,TAISHOSAKI_NM  VARCHAR2(40) --「対象先名称」
	,JISSHI_JIGYOSHO_CD  CHAR(6) --「実施事業所コード」
	,KEIYAKU_CHUDAN_YMD  DATE --「契約中断年月日」
	,SAIKAI_YOTEI_YMD  DATE --「再開予定年月日」
	,DENKEI_NO  CHAR(9) --「電計番号」
	,GC_NC_KBN  CHAR(1) NOT NULL --「ＧＣＮＣ区分」
	,SHOHIN_SERVICE_CD  CHAR(3) --「商品サービスコード」
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
	,CONSTRAINT ED0686W_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  JUCHU_KEIYAKU_HENKO_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0686W_TBL IS 'ＧＣ契約再開ファイル出力ワーク'
/

COMMENT ON COLUMN ED0686W_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0686W_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED0686W_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED0686W_TBL.KEIYAKU_KBN IS '契約区分'
/
COMMENT ON COLUMN ED0686W_TBL.TAISHOSAKI_NM IS '対象先名称'
/
COMMENT ON COLUMN ED0686W_TBL.JISSHI_JIGYOSHO_CD IS '実施事業所コード'
/
COMMENT ON COLUMN ED0686W_TBL.KEIYAKU_CHUDAN_YMD IS '契約中断年月日'
/
COMMENT ON COLUMN ED0686W_TBL.SAIKAI_YOTEI_YMD IS '再開予定年月日'
/
COMMENT ON COLUMN ED0686W_TBL.DENKEI_NO IS '電計番号'
/
COMMENT ON COLUMN ED0686W_TBL.GC_NC_KBN IS 'ＧＣＮＣ区分'
/
COMMENT ON COLUMN ED0686W_TBL.SHOHIN_SERVICE_CD IS '商品サービスコード'
/
COMMENT ON COLUMN ED0686W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0686W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0686W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0686W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0686W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0686W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0686W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0686W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0686W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0686W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0686W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0686W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
