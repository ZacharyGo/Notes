﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0125T_TBL.sql
-- 物理名：ED0125T_TBL
-- 論理名：仮示達目標商品種別本社登録集計テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0125T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0125T_TBL (
	 KEIJO_TAISHO_NENDO  CHAR(4) NOT NULL --「計上対象年度」
	,KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,EIGYO_SOSHIKI_KAISO_KBN  CHAR(1) NOT NULL --「営業組織階層区分」
	,EIGYO_SOSHIKI_CD  CHAR(6) NOT NULL --「営業組織コード」
	,SHOHIN_SERVICE_SHUBETSU_CD  CHAR(3) NOT NULL --「商品サービス種別コード」
	,JIGYO_SEGMENT_CD  CHAR(3) NOT NULL --「事業セグメントコード」
	,URIAGE_KEIJO_SHUBETSU_KBN  CHAR(2) NOT NULL --「売上計上種別区分」
	,SHIGATSU_KEIJO_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「四月計上件数」
	,SHIGATSU_KEIJO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「四月計上金額」
	,SHIGATSU_KEIJO_RUIKEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「四月計上累計金額」
	,GOGATSU_KEIJO_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「五月計上件数」
	,GOGATSU_KEIJO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「五月計上金額」
	,GOGATSU_KEIJO_RUIKEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「五月計上累計金額」
	,ROKUGATSU_KEIJO_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「六月計上件数」
	,ROKUGATSU_KEIJO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「六月計上金額」
	,ROKUGATSU_KEIJO_RUIKEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「六月計上累計金額」
	,SHICHIGATSU_KEIJO_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「七月計上件数」
	,SHICHIGATSU_KEIJO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「七月計上金額」
	,SHICHIGATSU_KEIJO_RUIKEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「七月計上累計金額」
	,HACHIGATSU_KEIJO_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「八月計上件数」
	,HACHIGATSU_KEIJO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「八月計上金額」
	,HACHIGATSU_KEIJO_RUIKEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「八月計上累計金額」
	,KUGATSU_KEIJO_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「九月計上件数」
	,KUGATSU_KEIJO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「九月計上金額」
	,KUGATSU_KEIJO_RUIKEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「九月計上累計金額」
	,JUGATSU_KEIJO_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「十月計上件数」
	,JUGATSU_KEIJO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「十月計上金額」
	,JUGATSU_KEIJO_RUIKEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「十月計上累計金額」
	,JUICHIGATSU_KEIJO_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「十一月計上件数」
	,JUICHIGATSU_KEIJO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「十一月計上金額」
	,JUICHIGATSU_KEIJO_RUIKEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「十一月計上累計金額」
	,JUNIGATSU_KEIJO_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「十二月計上件数」
	,JUNIGATSU_KEIJO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「十二月計上金額」
	,JUNIGATSU_KEIJO_RUIKEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「十二月計上累計金額」
	,HITOTSUKI_KEIJO_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「一月計上件数」
	,HITOTSUKI_KEIJO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「一月計上金額」
	,HITOTSUKI_KEIJO_RUIKEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「一月計上累計金額」
	,NIGATSU_KEIJO_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「二月計上件数」
	,NIGATSU_KEIJO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「二月計上金額」
	,NIGATSU_KEIJO_RUIKEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「二月計上累計金額」
	,SANGATSU_KEIJO_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「三月計上件数」
	,SANGATSU_KEIJO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「三月計上金額」
	,SANGATSU_KEIJO_RUIKEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「三月計上累計金額」
	,BATCH_SHURYO_YMD  DATE --「バッチ終了年月日」
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
	,CONSTRAINT ED0125T_PK PRIMARY KEY(
	 KEIJO_TAISHO_NENDO
	,  EIGYO_SOSHIKI_KAISO_KBN
	,  EIGYO_SOSHIKI_CD
	,  SHOHIN_SERVICE_SHUBETSU_CD
	,  JIGYO_SEGMENT_CD
	,  URIAGE_KEIJO_SHUBETSU_KBN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0125T_TBL IS '仮示達目標商品種別本社登録集計テーブル'
/

COMMENT ON COLUMN ED0125T_TBL.KEIJO_TAISHO_NENDO IS '計上対象年度'
/
COMMENT ON COLUMN ED0125T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0125T_TBL.EIGYO_SOSHIKI_KAISO_KBN IS '営業組織階層区分'
/
COMMENT ON COLUMN ED0125T_TBL.EIGYO_SOSHIKI_CD IS '営業組織コード'
/
COMMENT ON COLUMN ED0125T_TBL.SHOHIN_SERVICE_SHUBETSU_CD IS '商品サービス種別コード'
/
COMMENT ON COLUMN ED0125T_TBL.JIGYO_SEGMENT_CD IS '事業セグメントコード'
/
COMMENT ON COLUMN ED0125T_TBL.URIAGE_KEIJO_SHUBETSU_KBN IS '売上計上種別区分'
/
COMMENT ON COLUMN ED0125T_TBL.SHIGATSU_KEIJO_KENSU IS '四月計上件数'
/
COMMENT ON COLUMN ED0125T_TBL.SHIGATSU_KEIJO_AMT IS '四月計上金額'
/
COMMENT ON COLUMN ED0125T_TBL.SHIGATSU_KEIJO_RUIKEI_AMT IS '四月計上累計金額'
/
COMMENT ON COLUMN ED0125T_TBL.GOGATSU_KEIJO_KENSU IS '五月計上件数'
/
COMMENT ON COLUMN ED0125T_TBL.GOGATSU_KEIJO_AMT IS '五月計上金額'
/
COMMENT ON COLUMN ED0125T_TBL.GOGATSU_KEIJO_RUIKEI_AMT IS '五月計上累計金額'
/
COMMENT ON COLUMN ED0125T_TBL.ROKUGATSU_KEIJO_KENSU IS '六月計上件数'
/
COMMENT ON COLUMN ED0125T_TBL.ROKUGATSU_KEIJO_AMT IS '六月計上金額'
/
COMMENT ON COLUMN ED0125T_TBL.ROKUGATSU_KEIJO_RUIKEI_AMT IS '六月計上累計金額'
/
COMMENT ON COLUMN ED0125T_TBL.SHICHIGATSU_KEIJO_KENSU IS '七月計上件数'
/
COMMENT ON COLUMN ED0125T_TBL.SHICHIGATSU_KEIJO_AMT IS '七月計上金額'
/
COMMENT ON COLUMN ED0125T_TBL.SHICHIGATSU_KEIJO_RUIKEI_AMT IS '七月計上累計金額'
/
COMMENT ON COLUMN ED0125T_TBL.HACHIGATSU_KEIJO_KENSU IS '八月計上件数'
/
COMMENT ON COLUMN ED0125T_TBL.HACHIGATSU_KEIJO_AMT IS '八月計上金額'
/
COMMENT ON COLUMN ED0125T_TBL.HACHIGATSU_KEIJO_RUIKEI_AMT IS '八月計上累計金額'
/
COMMENT ON COLUMN ED0125T_TBL.KUGATSU_KEIJO_KENSU IS '九月計上件数'
/
COMMENT ON COLUMN ED0125T_TBL.KUGATSU_KEIJO_AMT IS '九月計上金額'
/
COMMENT ON COLUMN ED0125T_TBL.KUGATSU_KEIJO_RUIKEI_AMT IS '九月計上累計金額'
/
COMMENT ON COLUMN ED0125T_TBL.JUGATSU_KEIJO_KENSU IS '十月計上件数'
/
COMMENT ON COLUMN ED0125T_TBL.JUGATSU_KEIJO_AMT IS '十月計上金額'
/
COMMENT ON COLUMN ED0125T_TBL.JUGATSU_KEIJO_RUIKEI_AMT IS '十月計上累計金額'
/
COMMENT ON COLUMN ED0125T_TBL.JUICHIGATSU_KEIJO_KENSU IS '十一月計上件数'
/
COMMENT ON COLUMN ED0125T_TBL.JUICHIGATSU_KEIJO_AMT IS '十一月計上金額'
/
COMMENT ON COLUMN ED0125T_TBL.JUICHIGATSU_KEIJO_RUIKEI_AMT IS '十一月計上累計金額'
/
COMMENT ON COLUMN ED0125T_TBL.JUNIGATSU_KEIJO_KENSU IS '十二月計上件数'
/
COMMENT ON COLUMN ED0125T_TBL.JUNIGATSU_KEIJO_AMT IS '十二月計上金額'
/
COMMENT ON COLUMN ED0125T_TBL.JUNIGATSU_KEIJO_RUIKEI_AMT IS '十二月計上累計金額'
/
COMMENT ON COLUMN ED0125T_TBL.HITOTSUKI_KEIJO_KENSU IS '一月計上件数'
/
COMMENT ON COLUMN ED0125T_TBL.HITOTSUKI_KEIJO_AMT IS '一月計上金額'
/
COMMENT ON COLUMN ED0125T_TBL.HITOTSUKI_KEIJO_RUIKEI_AMT IS '一月計上累計金額'
/
COMMENT ON COLUMN ED0125T_TBL.NIGATSU_KEIJO_KENSU IS '二月計上件数'
/
COMMENT ON COLUMN ED0125T_TBL.NIGATSU_KEIJO_AMT IS '二月計上金額'
/
COMMENT ON COLUMN ED0125T_TBL.NIGATSU_KEIJO_RUIKEI_AMT IS '二月計上累計金額'
/
COMMENT ON COLUMN ED0125T_TBL.SANGATSU_KEIJO_KENSU IS '三月計上件数'
/
COMMENT ON COLUMN ED0125T_TBL.SANGATSU_KEIJO_AMT IS '三月計上金額'
/
COMMENT ON COLUMN ED0125T_TBL.SANGATSU_KEIJO_RUIKEI_AMT IS '三月計上累計金額'
/
COMMENT ON COLUMN ED0125T_TBL.BATCH_SHURYO_YMD IS 'バッチ終了年月日'
/
COMMENT ON COLUMN ED0125T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0125T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0125T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0125T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0125T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0125T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0125T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0125T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0125T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0125T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0125T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0125T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
