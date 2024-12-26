﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3970M_TBL.sql
-- 物理名：ED3970M_TBL
-- 論理名：請求代行管理マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3970M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3970M_TBL (
	 SEIKYU_DAIKO_KANRI_NO  CHAR(13) NOT NULL --「請求代行管理番号」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,SIKY_DIK_IRIMT_TRHKSK_CD  CHAR(9) --「請求代行依頼元取引先コード」
	,SIKY_DIK_IRISK_TRHKSK_CD  CHAR(9) --「請求代行依頼先取引先コード」
	,RINGI_NO  VARCHAR2(32) --「稟議番号」
	,SIKY_DIK_TSRY_KISN_HH_KBN  CHAR(1) NOT NULL --「請求代行手数料計算方法区分」
	,SEIKYU_DAIKO_TESURYO_RITSU  NUMBER(7,3) --「請求代行手数料率」
	,SEIKYU_DAIKO_TESURYO_AMT  NUMBER(13,0) --「請求代行手数料金額」
	,SIKY_DIK_TSRY_SHHRI_HH_KBN  CHAR(1) NOT NULL --「請求代行手数料支払方法区分」
	,FUKUSU_KEIYAKU_SHIYOKA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「複数契約使用可フラグ」
	,SIKY_DIK_KNR_NO_SHYJ_BIKO  VARCHAR2(60) --「請求代行管理番号使用時備考」
	,SIKY_DIK_SHHRI_JKN_KBN  CHAR(1) NOT NULL --「請求代行支払条件区分」
	,JISHA_KOZA_CD  CHAR(4) --「自社口座コード」
	,TORIHIKISAKI_SHIHARAI_JOHO_CD  CHAR(4) --「取引先支払情報コード」
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
	,CONSTRAINT ED3970M_PK PRIMARY KEY(
	 SEIKYU_DAIKO_KANRI_NO
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3970M_TBL IS '請求代行管理マスタ'
/

COMMENT ON COLUMN ED3970M_TBL.SEIKYU_DAIKO_KANRI_NO IS '請求代行管理番号'
/
COMMENT ON COLUMN ED3970M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED3970M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED3970M_TBL.SIKY_DIK_IRIMT_TRHKSK_CD IS '請求代行依頼元取引先コード'
/
COMMENT ON COLUMN ED3970M_TBL.SIKY_DIK_IRISK_TRHKSK_CD IS '請求代行依頼先取引先コード'
/
COMMENT ON COLUMN ED3970M_TBL.RINGI_NO IS '稟議番号'
/
COMMENT ON COLUMN ED3970M_TBL.SIKY_DIK_TSRY_KISN_HH_KBN IS '請求代行手数料計算方法区分'
/
COMMENT ON COLUMN ED3970M_TBL.SEIKYU_DAIKO_TESURYO_RITSU IS '請求代行手数料率'
/
COMMENT ON COLUMN ED3970M_TBL.SEIKYU_DAIKO_TESURYO_AMT IS '請求代行手数料金額'
/
COMMENT ON COLUMN ED3970M_TBL.SIKY_DIK_TSRY_SHHRI_HH_KBN IS '請求代行手数料支払方法区分'
/
COMMENT ON COLUMN ED3970M_TBL.FUKUSU_KEIYAKU_SHIYOKA_FLG IS '複数契約使用可フラグ'
/
COMMENT ON COLUMN ED3970M_TBL.SIKY_DIK_KNR_NO_SHYJ_BIKO IS '請求代行管理番号使用時備考'
/
COMMENT ON COLUMN ED3970M_TBL.SIKY_DIK_SHHRI_JKN_KBN IS '請求代行支払条件区分'
/
COMMENT ON COLUMN ED3970M_TBL.JISHA_KOZA_CD IS '自社口座コード'
/
COMMENT ON COLUMN ED3970M_TBL.TORIHIKISAKI_SHIHARAI_JOHO_CD IS '取引先支払情報コード'
/
COMMENT ON COLUMN ED3970M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3970M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3970M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3970M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3970M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3970M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3970M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3970M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3970M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3970M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3970M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3970M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/