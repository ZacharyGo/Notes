﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3625T_TBL.sql
-- 物理名：ED3625T_TBL
-- 論理名：合算内訳明細入金消込結果テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3625T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3625T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,NYUSHUKKIN_NO  NUMBER(14,0) NOT NULL --「入出金番号」
	,NYUSHUKKIN_NO_BN  CHAR(6) NOT NULL --「入出金番号枝番」
	,SEIKYUSHO_NO  CHAR(14) NOT NULL --「請求書番号」
	,SEIKYUSHO_MEISAI_SN  CHAR(14) NOT NULL --「請求書明細連番」
	,GASSAN_UCHIWAKE_MEISAI_SN  CHAR(14) NOT NULL --「合算内訳明細連番」
	,KESHIKOMI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「消込金額」
	,FURIKOMI_TESURYO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「振込手数料金額」
	,HAMBAI_TESURYO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「販売手数料金額」
	,TESURYO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「手数料金額」
	,ITAKU_TESURYO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「委託手数料金額」
	,RONRI_SAKUJO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「論理削除フラグ」
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
	,CONSTRAINT ED3625T_PK PRIMARY KEY(
	 NYUSHUKKIN_NO
	,  NYUSHUKKIN_NO_BN
	,  SEIKYUSHO_NO
	,  SEIKYUSHO_MEISAI_SN
	,  GASSAN_UCHIWAKE_MEISAI_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3625T_TBL IS '合算内訳明細入金消込結果テーブル'
/

COMMENT ON COLUMN ED3625T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3625T_TBL.NYUSHUKKIN_NO IS '入出金番号'
/
COMMENT ON COLUMN ED3625T_TBL.NYUSHUKKIN_NO_BN IS '入出金番号枝番'
/
COMMENT ON COLUMN ED3625T_TBL.SEIKYUSHO_NO IS '請求書番号'
/
COMMENT ON COLUMN ED3625T_TBL.SEIKYUSHO_MEISAI_SN IS '請求書明細連番'
/
COMMENT ON COLUMN ED3625T_TBL.GASSAN_UCHIWAKE_MEISAI_SN IS '合算内訳明細連番'
/
COMMENT ON COLUMN ED3625T_TBL.KESHIKOMI_AMT IS '消込金額'
/
COMMENT ON COLUMN ED3625T_TBL.FURIKOMI_TESURYO_AMT IS '振込手数料金額'
/
COMMENT ON COLUMN ED3625T_TBL.HAMBAI_TESURYO_AMT IS '販売手数料金額'
/
COMMENT ON COLUMN ED3625T_TBL.TESURYO_AMT IS '手数料金額'
/
COMMENT ON COLUMN ED3625T_TBL.ITAKU_TESURYO_AMT IS '委託手数料金額'
/
COMMENT ON COLUMN ED3625T_TBL.RONRI_SAKUJO_FLG IS '論理削除フラグ'
/
COMMENT ON COLUMN ED3625T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3625T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3625T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3625T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3625T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3625T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3625T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3625T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3625T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3625T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3625T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3625T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
