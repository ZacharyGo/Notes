﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9179W_TBL.sql
-- 物理名：ED9179W_TBL
-- 論理名：名寄付替処理用受注変更ワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9179W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9179W_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,NAYOSE_TSUKEKAE_SN  CHAR(14) NOT NULL --「名寄付替連番」
	,ANKEN_NO  CHAR(13) --「案件番号」
	,ANKEN_TAISHOSAKI_SN  CHAR(7) --「案件対象先連番」
	,SEKISAN_NO  CHAR(17) --「積算番号」
	,JUCHU_KEIYAKU_NO  CHAR(15) --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) --「受注契約変更番号」
	,JUCHU_KEIYAKU_NO_HEAD_NO  CHAR(9) --「受注契約番号上９桁番号」
	,JUCHU_STATUS_KBN  CHAR(2) --「受注ステータス区分」
	,KEIYAKU_ID  CHAR(18) --「契約ＩＤ」
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
	,CONSTRAINT ED9179W_PK PRIMARY KEY(
	 NAYOSE_TSUKEKAE_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9179W_TBL IS '名寄付替処理用受注変更ワーク'
/

COMMENT ON COLUMN ED9179W_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED9179W_TBL.NAYOSE_TSUKEKAE_SN IS '名寄付替連番'
/
COMMENT ON COLUMN ED9179W_TBL.ANKEN_NO IS '案件番号'
/
COMMENT ON COLUMN ED9179W_TBL.ANKEN_TAISHOSAKI_SN IS '案件対象先連番'
/
COMMENT ON COLUMN ED9179W_TBL.SEKISAN_NO IS '積算番号'
/
COMMENT ON COLUMN ED9179W_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED9179W_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED9179W_TBL.JUCHU_KEIYAKU_NO_HEAD_NO IS '受注契約番号上９桁番号'
/
COMMENT ON COLUMN ED9179W_TBL.JUCHU_STATUS_KBN IS '受注ステータス区分'
/
COMMENT ON COLUMN ED9179W_TBL.KEIYAKU_ID IS '契約ＩＤ'
/
COMMENT ON COLUMN ED9179W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9179W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9179W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9179W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9179W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9179W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9179W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9179W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9179W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9179W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9179W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9179W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/