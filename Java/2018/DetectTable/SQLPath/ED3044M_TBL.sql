﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3044M_TBL.sql
-- 物理名：ED3044M_TBL
-- 論理名：点検内容マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3044M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3044M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JOI_JIGYOSHO_CD  CHAR(6) NOT NULL --「上位事業所コード」
	,TENKEN_NAIYO_CD  CHAR(3) NOT NULL --「点検内容コード」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,TENKEN_NAIYO_NM  VARCHAR2(24) --「点検内容名称」
	,HYOJI_JUN  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順」
	,TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「点検種類区分」
	,RINJI_HOZEN_SHUBETSU_KBN  CHAR(1) NOT NULL --「臨時保全種別区分」
	,KEIBIKEI_TENKEN_NAIYO_CD  CHAR(3) --「警備系点検内容コード」
	,SGY_HKKSH_JSSH_NAIYO_CD  CHAR(5) --「作業報告書実施内容コード」
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
	,CONSTRAINT ED3044M_PK PRIMARY KEY(
	 JOI_JIGYOSHO_CD
	,  TENKEN_NAIYO_CD
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3044M_TBL IS '点検内容マスタ'
/

COMMENT ON COLUMN ED3044M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3044M_TBL.JOI_JIGYOSHO_CD IS '上位事業所コード'
/
COMMENT ON COLUMN ED3044M_TBL.TENKEN_NAIYO_CD IS '点検内容コード'
/
COMMENT ON COLUMN ED3044M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED3044M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED3044M_TBL.TENKEN_NAIYO_NM IS '点検内容名称'
/
COMMENT ON COLUMN ED3044M_TBL.HYOJI_JUN IS '表示順'
/
COMMENT ON COLUMN ED3044M_TBL.TENKEN_SHURUI_KBN IS '点検種類区分'
/
COMMENT ON COLUMN ED3044M_TBL.RINJI_HOZEN_SHUBETSU_KBN IS '臨時保全種別区分'
/
COMMENT ON COLUMN ED3044M_TBL.KEIBIKEI_TENKEN_NAIYO_CD IS '警備系点検内容コード'
/
COMMENT ON COLUMN ED3044M_TBL.SGY_HKKSH_JSSH_NAIYO_CD IS '作業報告書実施内容コード'
/
COMMENT ON COLUMN ED3044M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3044M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3044M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3044M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3044M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3044M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3044M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3044M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3044M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3044M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3044M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3044M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
