﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0672T_TBL.sql
-- 物理名：ED0672T_TBL
-- 論理名：運用自動機テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0672T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0672T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) NOT NULL --「受注契約変更番号」
	,UNYO_HENKO_RIREKI_NO  CHAR(10) NOT NULL --「運用変更履歴番号」
	,UNYO_JIDOKI_SN  CHAR(14) NOT NULL --「運用自動機連番」
	,JIDOKI_SHUBETSU_CD  CHAR(2) --「自動機種別コード」
	,SONOTA_JIDOKI_SHUBETSU_NM  VARCHAR2(100) --「その他自動機種別名称」
	,JIDOKI_MAKER_CD  CHAR(2) --「自動機メーカコード」
	,SONOTA_JIDOKI_MAKER_NM  VARCHAR2(100) --「その他自動機メーカ名称」
	,JIDOKI_KISHU_NM  VARCHAR2(30) --「自動機機種名称」
	,JIDOKI_DAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「自動機台数」
	,UNYO_JOHO_GAMEN_KBN  CHAR(3) NOT NULL --「運用情報画面区分」
	,UNY_JDK_MISI_HYJ_ICH_KBN  CHAR(1) NOT NULL --「運用自動機明細表示位置区分」
	,ATM_NO  VARCHAR2(4) --「ＡＴＭ番号」
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
	,CONSTRAINT ED0672T_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  JUCHU_KEIYAKU_HENKO_NO
	,  KAISHA_CD
	,  UNYO_HENKO_RIREKI_NO
	,  UNYO_JIDOKI_SN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0672T_TBL IS '運用自動機テーブル'
/

COMMENT ON COLUMN ED0672T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0672T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED0672T_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED0672T_TBL.UNYO_HENKO_RIREKI_NO IS '運用変更履歴番号'
/
COMMENT ON COLUMN ED0672T_TBL.UNYO_JIDOKI_SN IS '運用自動機連番'
/
COMMENT ON COLUMN ED0672T_TBL.JIDOKI_SHUBETSU_CD IS '自動機種別コード'
/
COMMENT ON COLUMN ED0672T_TBL.SONOTA_JIDOKI_SHUBETSU_NM IS 'その他自動機種別名称'
/
COMMENT ON COLUMN ED0672T_TBL.JIDOKI_MAKER_CD IS '自動機メーカコード'
/
COMMENT ON COLUMN ED0672T_TBL.SONOTA_JIDOKI_MAKER_NM IS 'その他自動機メーカ名称'
/
COMMENT ON COLUMN ED0672T_TBL.JIDOKI_KISHU_NM IS '自動機機種名称'
/
COMMENT ON COLUMN ED0672T_TBL.JIDOKI_DAISU IS '自動機台数'
/
COMMENT ON COLUMN ED0672T_TBL.UNYO_JOHO_GAMEN_KBN IS '運用情報画面区分'
/
COMMENT ON COLUMN ED0672T_TBL.UNY_JDK_MISI_HYJ_ICH_KBN IS '運用自動機明細表示位置区分'
/
COMMENT ON COLUMN ED0672T_TBL.ATM_NO IS 'ＡＴＭ番号'
/
COMMENT ON COLUMN ED0672T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0672T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0672T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0672T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0672T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0672T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0672T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0672T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0672T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0672T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0672T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0672T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
