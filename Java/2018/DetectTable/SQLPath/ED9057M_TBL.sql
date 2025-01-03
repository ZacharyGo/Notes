﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9057M_TBL.sql
-- 物理名：ED9057M_TBL
-- 論理名：申請承認ルートマスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9057M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9057M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SHINSEI_SHONIN_ID  CHAR(6) NOT NULL --「申請承認ＩＤ」
	,JOI_JIGYOSHO_CD  CHAR(6) NOT NULL --「上位事業所コード」
	,SHINSEI_SHONIN_ROUTE_SN  NUMBER(3,0) DEFAULT '0' NOT NULL --「申請承認ルート連番」
	,SHNSI_SHNN_ROUTE_MEMO_NAIYO  VARCHAR2(100) --「申請承認ルートメモ内容」
	,SHNSI_SHNN_ROUTE_SISH_KSHN_DT  TIMESTAMP NOT NULL --「申請承認ルート最終更新日時」
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
	,CONSTRAINT ED9057M_PK PRIMARY KEY(
	 SHINSEI_SHONIN_ID
	,  JOI_JIGYOSHO_CD
	,  SHINSEI_SHONIN_ROUTE_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9057M_TBL IS '申請承認ルートマスタ'
/

COMMENT ON COLUMN ED9057M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED9057M_TBL.SHINSEI_SHONIN_ID IS '申請承認ＩＤ'
/
COMMENT ON COLUMN ED9057M_TBL.JOI_JIGYOSHO_CD IS '上位事業所コード'
/
COMMENT ON COLUMN ED9057M_TBL.SHINSEI_SHONIN_ROUTE_SN IS '申請承認ルート連番'
/
COMMENT ON COLUMN ED9057M_TBL.SHNSI_SHNN_ROUTE_MEMO_NAIYO IS '申請承認ルートメモ内容'
/
COMMENT ON COLUMN ED9057M_TBL.SHNSI_SHNN_ROUTE_SISH_KSHN_DT IS '申請承認ルート最終更新日時'
/
COMMENT ON COLUMN ED9057M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9057M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9057M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9057M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9057M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9057M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9057M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9057M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9057M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9057M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9057M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9057M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
