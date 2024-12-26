﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0501T_TBL.sql
-- 物理名：ED0501T_TBL
-- 論理名：契約救急トレーニング料金テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0501T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0501T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KEIYAKU_ID  CHAR(18) NOT NULL --「契約ＩＤ」
	,KYUKYU_TRAINING_RYOKIN_SN  CHAR(14) NOT NULL --「救急トレーニング料金連番」
	,KYUKYU_TRAINING_COURSE_KBN  CHAR(1) NOT NULL --「救急トレーニングコース区分」
	,KYKY_TRINNG_HIYO_SHBTS_KBN  CHAR(1) NOT NULL --「救急トレーニング費用種別区分」
	,KYUKYU_TRAINING_KOMOKU_CD  CHAR(4) NOT NULL --「救急トレーニング項目コード」
	,KYKY_TRAINING_KYZI_PLAN_KBN  CHAR(1) NOT NULL --「救急トレーニング教材プラン区分」
	,KYUKYU_TRAINING_YOHIN_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「救急トレーニング用品数量」
	,KYUKYU_TRAINING_GENKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「救急トレーニング原価金額」
	,KYUKYU_TRAINING_HYOJUN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「救急トレーニング標準金額」
	,KYKY_TRINNG_TSIK_GNK_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「救急トレーニング追加原価金額」
	,KYKY_TRINNG_TSIK_HYJN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「救急トレーニング追加標準金額」
	,KYUKYU_TRAINING_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「救急トレーニング金額」
	,KYKY_TRAINING_GENKA_GOKEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「救急トレーニング原価合計金額」
	,HIMMEI_CD  CHAR(8) --「品名コード」
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
	,CONSTRAINT ED0501T_PK PRIMARY KEY(
	 KEIYAKU_ID
	,  KYUKYU_TRAINING_RYOKIN_SN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0501T_TBL IS '契約救急トレーニング料金テーブル'
/

COMMENT ON COLUMN ED0501T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0501T_TBL.KEIYAKU_ID IS '契約ＩＤ'
/
COMMENT ON COLUMN ED0501T_TBL.KYUKYU_TRAINING_RYOKIN_SN IS '救急トレーニング料金連番'
/
COMMENT ON COLUMN ED0501T_TBL.KYUKYU_TRAINING_COURSE_KBN IS '救急トレーニングコース区分'
/
COMMENT ON COLUMN ED0501T_TBL.KYKY_TRINNG_HIYO_SHBTS_KBN IS '救急トレーニング費用種別区分'
/
COMMENT ON COLUMN ED0501T_TBL.KYUKYU_TRAINING_KOMOKU_CD IS '救急トレーニング項目コード'
/
COMMENT ON COLUMN ED0501T_TBL.KYKY_TRAINING_KYZI_PLAN_KBN IS '救急トレーニング教材プラン区分'
/
COMMENT ON COLUMN ED0501T_TBL.KYUKYU_TRAINING_YOHIN_SURYO IS '救急トレーニング用品数量'
/
COMMENT ON COLUMN ED0501T_TBL.KYUKYU_TRAINING_GENKA_AMT IS '救急トレーニング原価金額'
/
COMMENT ON COLUMN ED0501T_TBL.KYUKYU_TRAINING_HYOJUN_AMT IS '救急トレーニング標準金額'
/
COMMENT ON COLUMN ED0501T_TBL.KYKY_TRINNG_TSIK_GNK_AMT IS '救急トレーニング追加原価金額'
/
COMMENT ON COLUMN ED0501T_TBL.KYKY_TRINNG_TSIK_HYJN_AMT IS '救急トレーニング追加標準金額'
/
COMMENT ON COLUMN ED0501T_TBL.KYUKYU_TRAINING_AMT IS '救急トレーニング金額'
/
COMMENT ON COLUMN ED0501T_TBL.KYKY_TRAINING_GENKA_GOKEI_AMT IS '救急トレーニング原価合計金額'
/
COMMENT ON COLUMN ED0501T_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED0501T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0501T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0501T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0501T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0501T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0501T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0501T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0501T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0501T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0501T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0501T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0501T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
