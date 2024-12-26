﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED8701T_TBL.sql
-- 物理名：ED8701T_TBL
-- 論理名：売掛金未収入金残高テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED8701T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED8701T_TBL (
	 URKKKN_MSNKN_ZDK_SN  CHAR(14) NOT NULL --「売掛金未収入金残高連番」
	,KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,EIGYO_KANRI_YM  CHAR(6) NOT NULL --「営業管理年月」
	,JUCHU_JIGYOSHO_CD  CHAR(6) NOT NULL --「受注事業所コード」
	,SEIKYUSAKI_TORIHIKISAKI_CD  CHAR(9) --「請求先取引先コード」
	,JIGYO_SEGMENT_CD  CHAR(3) --「事業セグメントコード」
	,SEIKYUSHO_TEMPLATE_NO  CHAR(14) --「請求書テンプレート番号」
	,FUTAN_BUMON_SOSHIKI_CD  CHAR(6) --「負担部門組織コード」
	,KEIYAKUSAKI_TORIHIKISAKI_CD  CHAR(9) --「契約先取引先コード」
	,SEIKYU_SHIHARAI_CD  CHAR(3) --「請求支払コード」
	,KARIKATA_KANJO_KAMOKU_CD  VARCHAR2(12) NOT NULL --「借方勘定科目コード」
	,KASHIKATA_KANJO_KAMOKU_CD  VARCHAR2(12) NOT NULL --「貸方勘定科目コード」
	,JUCHU_JIGYOSHO_NM  VARCHAR2(200) --「受注事業所名称」
	,JUCHU_JIGYOSHO_KETSUGO_NM  VARCHAR2(400) --「受注事業所結合名称」
	,SEIKYUSHO_TEMPLATE_NM  VARCHAR2(60) --「請求書テンプレート名称」
	,FUTAN_BUMON_SOSHIKI_NM  VARCHAR2(200) --「負担部門組織名称」
	,FUTAN_BUMON_SOSHIKI_KETSUGO_NM  VARCHAR2(400) --「負担部門組織結合名称」
	,KEIYAKUSAKI_TORIHIKISAKI_NM  VARCHAR2(40) --「契約先取引先名称」
	,KIYKSK_TRHKSK_SISHK_NM  VARCHAR2(50) --「契約先取引先正式名称」
	,SEIKYUSAKI_TORIHIKISAKI_NM  VARCHAR2(40) --「請求先取引先名称」
	,SIKYSK_TRHKSK_SISHK_NM  VARCHAR2(50) --「請求先取引先正式名称」
	,KARIKATA_KANJO_KAMOKU_NM  VARCHAR2(64) --「借方勘定科目名称」
	,KASHIKATA_KANJO_KAMOKU_NM  VARCHAR2(64) --「貸方勘定科目名称」
	,ZENGETSU_KURIKOSHI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「前月繰越金額」
	,TOGETSU_KEIJO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「当月計上金額」
	,TOGETSU_KEIJO_TEISEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「当月計上訂正金額」
	,TOGETSU_NYUKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「当月入金金額」
	,TOGETSU_NYUKIN_TEISEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「当月入金訂正金額」
	,TOGETSU_FURIKAE_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「当月振替金額」
	,TOGETSU_FURIKAE_TEISEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「当月振替訂正金額」
	,TOGETSU_ZANDAKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「当月残高金額」
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
	,CONSTRAINT ED8701T_PK PRIMARY KEY(
	 URKKKN_MSNKN_ZDK_SN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED8701T_TBL IS '売掛金未収入金残高テーブル'
/

COMMENT ON COLUMN ED8701T_TBL.URKKKN_MSNKN_ZDK_SN IS '売掛金未収入金残高連番'
/
COMMENT ON COLUMN ED8701T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED8701T_TBL.EIGYO_KANRI_YM IS '営業管理年月'
/
COMMENT ON COLUMN ED8701T_TBL.JUCHU_JIGYOSHO_CD IS '受注事業所コード'
/
COMMENT ON COLUMN ED8701T_TBL.SEIKYUSAKI_TORIHIKISAKI_CD IS '請求先取引先コード'
/
COMMENT ON COLUMN ED8701T_TBL.JIGYO_SEGMENT_CD IS '事業セグメントコード'
/
COMMENT ON COLUMN ED8701T_TBL.SEIKYUSHO_TEMPLATE_NO IS '請求書テンプレート番号'
/
COMMENT ON COLUMN ED8701T_TBL.FUTAN_BUMON_SOSHIKI_CD IS '負担部門組織コード'
/
COMMENT ON COLUMN ED8701T_TBL.KEIYAKUSAKI_TORIHIKISAKI_CD IS '契約先取引先コード'
/
COMMENT ON COLUMN ED8701T_TBL.SEIKYU_SHIHARAI_CD IS '請求支払コード'
/
COMMENT ON COLUMN ED8701T_TBL.KARIKATA_KANJO_KAMOKU_CD IS '借方勘定科目コード'
/
COMMENT ON COLUMN ED8701T_TBL.KASHIKATA_KANJO_KAMOKU_CD IS '貸方勘定科目コード'
/
COMMENT ON COLUMN ED8701T_TBL.JUCHU_JIGYOSHO_NM IS '受注事業所名称'
/
COMMENT ON COLUMN ED8701T_TBL.JUCHU_JIGYOSHO_KETSUGO_NM IS '受注事業所結合名称'
/
COMMENT ON COLUMN ED8701T_TBL.SEIKYUSHO_TEMPLATE_NM IS '請求書テンプレート名称'
/
COMMENT ON COLUMN ED8701T_TBL.FUTAN_BUMON_SOSHIKI_NM IS '負担部門組織名称'
/
COMMENT ON COLUMN ED8701T_TBL.FUTAN_BUMON_SOSHIKI_KETSUGO_NM IS '負担部門組織結合名称'
/
COMMENT ON COLUMN ED8701T_TBL.KEIYAKUSAKI_TORIHIKISAKI_NM IS '契約先取引先名称'
/
COMMENT ON COLUMN ED8701T_TBL.KIYKSK_TRHKSK_SISHK_NM IS '契約先取引先正式名称'
/
COMMENT ON COLUMN ED8701T_TBL.SEIKYUSAKI_TORIHIKISAKI_NM IS '請求先取引先名称'
/
COMMENT ON COLUMN ED8701T_TBL.SIKYSK_TRHKSK_SISHK_NM IS '請求先取引先正式名称'
/
COMMENT ON COLUMN ED8701T_TBL.KARIKATA_KANJO_KAMOKU_NM IS '借方勘定科目名称'
/
COMMENT ON COLUMN ED8701T_TBL.KASHIKATA_KANJO_KAMOKU_NM IS '貸方勘定科目名称'
/
COMMENT ON COLUMN ED8701T_TBL.ZENGETSU_KURIKOSHI_AMT IS '前月繰越金額'
/
COMMENT ON COLUMN ED8701T_TBL.TOGETSU_KEIJO_AMT IS '当月計上金額'
/
COMMENT ON COLUMN ED8701T_TBL.TOGETSU_KEIJO_TEISEI_AMT IS '当月計上訂正金額'
/
COMMENT ON COLUMN ED8701T_TBL.TOGETSU_NYUKIN_AMT IS '当月入金金額'
/
COMMENT ON COLUMN ED8701T_TBL.TOGETSU_NYUKIN_TEISEI_AMT IS '当月入金訂正金額'
/
COMMENT ON COLUMN ED8701T_TBL.TOGETSU_FURIKAE_AMT IS '当月振替金額'
/
COMMENT ON COLUMN ED8701T_TBL.TOGETSU_FURIKAE_TEISEI_AMT IS '当月振替訂正金額'
/
COMMENT ON COLUMN ED8701T_TBL.TOGETSU_ZANDAKA_AMT IS '当月残高金額'
/
COMMENT ON COLUMN ED8701T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED8701T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED8701T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED8701T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED8701T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED8701T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED8701T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED8701T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED8701T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED8701T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED8701T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED8701T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/