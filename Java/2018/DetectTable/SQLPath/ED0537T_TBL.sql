﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0537T_TBL.sql
-- 物理名：ED0537T_TBL
-- 論理名：改定テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0537T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0537T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) NOT NULL --「受注契約変更番号」
	,RYOKIN_KBN  CHAR(5) NOT NULL --「料金区分」
	,KYUKEIYAKU_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「旧契約料金金額」
	,SHINKEIYAKU_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「新契約料金金額」
	,KYUKEIYAKU_SHONIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「旧契約承認金額」
	,SHINKEIYAKU_SHONIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「新契約承認金額」
	,KYUKEIYAKU_HYOJUN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「旧契約標準金額」
	,SHINKEIYAKU_HYOJUN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「新契約標準金額」
	,KYUKEIYAKU_GENKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「旧契約原価金額」
	,SHINKEIYAKU_GENKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「新契約原価金額」
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
	,CONSTRAINT ED0537T_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  JUCHU_KEIYAKU_HENKO_NO
	,  KAISHA_CD
	,  RYOKIN_KBN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0537T_TBL IS '改定テーブル'
/

COMMENT ON COLUMN ED0537T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0537T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED0537T_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED0537T_TBL.RYOKIN_KBN IS '料金区分'
/
COMMENT ON COLUMN ED0537T_TBL.KYUKEIYAKU_RYOKIN_AMT IS '旧契約料金金額'
/
COMMENT ON COLUMN ED0537T_TBL.SHINKEIYAKU_RYOKIN_AMT IS '新契約料金金額'
/
COMMENT ON COLUMN ED0537T_TBL.KYUKEIYAKU_SHONIN_AMT IS '旧契約承認金額'
/
COMMENT ON COLUMN ED0537T_TBL.SHINKEIYAKU_SHONIN_AMT IS '新契約承認金額'
/
COMMENT ON COLUMN ED0537T_TBL.KYUKEIYAKU_HYOJUN_AMT IS '旧契約標準金額'
/
COMMENT ON COLUMN ED0537T_TBL.SHINKEIYAKU_HYOJUN_AMT IS '新契約標準金額'
/
COMMENT ON COLUMN ED0537T_TBL.KYUKEIYAKU_GENKA_AMT IS '旧契約原価金額'
/
COMMENT ON COLUMN ED0537T_TBL.SHINKEIYAKU_GENKA_AMT IS '新契約原価金額'
/
COMMENT ON COLUMN ED0537T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0537T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0537T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0537T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0537T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0537T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0537T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0537T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0537T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0537T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0537T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0537T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
