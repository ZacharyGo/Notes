﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED8702T_TBL.sql
-- 物理名：ED8702T_TBL
-- 論理名：仮受金残高営業テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED8702T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED8702T_TBL (
	 KRUKKN_ZNDK_EGY_SN  CHAR(14) NOT NULL --「仮受金残高営業連番」
	,KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,EIGYO_KANRI_YM  CHAR(6) NOT NULL --「営業管理年月」
	,NYUKIN_JIGYOSHO_CD  CHAR(6) --「入金事業所コード」
	,JISHA_KOZA_CD  CHAR(4) --「自社口座コード」
	,NYUKIN_YMD  DATE --「入金年月日」
	,FURIKOMI_IRAININ_KN_NM  VARCHAR2(60) --「振込依頼人カナ名称」
	,SEIKYUSAKI_TORIHIKISAKI_CD  CHAR(9) --「請求先取引先コード」
	,SEIKYUSHO_TEMPLATE_NO  CHAR(14) --「請求書テンプレート番号」
	,NYUKIN_JIGYOSHO_NM  VARCHAR2(200) --「入金事業所名称」
	,NYUKIN_JIGYOSHO_KETSUGO_NM  VARCHAR2(400) --「入金事業所結合名称」
	,JISHA_KOZA_NM  VARCHAR2(30) --「自社口座名称」
	,SEIKYUSAKI_TORIHIKISAKI_NM  VARCHAR2(40) --「請求先取引先名称」
	,SIKYSK_TRHKSK_SISHK_NM  VARCHAR2(50) --「請求先取引先正式名称」
	,SEIKYUSHO_TEMPLATE_NM  VARCHAR2(60) --「請求書テンプレート名称」
	,SHIMUKE_KINYU_KIKAN_KN_NM  VARCHAR2(30) --「仕向金融機関カナ名称」
	,SHMK_KNY_KKN_SHTN_KN_NM  VARCHAR2(30) --「仕向金融機関支店カナ名称」
	,SEIKYU_KANRI_JIGYOSHO_CD  CHAR(6) --「請求管理事業所コード」
	,SEIKYU_KANRI_JIGYOSHO_NM  VARCHAR2(200) --「請求管理事業所名称」
	,SIKY_KNR_JGYSH_KTSG_NM  VARCHAR2(400) --「請求管理事業所結合名称」
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
	,CONSTRAINT ED8702T_PK PRIMARY KEY(
	 KRUKKN_ZNDK_EGY_SN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED8702T_TBL IS '仮受金残高営業テーブル'
/

COMMENT ON COLUMN ED8702T_TBL.KRUKKN_ZNDK_EGY_SN IS '仮受金残高営業連番'
/
COMMENT ON COLUMN ED8702T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED8702T_TBL.EIGYO_KANRI_YM IS '営業管理年月'
/
COMMENT ON COLUMN ED8702T_TBL.NYUKIN_JIGYOSHO_CD IS '入金事業所コード'
/
COMMENT ON COLUMN ED8702T_TBL.JISHA_KOZA_CD IS '自社口座コード'
/
COMMENT ON COLUMN ED8702T_TBL.NYUKIN_YMD IS '入金年月日'
/
COMMENT ON COLUMN ED8702T_TBL.FURIKOMI_IRAININ_KN_NM IS '振込依頼人カナ名称'
/
COMMENT ON COLUMN ED8702T_TBL.SEIKYUSAKI_TORIHIKISAKI_CD IS '請求先取引先コード'
/
COMMENT ON COLUMN ED8702T_TBL.SEIKYUSHO_TEMPLATE_NO IS '請求書テンプレート番号'
/
COMMENT ON COLUMN ED8702T_TBL.NYUKIN_JIGYOSHO_NM IS '入金事業所名称'
/
COMMENT ON COLUMN ED8702T_TBL.NYUKIN_JIGYOSHO_KETSUGO_NM IS '入金事業所結合名称'
/
COMMENT ON COLUMN ED8702T_TBL.JISHA_KOZA_NM IS '自社口座名称'
/
COMMENT ON COLUMN ED8702T_TBL.SEIKYUSAKI_TORIHIKISAKI_NM IS '請求先取引先名称'
/
COMMENT ON COLUMN ED8702T_TBL.SIKYSK_TRHKSK_SISHK_NM IS '請求先取引先正式名称'
/
COMMENT ON COLUMN ED8702T_TBL.SEIKYUSHO_TEMPLATE_NM IS '請求書テンプレート名称'
/
COMMENT ON COLUMN ED8702T_TBL.SHIMUKE_KINYU_KIKAN_KN_NM IS '仕向金融機関カナ名称'
/
COMMENT ON COLUMN ED8702T_TBL.SHMK_KNY_KKN_SHTN_KN_NM IS '仕向金融機関支店カナ名称'
/
COMMENT ON COLUMN ED8702T_TBL.SEIKYU_KANRI_JIGYOSHO_CD IS '請求管理事業所コード'
/
COMMENT ON COLUMN ED8702T_TBL.SEIKYU_KANRI_JIGYOSHO_NM IS '請求管理事業所名称'
/
COMMENT ON COLUMN ED8702T_TBL.SIKY_KNR_JGYSH_KTSG_NM IS '請求管理事業所結合名称'
/
COMMENT ON COLUMN ED8702T_TBL.KARIUKEKIN_ZANDAKA_AMT IS '仮受金残高金額'
/
COMMENT ON COLUMN ED8702T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED8702T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED8702T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED8702T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED8702T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED8702T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED8702T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED8702T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED8702T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED8702T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED8702T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED8702T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
