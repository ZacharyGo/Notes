﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0580T_TBL.sql
-- 物理名：ED0580T_TBL
-- 論理名：受注業務委託見積テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0580T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0580T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) NOT NULL --「受注契約変更番号」
	,GYOMU_ITAKU_MITSUMORI_SN  CHAR(3) NOT NULL --「業務委託見積連番」
	,UNYO_KBN  CHAR(1) NOT NULL --「運用区分」
	,GYM_ITKSK_TRHKSK_CD  CHAR(9) --「業務委託先取引先コード」
	,GYOMU_ITAKUSAKI_MITSUMORI_NO  CHAR(15) --「業務委託先見積番号」
	,JCH_CHK_GYM_ITK_EIGY_KEISU  NUMBER(12,3) DEFAULT '0' NOT NULL --「常駐長期業務委託営業係数」
	,GYOMU_ITAKU_MITSUMORI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「業務委託見積金額」
	,GYM_ITKSK_TRHKSK_BSH_CD  CHAR(4) --「業務委託先取引先部署コード」
	,JOCHU_KEIBI_JOKEN_1_JIKAN  NUMBER(9,0) DEFAULT '0' NOT NULL --「常駐警備条件１時間」
	,HAICHI_POST_NM  VARCHAR2(30) --「配置ポスト名称」
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
	,CONSTRAINT ED0580T_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  JUCHU_KEIYAKU_HENKO_NO
	,  KAISHA_CD
	,  GYOMU_ITAKU_MITSUMORI_SN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0580T_TBL IS '受注業務委託見積テーブル'
/

COMMENT ON COLUMN ED0580T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0580T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED0580T_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED0580T_TBL.GYOMU_ITAKU_MITSUMORI_SN IS '業務委託見積連番'
/
COMMENT ON COLUMN ED0580T_TBL.UNYO_KBN IS '運用区分'
/
COMMENT ON COLUMN ED0580T_TBL.GYM_ITKSK_TRHKSK_CD IS '業務委託先取引先コード'
/
COMMENT ON COLUMN ED0580T_TBL.GYOMU_ITAKUSAKI_MITSUMORI_NO IS '業務委託先見積番号'
/
COMMENT ON COLUMN ED0580T_TBL.JCH_CHK_GYM_ITK_EIGY_KEISU IS '常駐長期業務委託営業係数'
/
COMMENT ON COLUMN ED0580T_TBL.GYOMU_ITAKU_MITSUMORI_AMT IS '業務委託見積金額'
/
COMMENT ON COLUMN ED0580T_TBL.GYM_ITKSK_TRHKSK_BSH_CD IS '業務委託先取引先部署コード'
/
COMMENT ON COLUMN ED0580T_TBL.JOCHU_KEIBI_JOKEN_1_JIKAN IS '常駐警備条件１時間'
/
COMMENT ON COLUMN ED0580T_TBL.HAICHI_POST_NM IS '配置ポスト名称'
/
COMMENT ON COLUMN ED0580T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0580T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0580T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0580T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0580T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0580T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0580T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0580T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0580T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0580T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0580T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0580T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
