﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0022T_TBL.sql
-- 物理名：ED0022T_TBL
-- 論理名：案件謝礼はがき送付元テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0022T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0022T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,ANKEN_NO  CHAR(13) NOT NULL --「案件番号」
	,SHAREI_HAGAKI_NO  CHAR(11) --「謝礼はがき番号」
	,SHAREI_HAGAKI_SOFUMOTO_KN_NM  VARCHAR2(90) --「謝礼はがき送付元カナ氏名」
	,SHAREI_HAGAKI_SOFUMOTO_NM  VARCHAR2(60) --「謝礼はがき送付元氏名」
	,SHRI_HGK_SFMT_HS_RYAR_FLG  CHAR(1) DEFAULT '0' NOT NULL --「謝礼はがき送付元ＨＳ利用有フラグ」
	,SHRI_HGK_SFMT_KIYKSK_TISH_NM  VARCHAR2(40) --「謝礼はがき送付元契約先対象名称」
	,SHRI_HGK_SFMT_JUSHO_CD  CHAR(11) --「謝礼はがき送付元住所コード」
	,SHRI_HGK_SFMT_YBN_NO  CHAR(7) --「謝礼はがき送付元郵便番号」
	,SHAREI_HAGAKI_SOFUMOTO_BANCHI  VARCHAR2(50) --「謝礼はがき送付元番地」
	,SHRI_HGK_SFMT_TTMN_NM  VARCHAR2(50) --「謝礼はがき送付元建物名称」
	,SHRI_HGK_SFMT_DNW_NO  VARCHAR2(20) --「謝礼はがき送付元電話番号」
	,GIFT_CARD_SOFU_KANRYO_YMD  DATE --「ギフトカード送付完了年月日」
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
	,CONSTRAINT ED0022T_PK PRIMARY KEY(
	 ANKEN_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0022T_TBL IS '案件謝礼はがき送付元テーブル'
/

COMMENT ON COLUMN ED0022T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0022T_TBL.ANKEN_NO IS '案件番号'
/
COMMENT ON COLUMN ED0022T_TBL.SHAREI_HAGAKI_NO IS '謝礼はがき番号'
/
COMMENT ON COLUMN ED0022T_TBL.SHAREI_HAGAKI_SOFUMOTO_KN_NM IS '謝礼はがき送付元カナ氏名'
/
COMMENT ON COLUMN ED0022T_TBL.SHAREI_HAGAKI_SOFUMOTO_NM IS '謝礼はがき送付元氏名'
/
COMMENT ON COLUMN ED0022T_TBL.SHRI_HGK_SFMT_HS_RYAR_FLG IS '謝礼はがき送付元ＨＳ利用有フラグ'
/
COMMENT ON COLUMN ED0022T_TBL.SHRI_HGK_SFMT_KIYKSK_TISH_NM IS '謝礼はがき送付元契約先対象名称'
/
COMMENT ON COLUMN ED0022T_TBL.SHRI_HGK_SFMT_JUSHO_CD IS '謝礼はがき送付元住所コード'
/
COMMENT ON COLUMN ED0022T_TBL.SHRI_HGK_SFMT_YBN_NO IS '謝礼はがき送付元郵便番号'
/
COMMENT ON COLUMN ED0022T_TBL.SHAREI_HAGAKI_SOFUMOTO_BANCHI IS '謝礼はがき送付元番地'
/
COMMENT ON COLUMN ED0022T_TBL.SHRI_HGK_SFMT_TTMN_NM IS '謝礼はがき送付元建物名称'
/
COMMENT ON COLUMN ED0022T_TBL.SHRI_HGK_SFMT_DNW_NO IS '謝礼はがき送付元電話番号'
/
COMMENT ON COLUMN ED0022T_TBL.GIFT_CARD_SOFU_KANRYO_YMD IS 'ギフトカード送付完了年月日'
/
COMMENT ON COLUMN ED0022T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0022T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0022T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0022T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0022T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0022T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0022T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0022T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0022T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0022T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0022T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0022T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
