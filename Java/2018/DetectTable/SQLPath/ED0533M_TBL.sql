﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0533M_TBL.sql
-- 物理名：ED0533M_TBL
-- 論理名：契約書表示マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0533M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0533M_TBL (
	 SHOHIN_SERVICE_CD  CHAR(3) NOT NULL --「商品サービスコード」
	,CHOHYO_SHURUI_KBN  CHAR(2) NOT NULL --「帳票種類区分」
	,KEIYAKUSHO_KOMOKU_NO  NUMBER(9,0) DEFAULT '0' NOT NULL --「契約書項目番号」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,CHOHYO_ID  VARCHAR2(20) NOT NULL --「帳票ＩＤ」
	,KEIYAKUSHO_KISAI_NAIYO  VARCHAR2(1000) --「契約書記載内容」
	,HENSUARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「変数有フラグ」
	,KEIYAKUSHO_KISAI_TSUIKA_NAIYO  VARCHAR2(1000) --「契約書記載追加内容」
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
	,CONSTRAINT ED0533M_PK PRIMARY KEY(
	 SHOHIN_SERVICE_CD
	,  CHOHYO_ID
	,  CHOHYO_SHURUI_KBN
	,  KEIYAKUSHO_KOMOKU_NO
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0533M_TBL IS '契約書表示マスタ'
/

COMMENT ON COLUMN ED0533M_TBL.SHOHIN_SERVICE_CD IS '商品サービスコード'
/
COMMENT ON COLUMN ED0533M_TBL.CHOHYO_SHURUI_KBN IS '帳票種類区分'
/
COMMENT ON COLUMN ED0533M_TBL.KEIYAKUSHO_KOMOKU_NO IS '契約書項目番号'
/
COMMENT ON COLUMN ED0533M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED0533M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED0533M_TBL.CHOHYO_ID IS '帳票ＩＤ'
/
COMMENT ON COLUMN ED0533M_TBL.KEIYAKUSHO_KISAI_NAIYO IS '契約書記載内容'
/
COMMENT ON COLUMN ED0533M_TBL.HENSUARI_FLG IS '変数有フラグ'
/
COMMENT ON COLUMN ED0533M_TBL.KEIYAKUSHO_KISAI_TSUIKA_NAIYO IS '契約書記載追加内容'
/
COMMENT ON COLUMN ED0533M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0533M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0533M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0533M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0533M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0533M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0533M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0533M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0533M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0533M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0533M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0533M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
