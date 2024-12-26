﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED8623W_TBL.sql
-- 物理名：ED8623W_TBL
-- 論理名：仕訳用運用コース契約テーブルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED8623W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED8623W_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,UNYO_COURSE_CD  CHAR(9) NOT NULL --「運用コースコード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,UNYO_COURSE_YUKO_YMD  DATE NOT NULL --「運用コース有効年月日」
	,TEKIYO_SHURYO_YMD  DATE --「適用終了年月日」
	,UNYO_COURSE_KEIYAKU_STATUS_KBN  CHAR(1) NOT NULL --「運用コース契約ステータス区分」
	,DENKEI_NO  CHAR(9) --「電計番号」
	,UNYO_COURSE_NO  CHAR(3) --「運用コース番号」
	,JIGYOSHO_CD  CHAR(6) --「事業所コード」
	,UNYO_COURSE_NM  VARCHAR2(40) --「運用コース名称」
	,CHUDAN_MARK_KBN  CHAR(1) NOT NULL --「中断マーク区分」
	,GUARD_CENTER_NO  CHAR(4) --「ＧＣ番号」
	,SGS_RONRI_NO  CHAR(10) --「ＳＧＳ論理番号」
	,UNYO_COURSE_KOSHIN_KBN  CHAR(1) --「運用コース更新区分」
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
	,CONSTRAINT ED8623W_PK PRIMARY KEY(
	 UNYO_COURSE_CD
	,  JUCHU_KEIYAKU_NO
	,  UNYO_COURSE_YUKO_YMD
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED8623W_TBL IS '仕訳用運用コース契約テーブルワーク'
/

COMMENT ON COLUMN ED8623W_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED8623W_TBL.UNYO_COURSE_CD IS '運用コースコード'
/
COMMENT ON COLUMN ED8623W_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED8623W_TBL.UNYO_COURSE_YUKO_YMD IS '運用コース有効年月日'
/
COMMENT ON COLUMN ED8623W_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED8623W_TBL.UNYO_COURSE_KEIYAKU_STATUS_KBN IS '運用コース契約ステータス区分'
/
COMMENT ON COLUMN ED8623W_TBL.DENKEI_NO IS '電計番号'
/
COMMENT ON COLUMN ED8623W_TBL.UNYO_COURSE_NO IS '運用コース番号'
/
COMMENT ON COLUMN ED8623W_TBL.JIGYOSHO_CD IS '事業所コード'
/
COMMENT ON COLUMN ED8623W_TBL.UNYO_COURSE_NM IS '運用コース名称'
/
COMMENT ON COLUMN ED8623W_TBL.CHUDAN_MARK_KBN IS '中断マーク区分'
/
COMMENT ON COLUMN ED8623W_TBL.GUARD_CENTER_NO IS 'ＧＣ番号'
/
COMMENT ON COLUMN ED8623W_TBL.SGS_RONRI_NO IS 'ＳＧＳ論理番号'
/
COMMENT ON COLUMN ED8623W_TBL.UNYO_COURSE_KOSHIN_KBN IS '運用コース更新区分'
/
COMMENT ON COLUMN ED8623W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED8623W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED8623W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED8623W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED8623W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED8623W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED8623W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED8623W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED8623W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED8623W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED8623W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED8623W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
