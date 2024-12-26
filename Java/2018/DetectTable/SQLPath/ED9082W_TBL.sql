﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9082W_TBL.sql
-- 物理名：ED9082W_TBL
-- 論理名：社員マスタＩＦファイルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9082W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9082W_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SHAIN_NO  VARCHAR2(8) NOT NULL --「社員番号」
	,KOYO_RECORD_NO  NUMBER(3,0) DEFAULT '0' NOT NULL --「雇用レコード番号」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,IDO_RIYU_KBN  CHAR(3) NOT NULL --「異動理由区分」
	,NYUSHA_YMD  DATE --「入社年月日」
	,TAISHOKU_YMD  DATE --「退職年月日」
	,SHAIN_NM  VARCHAR2(60) --「社員氏名」
	,SHAINSEI_NM  VARCHAR2(30) --「社員姓氏名」
	,SHAIMMEI_NM  VARCHAR2(30) --「社員名氏名」
	,SHAIN_HKN_NM  VARCHAR2(90) --「社員半角カナ氏名」
	,SOSHIKI_CD  VARCHAR2(6) --「組織コード」
	,YAKUSHOKU_CD  VARCHAR2(4) --「役職コード」
	,MIBUN_CD  VARCHAR2(3) --「身分コード」
	,SHOKUMU_CD  VARCHAR2(4) --「職務コード」
	,SEIBETSU_KBN  CHAR(1) NOT NULL --「性別区分」
	,SHAIN_SAIYO_KBN  CHAR(3) --「社員採用区分」
	,RECORD_SOSA_KBN  CHAR(1) NOT NULL --「レコード操作区分」
	,SHOKUSHU_CD  VARCHAR2(4) --「職種コード」
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
	,CONSTRAINT ED9082W_PK PRIMARY KEY(
	 SHAIN_NO
	,  KOYO_RECORD_NO
	,  KAISHA_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9082W_TBL IS '社員マスタＩＦファイルワーク'
/

COMMENT ON COLUMN ED9082W_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED9082W_TBL.SHAIN_NO IS '社員番号'
/
COMMENT ON COLUMN ED9082W_TBL.KOYO_RECORD_NO IS '雇用レコード番号'
/
COMMENT ON COLUMN ED9082W_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED9082W_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED9082W_TBL.IDO_RIYU_KBN IS '異動理由区分'
/
COMMENT ON COLUMN ED9082W_TBL.NYUSHA_YMD IS '入社年月日'
/
COMMENT ON COLUMN ED9082W_TBL.TAISHOKU_YMD IS '退職年月日'
/
COMMENT ON COLUMN ED9082W_TBL.SHAIN_NM IS '社員氏名'
/
COMMENT ON COLUMN ED9082W_TBL.SHAINSEI_NM IS '社員姓氏名'
/
COMMENT ON COLUMN ED9082W_TBL.SHAIMMEI_NM IS '社員名氏名'
/
COMMENT ON COLUMN ED9082W_TBL.SHAIN_HKN_NM IS '社員半角カナ氏名'
/
COMMENT ON COLUMN ED9082W_TBL.SOSHIKI_CD IS '組織コード'
/
COMMENT ON COLUMN ED9082W_TBL.YAKUSHOKU_CD IS '役職コード'
/
COMMENT ON COLUMN ED9082W_TBL.MIBUN_CD IS '身分コード'
/
COMMENT ON COLUMN ED9082W_TBL.SHOKUMU_CD IS '職務コード'
/
COMMENT ON COLUMN ED9082W_TBL.SEIBETSU_KBN IS '性別区分'
/
COMMENT ON COLUMN ED9082W_TBL.SHAIN_SAIYO_KBN IS '社員採用区分'
/
COMMENT ON COLUMN ED9082W_TBL.RECORD_SOSA_KBN IS 'レコード操作区分'
/
COMMENT ON COLUMN ED9082W_TBL.SHOKUSHU_CD IS '職種コード'
/
COMMENT ON COLUMN ED9082W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9082W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9082W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9082W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9082W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9082W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9082W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9082W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9082W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9082W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9082W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9082W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
