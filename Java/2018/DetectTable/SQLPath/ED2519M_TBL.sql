﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED2519M_TBL.sql
-- 物理名：ED2519M_TBL
-- 論理名：業務委託取引先実施可能エリアマスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED2519M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED2519M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,GYM_ITKSK_TRHKSK_CD  CHAR(9) NOT NULL --「業務委託先取引先コード」
	,GYM_ITKSK_TRHKSK_BSH_CD  CHAR(4) NOT NULL --「業務委託先取引先部署コード」
	,GYOMU_ITAKU_TORIHIKISAKI_SN  CHAR(14) NOT NULL --「業務委託取引先連番」
	,GYM_ITKSK_JSSH_KN_AREA_SN  CHAR(14) NOT NULL --「業務委託先実施可能エリア連番」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,TODOFUKEN_CD  CHAR(2) NOT NULL --「都道府県コード」
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
	,CONSTRAINT ED2519M_PK PRIMARY KEY(
	 GYM_ITKSK_TRHKSK_CD
	,  GYM_ITKSK_TRHKSK_BSH_CD
	,  GYOMU_ITAKU_TORIHIKISAKI_SN
	,  GYM_ITKSK_JSSH_KN_AREA_SN
	,  TEKIYO_KAISHI_YMD
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED2519M_TBL IS '業務委託取引先実施可能エリアマスタ'
/

COMMENT ON COLUMN ED2519M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED2519M_TBL.GYM_ITKSK_TRHKSK_CD IS '業務委託先取引先コード'
/
COMMENT ON COLUMN ED2519M_TBL.GYM_ITKSK_TRHKSK_BSH_CD IS '業務委託先取引先部署コード'
/
COMMENT ON COLUMN ED2519M_TBL.GYOMU_ITAKU_TORIHIKISAKI_SN IS '業務委託取引先連番'
/
COMMENT ON COLUMN ED2519M_TBL.GYM_ITKSK_JSSH_KN_AREA_SN IS '業務委託先実施可能エリア連番'
/
COMMENT ON COLUMN ED2519M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED2519M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED2519M_TBL.TODOFUKEN_CD IS '都道府県コード'
/
COMMENT ON COLUMN ED2519M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED2519M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED2519M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED2519M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED2519M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED2519M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED2519M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED2519M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED2519M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED2519M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED2519M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED2519M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
