﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED8703T_TBL.sql
-- 物理名：ED8703T_TBL
-- 論理名：仮受金残高請求代行テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED8703T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED8703T_TBL (
	 KRUKKN_ZNDK_SIKY_DIK_SN  CHAR(14) NOT NULL --「仮受金残高請求代行連番」
	,KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,EIGYO_KANRI_YM  CHAR(6) NOT NULL --「営業管理年月」
	,SEIKYU_KANRI_JIGYOSHO_CD  CHAR(6) --「請求管理事業所コード」
	,SEIKYUSAKI_TORIHIKISAKI_CD  CHAR(9) --「請求先取引先コード」
	,SIKY_DIK_IRIMT_TRHKSK_CD  CHAR(9) --「請求代行依頼元取引先コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) --「受注契約番号」
	,NYUKIN_YMD  DATE --「入金年月日」
	,SEIKYU_KANRI_JIGYOSHO_NM  VARCHAR2(200) --「請求管理事業所名称」
	,SIKY_KNR_JGYSH_KTSG_NM  VARCHAR2(400) --「請求管理事業所結合名称」
	,SEIKYUSAKI_TORIHIKISAKI_NM  VARCHAR2(40) --「請求先取引先名称」
	,SIKYSK_TRHKSK_SISHK_NM  VARCHAR2(50) --「請求先取引先正式名称」
	,SIKY_DIK_IRIMT_TRHKSK_NM  VARCHAR2(40) --「請求代行依頼元取引先名称」
	,SIKY_DIK_IRIMT_TRHKSK_SISHK_NM  VARCHAR2(50) --「請求代行依頼元取引先正式名称」
	,SEIKYU_DAIKO_IRAISHO_NO  CHAR(10) --「請求代行依頼書番号」
	,FURIKOMI_IRAININ_KN_NM  VARCHAR2(60) --「振込依頼人カナ名称」
	,NYUKIN_JIGYOSHO_CD  CHAR(6) --「入金事業所コード」
	,NYUKIN_JIGYOSHO_NM  VARCHAR2(200) --「入金事業所名称」
	,NYUKIN_JIGYOSHO_KETSUGO_NM  VARCHAR2(400) --「入金事業所結合名称」
	,JISHA_KOZA_CD  CHAR(4) --「自社口座コード」
	,JISHA_KOZA_NM  VARCHAR2(30) --「自社口座名称」
	,TAISHOSAKI_CD  CHAR(9) --「対象先コード」
	,TAISHOSAKI_NM  VARCHAR2(40) --「対象先名称」
	,SEIKYUSHO_MEISAI_TEKIYO  VARCHAR2(62) --「請求書明細摘要」
	,KARIUKEKIN_ZANDAKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「仮受金残高金額」
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
	,CONSTRAINT ED8703T_PK PRIMARY KEY(
	 KRUKKN_ZNDK_SIKY_DIK_SN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED8703T_TBL IS '仮受金残高請求代行テーブル'
/

COMMENT ON COLUMN ED8703T_TBL.KRUKKN_ZNDK_SIKY_DIK_SN IS '仮受金残高請求代行連番'
/
COMMENT ON COLUMN ED8703T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED8703T_TBL.EIGYO_KANRI_YM IS '営業管理年月'
/
COMMENT ON COLUMN ED8703T_TBL.SEIKYU_KANRI_JIGYOSHO_CD IS '請求管理事業所コード'
/
COMMENT ON COLUMN ED8703T_TBL.SEIKYUSAKI_TORIHIKISAKI_CD IS '請求先取引先コード'
/
COMMENT ON COLUMN ED8703T_TBL.SIKY_DIK_IRIMT_TRHKSK_CD IS '請求代行依頼元取引先コード'
/
COMMENT ON COLUMN ED8703T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED8703T_TBL.NYUKIN_YMD IS '入金年月日'
/
COMMENT ON COLUMN ED8703T_TBL.SEIKYU_KANRI_JIGYOSHO_NM IS '請求管理事業所名称'
/
COMMENT ON COLUMN ED8703T_TBL.SIKY_KNR_JGYSH_KTSG_NM IS '請求管理事業所結合名称'
/
COMMENT ON COLUMN ED8703T_TBL.SEIKYUSAKI_TORIHIKISAKI_NM IS '請求先取引先名称'
/
COMMENT ON COLUMN ED8703T_TBL.SIKYSK_TRHKSK_SISHK_NM IS '請求先取引先正式名称'
/
COMMENT ON COLUMN ED8703T_TBL.SIKY_DIK_IRIMT_TRHKSK_NM IS '請求代行依頼元取引先名称'
/
COMMENT ON COLUMN ED8703T_TBL.SIKY_DIK_IRIMT_TRHKSK_SISHK_NM IS '請求代行依頼元取引先正式名称'
/
COMMENT ON COLUMN ED8703T_TBL.SEIKYU_DAIKO_IRAISHO_NO IS '請求代行依頼書番号'
/
COMMENT ON COLUMN ED8703T_TBL.FURIKOMI_IRAININ_KN_NM IS '振込依頼人カナ名称'
/
COMMENT ON COLUMN ED8703T_TBL.NYUKIN_JIGYOSHO_CD IS '入金事業所コード'
/
COMMENT ON COLUMN ED8703T_TBL.NYUKIN_JIGYOSHO_NM IS '入金事業所名称'
/
COMMENT ON COLUMN ED8703T_TBL.NYUKIN_JIGYOSHO_KETSUGO_NM IS '入金事業所結合名称'
/
COMMENT ON COLUMN ED8703T_TBL.JISHA_KOZA_CD IS '自社口座コード'
/
COMMENT ON COLUMN ED8703T_TBL.JISHA_KOZA_NM IS '自社口座名称'
/
COMMENT ON COLUMN ED8703T_TBL.TAISHOSAKI_CD IS '対象先コード'
/
COMMENT ON COLUMN ED8703T_TBL.TAISHOSAKI_NM IS '対象先名称'
/
COMMENT ON COLUMN ED8703T_TBL.SEIKYUSHO_MEISAI_TEKIYO IS '請求書明細摘要'
/
COMMENT ON COLUMN ED8703T_TBL.KARIUKEKIN_ZANDAKA_AMT IS '仮受金残高金額'
/
COMMENT ON COLUMN ED8703T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED8703T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED8703T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED8703T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED8703T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED8703T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED8703T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED8703T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED8703T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED8703T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED8703T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED8703T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/