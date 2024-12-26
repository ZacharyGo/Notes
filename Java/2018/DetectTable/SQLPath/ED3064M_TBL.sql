﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3064M_TBL.sql
-- 物理名：ED3064M_TBL
-- 論理名：作業予定表担当者マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3064M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3064M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SAGYO_YOTEIHYO_SOSHIKI_ID  CHAR(14) NOT NULL --「作業予定表組織ＩＤ」
	,SAGYO_YOTEIHYO_TANTOSHA_ID  CHAR(14) NOT NULL --「作業予定表担当者ＩＤ」
	,TAI_KAKARI_KBN  CHAR(1) NOT NULL --「隊係区分」
	,SGY_YTIHY_TNTSH_HICHSK_CD  VARCHAR2(6) --「作業予定表担当者配置先コード」
	,SAGYO_YOTEIHYO_TANTOSHA_NM  VARCHAR2(60) --「作業予定表担当者氏名」
	,HYOJI_JUN  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順」
	,SGY_YTIHY_TNTSH_SHIN_NO  VARCHAR2(8) --「作業予定表担当者社員番号」
	,SG_YTIH_TNTS_BNSK_TISGI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「作業予定表担当者分析対象外フラグ」
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
	,CONSTRAINT ED3064M_PK PRIMARY KEY(
	 SAGYO_YOTEIHYO_SOSHIKI_ID
	,  SAGYO_YOTEIHYO_TANTOSHA_ID
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3064M_TBL IS '作業予定表担当者マスタ'
/

COMMENT ON COLUMN ED3064M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3064M_TBL.SAGYO_YOTEIHYO_SOSHIKI_ID IS '作業予定表組織ＩＤ'
/
COMMENT ON COLUMN ED3064M_TBL.SAGYO_YOTEIHYO_TANTOSHA_ID IS '作業予定表担当者ＩＤ'
/
COMMENT ON COLUMN ED3064M_TBL.TAI_KAKARI_KBN IS '隊係区分'
/
COMMENT ON COLUMN ED3064M_TBL.SGY_YTIHY_TNTSH_HICHSK_CD IS '作業予定表担当者配置先コード'
/
COMMENT ON COLUMN ED3064M_TBL.SAGYO_YOTEIHYO_TANTOSHA_NM IS '作業予定表担当者氏名'
/
COMMENT ON COLUMN ED3064M_TBL.HYOJI_JUN IS '表示順'
/
COMMENT ON COLUMN ED3064M_TBL.SGY_YTIHY_TNTSH_SHIN_NO IS '作業予定表担当者社員番号'
/
COMMENT ON COLUMN ED3064M_TBL.SG_YTIH_TNTS_BNSK_TISGI_FLG IS '作業予定表担当者分析対象外フラグ'
/
COMMENT ON COLUMN ED3064M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3064M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3064M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3064M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3064M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3064M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3064M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3064M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3064M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3064M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3064M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3064M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/