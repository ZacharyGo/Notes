﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0030T_TBL.sql
-- 物理名：ED0030T_TBL
-- 論理名：紹介案件受注テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0030T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0030T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SHOKAI_ANKEN_NO  CHAR(12) NOT NULL --「紹介案件番号」
	,SHOKAI_TESURYO_SN  CHAR(14) NOT NULL --「紹介手数料連番」
	,JUCHU_KEIYAKU_NO  CHAR(15) --「受注契約番号」
	,SONOTA_HIYO_SN  CHAR(14) --「その他費用連番」
	,SHIHARAI_SHINSEI_NO  CHAR(12) --「支払申請番号」
	,SHIHARAI_SHINSEI_MEISAI_SN  CHAR(14) --「支払申請明細連番」
	,SHOKAISHA_TESURYO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「紹介者手数料金額」
	,SHOKAISHA_TESURYO_NYUKIN_YMD  DATE --「紹介者手数料入金年月日」
	,SHIHARAI_KANRYOZUMI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「支払完了済フラグ」
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
	,CONSTRAINT ED0030T_PK PRIMARY KEY(
	 SHOKAI_ANKEN_NO
	,  SHOKAI_TESURYO_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0030T_TBL IS '紹介案件受注テーブル'
/

COMMENT ON COLUMN ED0030T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0030T_TBL.SHOKAI_ANKEN_NO IS '紹介案件番号'
/
COMMENT ON COLUMN ED0030T_TBL.SHOKAI_TESURYO_SN IS '紹介手数料連番'
/
COMMENT ON COLUMN ED0030T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED0030T_TBL.SONOTA_HIYO_SN IS 'その他費用連番'
/
COMMENT ON COLUMN ED0030T_TBL.SHIHARAI_SHINSEI_NO IS '支払申請番号'
/
COMMENT ON COLUMN ED0030T_TBL.SHIHARAI_SHINSEI_MEISAI_SN IS '支払申請明細連番'
/
COMMENT ON COLUMN ED0030T_TBL.SHOKAISHA_TESURYO_AMT IS '紹介者手数料金額'
/
COMMENT ON COLUMN ED0030T_TBL.SHOKAISHA_TESURYO_NYUKIN_YMD IS '紹介者手数料入金年月日'
/
COMMENT ON COLUMN ED0030T_TBL.SHIHARAI_KANRYOZUMI_FLG IS '支払完了済フラグ'
/
COMMENT ON COLUMN ED0030T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0030T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0030T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0030T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0030T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0030T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0030T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0030T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0030T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0030T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0030T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0030T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
