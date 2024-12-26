﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0513T_TBL.sql
-- 物理名：ED0513T_TBL
-- 論理名：契約監視項目テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0513T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0513T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KEIYAKU_ID  CHAR(18) NOT NULL --「契約ＩＤ」
	,OMONA_KANSHI_KOMOKU_KBN  CHAR(1) NOT NULL --「主な監視項目区分」
	,KANSHI_KOMOKU_SHUBETSU_CD  CHAR(3) NOT NULL --「監視項目種別コード」
	,KANSHI_HOHO_KBN  CHAR(1) NOT NULL --「監視方法区分」
	,KANSHI_JIKAN_KBN  CHAR(2) NOT NULL --「監視時間区分」
	,KANSHI_KASHOSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「監視箇所数」
	,KANSHI_KOMOKU_BIKO  VARCHAR2(60) --「監視項目備考」
	,KANSHI_KOMOKU_NAIYO_KBN  CHAR(1) NOT NULL --「監視項目内容区分」
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
	,CONSTRAINT ED0513T_PK PRIMARY KEY(
	 KEIYAKU_ID
	,  OMONA_KANSHI_KOMOKU_KBN
	,  KANSHI_KOMOKU_SHUBETSU_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0513T_TBL IS '契約監視項目テーブル'
/

COMMENT ON COLUMN ED0513T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0513T_TBL.KEIYAKU_ID IS '契約ＩＤ'
/
COMMENT ON COLUMN ED0513T_TBL.OMONA_KANSHI_KOMOKU_KBN IS '主な監視項目区分'
/
COMMENT ON COLUMN ED0513T_TBL.KANSHI_KOMOKU_SHUBETSU_CD IS '監視項目種別コード'
/
COMMENT ON COLUMN ED0513T_TBL.KANSHI_HOHO_KBN IS '監視方法区分'
/
COMMENT ON COLUMN ED0513T_TBL.KANSHI_JIKAN_KBN IS '監視時間区分'
/
COMMENT ON COLUMN ED0513T_TBL.KANSHI_KASHOSU IS '監視箇所数'
/
COMMENT ON COLUMN ED0513T_TBL.KANSHI_KOMOKU_BIKO IS '監視項目備考'
/
COMMENT ON COLUMN ED0513T_TBL.KANSHI_KOMOKU_NAIYO_KBN IS '監視項目内容区分'
/
COMMENT ON COLUMN ED0513T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0513T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0513T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0513T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0513T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0513T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0513T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0513T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0513T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0513T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0513T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0513T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
