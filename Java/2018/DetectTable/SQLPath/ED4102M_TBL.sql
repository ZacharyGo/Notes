﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4102M_TBL.sql
-- 物理名：ED4102M_TBL
-- 論理名：入出金機振込日指定マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4102M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4102M_TBL (
	 NYSHKKNK_FURIKOMI_D_SHITEI_CD  CHAR(3) NOT NULL --「入出金機振込日指定コード」
	,NYSHKKNK_FURIKOMI_D_SHITEI_NM  VARCHAR2(10) --「入出金機振込日指定名称」
	,HYOJI_JUN_1  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順１」
	,NYSHKKNK_FRKM_HND_KAISU  NUMBER(12,3) DEFAULT '0' NOT NULL --「入出金機振込頻度回数」
	,KIYK_NYUKIN_HINDO_KIKAN_NAIYO  VARCHAR2(20) --「契約入金頻度期間内容」
	,KIYK_NYUKIN_HINDO_JOGEN_KAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「契約入金頻度上限回数」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
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
	,CONSTRAINT ED4102M_PK PRIMARY KEY(
	 NYSHKKNK_FURIKOMI_D_SHITEI_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4102M_TBL IS '入出金機振込日指定マスタ'
/

COMMENT ON COLUMN ED4102M_TBL.NYSHKKNK_FURIKOMI_D_SHITEI_CD IS '入出金機振込日指定コード'
/
COMMENT ON COLUMN ED4102M_TBL.NYSHKKNK_FURIKOMI_D_SHITEI_NM IS '入出金機振込日指定名称'
/
COMMENT ON COLUMN ED4102M_TBL.HYOJI_JUN_1 IS '表示順１'
/
COMMENT ON COLUMN ED4102M_TBL.NYSHKKNK_FRKM_HND_KAISU IS '入出金機振込頻度回数'
/
COMMENT ON COLUMN ED4102M_TBL.KIYK_NYUKIN_HINDO_KIKAN_NAIYO IS '契約入金頻度期間内容'
/
COMMENT ON COLUMN ED4102M_TBL.KIYK_NYUKIN_HINDO_JOGEN_KAISU IS '契約入金頻度上限回数'
/
COMMENT ON COLUMN ED4102M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4102M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4102M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4102M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4102M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4102M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4102M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4102M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4102M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4102M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4102M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4102M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4102M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4102M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/