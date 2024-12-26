﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0617T_TBL.sql
-- 物理名：ED0617T_TBL
-- 論理名：受注ＡＥＤ機器構成テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0617T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0617T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) NOT NULL --「受注契約変更番号」
	,SEKISAN_AED_KIKI_KOSEI_CD  CHAR(8) NOT NULL --「積算ＡＥＤ機器構成コード」
	,HIMMEI_CD  CHAR(8) NOT NULL --「品名コード」
	,HYOJUN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「標準金額」
	,GENKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「原価金額」
	,SHOKAI_NOHIN_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「初回納品数量」
	,TEIKI_KOKAN_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「定期交換数量」
	,KAKUCHO_KOKAN_KBN  CHAR(1) NOT NULL --「拡張交換区分」
	,AED_KIKI_KOSEI_SN  CHAR(14) NOT NULL --「ＡＥＤ機器構成連番」
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
	,CONSTRAINT ED0617T_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  JUCHU_KEIYAKU_HENKO_NO
	,  KAISHA_CD
	,  SEKISAN_AED_KIKI_KOSEI_CD
	,  HIMMEI_CD
	,  AED_KIKI_KOSEI_SN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0617T_TBL IS '受注ＡＥＤ機器構成テーブル'
/

COMMENT ON COLUMN ED0617T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0617T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED0617T_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED0617T_TBL.SEKISAN_AED_KIKI_KOSEI_CD IS '積算ＡＥＤ機器構成コード'
/
COMMENT ON COLUMN ED0617T_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED0617T_TBL.HYOJUN_AMT IS '標準金額'
/
COMMENT ON COLUMN ED0617T_TBL.GENKA_AMT IS '原価金額'
/
COMMENT ON COLUMN ED0617T_TBL.SHOKAI_NOHIN_SURYO IS '初回納品数量'
/
COMMENT ON COLUMN ED0617T_TBL.TEIKI_KOKAN_SURYO IS '定期交換数量'
/
COMMENT ON COLUMN ED0617T_TBL.KAKUCHO_KOKAN_KBN IS '拡張交換区分'
/
COMMENT ON COLUMN ED0617T_TBL.AED_KIKI_KOSEI_SN IS 'ＡＥＤ機器構成連番'
/
COMMENT ON COLUMN ED0617T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0617T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0617T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0617T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0617T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0617T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0617T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0617T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0617T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0617T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0617T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0617T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/