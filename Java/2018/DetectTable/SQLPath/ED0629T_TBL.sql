﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0629T_TBL.sql
-- 物理名：ED0629T_TBL
-- 論理名：受注出動課金テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0629T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0629T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) NOT NULL --「受注契約変更番号」
	,KAKIN_BUNRUI_KBN  CHAR(1) NOT NULL --「課金分類区分」
	,MSH_SHTSD_KAISU_SHKI_KISH_D  CHAR(2) --「無償出動回数集計開始日」
	,MSH_SHTSD_KAISU_SHKI_SHRY_D  CHAR(2) --「無償出動回数集計終了日」
	,SEIKYUSAKI_KBN  CHAR(1) NOT NULL --「請求先区分」
	,SHTSD_KKN_TRK_TSCH_FLG  CHAR(1) DEFAULT '0' NOT NULL --「出動課金登録通知フラグ」
	,SHUTSUDO_KAKIN_BIKO  VARCHAR2(100) --「出動課金備考」
	,MUSHO_SHUTSUDO_KAISU_KBN  CHAR(1) NOT NULL --「無償出動回数区分」
	,SHTSD_KKN_SBT_MSH_RIYU  VARCHAR2(100) --「出動課金すべて無償理由」
	,MUSHO_SHUTSUDO_KAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「無償出動回数」
	,SONOTA_MUSHO_JOKEN_NAIYO  VARCHAR2(30) --「その他無償条件内容」
	,SEIKYUSAKI_TORIHIKISAKI_CD  CHAR(9) --「請求先取引先コード」
	,SEIKYUSAKIBETSU_TEMPLATE_SN  CHAR(5) --「請求先別テンプレート連番」
	,SEIKYUSHO_TEMPLATE_NO  CHAR(14) --「請求書テンプレート番号」
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
	,CONSTRAINT ED0629T_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  JUCHU_KEIYAKU_HENKO_NO
	,  KAISHA_CD
	,  KAKIN_BUNRUI_KBN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0629T_TBL IS '受注出動課金テーブル'
/

COMMENT ON COLUMN ED0629T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0629T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED0629T_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED0629T_TBL.KAKIN_BUNRUI_KBN IS '課金分類区分'
/
COMMENT ON COLUMN ED0629T_TBL.MSH_SHTSD_KAISU_SHKI_KISH_D IS '無償出動回数集計開始日'
/
COMMENT ON COLUMN ED0629T_TBL.MSH_SHTSD_KAISU_SHKI_SHRY_D IS '無償出動回数集計終了日'
/
COMMENT ON COLUMN ED0629T_TBL.SEIKYUSAKI_KBN IS '請求先区分'
/
COMMENT ON COLUMN ED0629T_TBL.SHTSD_KKN_TRK_TSCH_FLG IS '出動課金登録通知フラグ'
/
COMMENT ON COLUMN ED0629T_TBL.SHUTSUDO_KAKIN_BIKO IS '出動課金備考'
/
COMMENT ON COLUMN ED0629T_TBL.MUSHO_SHUTSUDO_KAISU_KBN IS '無償出動回数区分'
/
COMMENT ON COLUMN ED0629T_TBL.SHTSD_KKN_SBT_MSH_RIYU IS '出動課金すべて無償理由'
/
COMMENT ON COLUMN ED0629T_TBL.MUSHO_SHUTSUDO_KAISU IS '無償出動回数'
/
COMMENT ON COLUMN ED0629T_TBL.SONOTA_MUSHO_JOKEN_NAIYO IS 'その他無償条件内容'
/
COMMENT ON COLUMN ED0629T_TBL.SEIKYUSAKI_TORIHIKISAKI_CD IS '請求先取引先コード'
/
COMMENT ON COLUMN ED0629T_TBL.SEIKYUSAKIBETSU_TEMPLATE_SN IS '請求先別テンプレート連番'
/
COMMENT ON COLUMN ED0629T_TBL.SEIKYUSHO_TEMPLATE_NO IS '請求書テンプレート番号'
/
COMMENT ON COLUMN ED0629T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0629T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0629T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0629T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0629T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0629T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0629T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0629T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0629T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0629T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0629T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0629T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
