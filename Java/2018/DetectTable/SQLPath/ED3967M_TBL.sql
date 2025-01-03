﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3967M_TBL.sql
-- 物理名：ED3967M_TBL
-- 論理名：振替パターンマスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3967M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3967M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JISHA_KOZA_CD  CHAR(4) NOT NULL --「自社口座コード」
	,FURIKAE_PATTERN_ID  NUMBER(14,0) NOT NULL --「振替パターンＩＤ」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,FURIKAE_PATTERN_NM  VARCHAR2(30) NOT NULL --「振替パターン名称」
	,KANJO_KAMOKU_CD  VARCHAR2(12) NOT NULL --「勘定科目コード」
	,HOJO_KAMOKU_CD  VARCHAR2(12) --「補助科目コード」
	,SHIWAKE_KEIJO_JIGYOSHO_CD  CHAR(6) --「仕訳計上事業所コード」
	,JIGYO_SEGMENT_CD  CHAR(3) --「事業セグメントコード」
	,FURIKAE_TEKIYO  VARCHAR2(64) --「振替摘要」
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
	,CONSTRAINT ED3967M_PK PRIMARY KEY(
	 JISHA_KOZA_CD
	,  FURIKAE_PATTERN_ID
	,  KAISHA_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3967M_TBL IS '振替パターンマスタ'
/

COMMENT ON COLUMN ED3967M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3967M_TBL.JISHA_KOZA_CD IS '自社口座コード'
/
COMMENT ON COLUMN ED3967M_TBL.FURIKAE_PATTERN_ID IS '振替パターンＩＤ'
/
COMMENT ON COLUMN ED3967M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED3967M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED3967M_TBL.FURIKAE_PATTERN_NM IS '振替パターン名称'
/
COMMENT ON COLUMN ED3967M_TBL.KANJO_KAMOKU_CD IS '勘定科目コード'
/
COMMENT ON COLUMN ED3967M_TBL.HOJO_KAMOKU_CD IS '補助科目コード'
/
COMMENT ON COLUMN ED3967M_TBL.SHIWAKE_KEIJO_JIGYOSHO_CD IS '仕訳計上事業所コード'
/
COMMENT ON COLUMN ED3967M_TBL.JIGYO_SEGMENT_CD IS '事業セグメントコード'
/
COMMENT ON COLUMN ED3967M_TBL.FURIKAE_TEKIYO IS '振替摘要'
/
COMMENT ON COLUMN ED3967M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3967M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3967M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3967M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3967M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3967M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3967M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3967M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3967M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3967M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3967M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3967M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
