﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1526T_TBL.sql
-- 物理名：ED1526T_TBL
-- 論理名：仕入実績テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1526T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1526T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,EIGYO_KANRI_YM  CHAR(6) NOT NULL --「営業管理年月」
	,SHIIRESAKI_TORIHIKISAKI_CD  CHAR(9) NOT NULL --「仕入先取引先コード」
	,TORIHIKISAKI_SHIHARAI_JOHO_CD  CHAR(4) NOT NULL --「取引先支払情報コード」
	,KEIHO_KIKI_CHOZOHIN_SHIIRE_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「警報機器貯蔵品仕入金額」
	,SOBI_SOGU_CHOZOHIN_SHIIRE_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「装備装具貯蔵品仕入金額」
	,CHOZOHIN_SHIIRE_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「貯蔵品仕入金額」
	,TSKKE_NSH_HY_ITKRY_SHIR_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「付替なし費用委託料仕入金額」
	,TSKKE_NSH_HY_UNSH_SHIR_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「付替なし費用運送費仕入金額」
	,TSKKE_NSH_HY_SNT_SHIR_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「付替なし費用その他仕入金額」
	,SHIIRE_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「仕入金額」
	,ZNGTS_KIKKKN_MDSH_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「前月買掛金戻し金額」
	,ZNGTS_KIKKKN_SHHZI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「前月買掛金消費税金額」
	,ZNGTS_KIKKKN_MDSH_ZIKM_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「前月買掛金戻し税込金額」
	,TOGETSU_KAIKAKEKIN_KEIJO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「当月買掛金計上金額」
	,TGTS_KIKKKN_SHHZI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「当月買掛金消費税金額」
	,TGTS_KIKKKN_KIJ_ZIKM_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「当月買掛金計上税込金額」
	,ZNGTS_MHRIKN_MDSH_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「前月未払金戻し金額」
	,ZNGTS_MHRIKN_SHHZI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「前月未払金消費税金額」
	,ZNGTS_MHRIKN_MDSH_ZIKM_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「前月未払金戻し税込金額」
	,TOGETSU_MIHARAIKIN_KEIJO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「当月未払金計上金額」
	,TGTS_MHRIKN_SHHZI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「当月未払金消費税金額」
	,TGTS_MHRIKN_KIJ_ZIKM_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「当月未払金計上税込金額」
	,SEIKYU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「請求金額」
	,SHIHARAI_KEIJO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「支払計上金額」
	,SHIHARAI_SHOHIZEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「支払消費税金額」
	,ZEIKOMI_SHIHARAI_KEIJO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「税込支払計上金額」
	,SHGI_TRKSH_SHGI_RYSH_NO  CHAR(8) --「社外登録者社外利用者番号」
	,SHGI_KSHNSH_SHGI_RYSH_NO  CHAR(8) --「社外更新者社外利用者番号」
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
	,CONSTRAINT ED1526T_PK PRIMARY KEY(
	 EIGYO_KANRI_YM
	,  SHIIRESAKI_TORIHIKISAKI_CD
	,  TORIHIKISAKI_SHIHARAI_JOHO_CD
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1526T_TBL IS '仕入実績テーブル'
/

COMMENT ON COLUMN ED1526T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1526T_TBL.EIGYO_KANRI_YM IS '営業管理年月'
/
COMMENT ON COLUMN ED1526T_TBL.SHIIRESAKI_TORIHIKISAKI_CD IS '仕入先取引先コード'
/
COMMENT ON COLUMN ED1526T_TBL.TORIHIKISAKI_SHIHARAI_JOHO_CD IS '取引先支払情報コード'
/
COMMENT ON COLUMN ED1526T_TBL.KEIHO_KIKI_CHOZOHIN_SHIIRE_AMT IS '警報機器貯蔵品仕入金額'
/
COMMENT ON COLUMN ED1526T_TBL.SOBI_SOGU_CHOZOHIN_SHIIRE_AMT IS '装備装具貯蔵品仕入金額'
/
COMMENT ON COLUMN ED1526T_TBL.CHOZOHIN_SHIIRE_AMT IS '貯蔵品仕入金額'
/
COMMENT ON COLUMN ED1526T_TBL.TSKKE_NSH_HY_ITKRY_SHIR_AMT IS '付替なし費用委託料仕入金額'
/
COMMENT ON COLUMN ED1526T_TBL.TSKKE_NSH_HY_UNSH_SHIR_AMT IS '付替なし費用運送費仕入金額'
/
COMMENT ON COLUMN ED1526T_TBL.TSKKE_NSH_HY_SNT_SHIR_AMT IS '付替なし費用その他仕入金額'
/
COMMENT ON COLUMN ED1526T_TBL.SHIIRE_AMT IS '仕入金額'
/
COMMENT ON COLUMN ED1526T_TBL.ZNGTS_KIKKKN_MDSH_AMT IS '前月買掛金戻し金額'
/
COMMENT ON COLUMN ED1526T_TBL.ZNGTS_KIKKKN_SHHZI_AMT IS '前月買掛金消費税金額'
/
COMMENT ON COLUMN ED1526T_TBL.ZNGTS_KIKKKN_MDSH_ZIKM_AMT IS '前月買掛金戻し税込金額'
/
COMMENT ON COLUMN ED1526T_TBL.TOGETSU_KAIKAKEKIN_KEIJO_AMT IS '当月買掛金計上金額'
/
COMMENT ON COLUMN ED1526T_TBL.TGTS_KIKKKN_SHHZI_AMT IS '当月買掛金消費税金額'
/
COMMENT ON COLUMN ED1526T_TBL.TGTS_KIKKKN_KIJ_ZIKM_AMT IS '当月買掛金計上税込金額'
/
COMMENT ON COLUMN ED1526T_TBL.ZNGTS_MHRIKN_MDSH_AMT IS '前月未払金戻し金額'
/
COMMENT ON COLUMN ED1526T_TBL.ZNGTS_MHRIKN_SHHZI_AMT IS '前月未払金消費税金額'
/
COMMENT ON COLUMN ED1526T_TBL.ZNGTS_MHRIKN_MDSH_ZIKM_AMT IS '前月未払金戻し税込金額'
/
COMMENT ON COLUMN ED1526T_TBL.TOGETSU_MIHARAIKIN_KEIJO_AMT IS '当月未払金計上金額'
/
COMMENT ON COLUMN ED1526T_TBL.TGTS_MHRIKN_SHHZI_AMT IS '当月未払金消費税金額'
/
COMMENT ON COLUMN ED1526T_TBL.TGTS_MHRIKN_KIJ_ZIKM_AMT IS '当月未払金計上税込金額'
/
COMMENT ON COLUMN ED1526T_TBL.SEIKYU_AMT IS '請求金額'
/
COMMENT ON COLUMN ED1526T_TBL.SHIHARAI_KEIJO_AMT IS '支払計上金額'
/
COMMENT ON COLUMN ED1526T_TBL.SHIHARAI_SHOHIZEI_AMT IS '支払消費税金額'
/
COMMENT ON COLUMN ED1526T_TBL.ZEIKOMI_SHIHARAI_KEIJO_AMT IS '税込支払計上金額'
/
COMMENT ON COLUMN ED1526T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED1526T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED1526T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1526T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1526T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1526T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1526T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1526T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1526T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1526T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1526T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1526T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1526T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1526T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
