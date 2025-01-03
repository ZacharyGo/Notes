﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9058M_TBL.sql
-- 物理名：ED9058M_TBL
-- 論理名：申請承認マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9058M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9058M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SHINSEI_SHONIN_ID  CHAR(6) NOT NULL --「申請承認ＩＤ」
	,SHINSEI_SHONIN_NM  VARCHAR2(20) --「申請承認名称」
	,GYOMU_KBN_CD  CHAR(3) --「業務区分コード」
	,GYOMU_KINO_CD  CHAR(4) --「業務機能コード」
	,IKKATSU_SHONIN_FUKA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「一括承認不可フラグ」
	,SHINSEI_SHONIN_BUNRUI_KBN  CHAR(1) NOT NULL --「申請承認分類区分」
	,SHINSEI_NAIYO  VARCHAR2(200) --「申請内容」
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
	,CONSTRAINT ED9058M_PK PRIMARY KEY(
	 SHINSEI_SHONIN_ID
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9058M_TBL IS '申請承認マスタ'
/

COMMENT ON COLUMN ED9058M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED9058M_TBL.SHINSEI_SHONIN_ID IS '申請承認ＩＤ'
/
COMMENT ON COLUMN ED9058M_TBL.SHINSEI_SHONIN_NM IS '申請承認名称'
/
COMMENT ON COLUMN ED9058M_TBL.GYOMU_KBN_CD IS '業務区分コード'
/
COMMENT ON COLUMN ED9058M_TBL.GYOMU_KINO_CD IS '業務機能コード'
/
COMMENT ON COLUMN ED9058M_TBL.IKKATSU_SHONIN_FUKA_FLG IS '一括承認不可フラグ'
/
COMMENT ON COLUMN ED9058M_TBL.SHINSEI_SHONIN_BUNRUI_KBN IS '申請承認分類区分'
/
COMMENT ON COLUMN ED9058M_TBL.SHINSEI_NAIYO IS '申請内容'
/
COMMENT ON COLUMN ED9058M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9058M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9058M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9058M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9058M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9058M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9058M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9058M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9058M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9058M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9058M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9058M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
