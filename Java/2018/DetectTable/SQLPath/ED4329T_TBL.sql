﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4329T_TBL.sql
-- 物理名：ED4329T_TBL
-- 論理名：詳細積算材料拾い出し作業機器テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4329T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4329T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SHOSAI_SEKISAN_NO  CHAR(17) NOT NULL --「詳細積算番号」
	,SEKISAN_KIKI_ZAIRYO_KBN  CHAR(1) NOT NULL --「積算機器材料区分」
	,SHOSAI_SEKISAN_KIKI_ZAIRYO_SN  CHAR(14) NOT NULL --「詳細積算機器材料連番」
	,KIKI_TANI_ICHIRAN_MEISAI_SN  CHAR(14) NOT NULL --「機器単位一覧明細連番」
	,KIKI_TANI_NM  VARCHAR2(30) --「機器単位名称」
	,TSUJO_SAGYO_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「通常作業数量」
	,KOSHO_SAGYO_1_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「高所作業１数量」
	,KOSHO_SAGYO_2_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「高所作業２数量」
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
	,CONSTRAINT ED4329T_PK PRIMARY KEY(
	 SHOSAI_SEKISAN_NO
	,  SEKISAN_KIKI_ZAIRYO_KBN
	,  SHOSAI_SEKISAN_KIKI_ZAIRYO_SN
	,  KIKI_TANI_ICHIRAN_MEISAI_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4329T_TBL IS '詳細積算材料拾い出し作業機器テーブル'
/

COMMENT ON COLUMN ED4329T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED4329T_TBL.SHOSAI_SEKISAN_NO IS '詳細積算番号'
/
COMMENT ON COLUMN ED4329T_TBL.SEKISAN_KIKI_ZAIRYO_KBN IS '積算機器材料区分'
/
COMMENT ON COLUMN ED4329T_TBL.SHOSAI_SEKISAN_KIKI_ZAIRYO_SN IS '詳細積算機器材料連番'
/
COMMENT ON COLUMN ED4329T_TBL.KIKI_TANI_ICHIRAN_MEISAI_SN IS '機器単位一覧明細連番'
/
COMMENT ON COLUMN ED4329T_TBL.KIKI_TANI_NM IS '機器単位名称'
/
COMMENT ON COLUMN ED4329T_TBL.TSUJO_SAGYO_SURYO IS '通常作業数量'
/
COMMENT ON COLUMN ED4329T_TBL.KOSHO_SAGYO_1_SURYO IS '高所作業１数量'
/
COMMENT ON COLUMN ED4329T_TBL.KOSHO_SAGYO_2_SURYO IS '高所作業２数量'
/
COMMENT ON COLUMN ED4329T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4329T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4329T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4329T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4329T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4329T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4329T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4329T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4329T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4329T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4329T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4329T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
