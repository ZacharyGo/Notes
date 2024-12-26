﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3959M_TBL.sql
-- 物理名：ED3959M_TBL
-- 論理名：入金決済カレンダマスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3959M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3959M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,NYUKIN_KESSAI_DAIKO_KAISHA_CD  CHAR(8) NOT NULL --「入金決済代行会社コード」
	,HIKIOTOSHI_YM  CHAR(6) NOT NULL --「引落年月」
	,SIKY_ITK_DATA_HKWTSH_YMD  DATE --「請求委託データ引渡年月日」
	,SIKY_ITK_KEKKA_TRKM_YMD  DATE --「請求委託結果取込年月日」
	,KEIYAKU_HIKIOTOSHI_YMD  DATE --「契約引落年月日」
	,NYUKIN_YMD  DATE --「入金年月日」
	,MOSHIKOMI_SHIMEKIRI_YMD  DATE --「申込締切年月日」
	,SHORI_JIKKO_JOKYO_KBN  CHAR(1) DEFAULT '0' NOT NULL --「処理実行状況区分」
	,SEIKYU_ITAKU_ERROR_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「請求委託エラー件数」
	,SEIKYU_ITAKU_SAKUSEI_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「請求委託作成件数」
	,SEIKYU_ITAKU_GOKEI_ZEIKOMI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「請求委託合計税込金額」
	,SEIKYU_ITAKU_SAKUSEI_ID  CHAR(8) --「請求委託作成ＩＤ」
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
	,CONSTRAINT ED3959M_PK PRIMARY KEY(
	 NYUKIN_KESSAI_DAIKO_KAISHA_CD
	,  HIKIOTOSHI_YM
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3959M_TBL IS '入金決済カレンダマスタ'
/

COMMENT ON COLUMN ED3959M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3959M_TBL.NYUKIN_KESSAI_DAIKO_KAISHA_CD IS '入金決済代行会社コード'
/
COMMENT ON COLUMN ED3959M_TBL.HIKIOTOSHI_YM IS '引落年月'
/
COMMENT ON COLUMN ED3959M_TBL.SIKY_ITK_DATA_HKWTSH_YMD IS '請求委託データ引渡年月日'
/
COMMENT ON COLUMN ED3959M_TBL.SIKY_ITK_KEKKA_TRKM_YMD IS '請求委託結果取込年月日'
/
COMMENT ON COLUMN ED3959M_TBL.KEIYAKU_HIKIOTOSHI_YMD IS '契約引落年月日'
/
COMMENT ON COLUMN ED3959M_TBL.NYUKIN_YMD IS '入金年月日'
/
COMMENT ON COLUMN ED3959M_TBL.MOSHIKOMI_SHIMEKIRI_YMD IS '申込締切年月日'
/
COMMENT ON COLUMN ED3959M_TBL.SHORI_JIKKO_JOKYO_KBN IS '処理実行状況区分'
/
COMMENT ON COLUMN ED3959M_TBL.SEIKYU_ITAKU_ERROR_KENSU IS '請求委託エラー件数'
/
COMMENT ON COLUMN ED3959M_TBL.SEIKYU_ITAKU_SAKUSEI_KENSU IS '請求委託作成件数'
/
COMMENT ON COLUMN ED3959M_TBL.SEIKYU_ITAKU_GOKEI_ZEIKOMI_AMT IS '請求委託合計税込金額'
/
COMMENT ON COLUMN ED3959M_TBL.SEIKYU_ITAKU_SAKUSEI_ID IS '請求委託作成ＩＤ'
/
COMMENT ON COLUMN ED3959M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3959M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3959M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3959M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3959M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3959M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3959M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3959M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3959M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3959M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3959M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3959M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
