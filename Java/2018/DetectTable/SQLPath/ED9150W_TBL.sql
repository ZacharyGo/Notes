﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9150W_TBL.sql
-- 物理名：ED9150W_TBL
-- 論理名：個社別取引先マスタ検索結果ＣＳＶファイルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9150W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9150W_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,TORIHIKISAKI_CD  CHAR(9) NOT NULL --「取引先コード」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,KANKEI_KAISHA_KBN  CHAR(1) NOT NULL --「関係会社区分」
	,SHOHIZEI_HASU_SHORI_KBN  CHAR(1) NOT NULL --「消費税端数処理区分」
	,SHOHIZEI_SANSHUTSU_KBN  CHAR(1) NOT NULL --「消費税算出区分」
	,SHOHIZEI_KBN  CHAR(1) NOT NULL --「消費税区分」
	,TANKA_RANK_KBN  CHAR(1) NOT NULL --「単価ランク区分」
	,BAISHO_SEKININ_HOKEN_GENDO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「賠償責任保険限度金額」
	,KEIBI_GYOMU_1_GO_KEIBI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「警備業務１号警備フラグ」
	,KEIBI_GYOMU_2_GO_KEIBI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「警備業務２号警備フラグ」
	,KEIBI_GYOMU_3_GO_KEIBI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「警備業務３号警備フラグ」
	,KEIBI_GYOMU_4_GO_KEIBI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「警備業務４号警備フラグ」
	,TRHKSK_SHRI_GIT_FLG_1  CHAR(1) DEFAULT '0' NOT NULL --「取引先種類該当フラグ１」
	,TRHKSK_SHRI_GIT_FLG_2  CHAR(1) DEFAULT '0' NOT NULL --「取引先種類該当フラグ２」
	,TRHKSK_SHRI_GIT_FLG_3  CHAR(1) DEFAULT '0' NOT NULL --「取引先種類該当フラグ３」
	,TRHKSK_SHRI_GIT_FLG_4  CHAR(1) DEFAULT '0' NOT NULL --「取引先種類該当フラグ４」
	,TRHKSK_SHRI_GIT_FLG_5  CHAR(1) DEFAULT '0' NOT NULL --「取引先種類該当フラグ５」
	,TRHKSK_SHRI_GIT_FLG_6  CHAR(1) DEFAULT '0' NOT NULL --「取引先種類該当フラグ６」
	,TRHKSK_SHRI_GIT_FLG_7  CHAR(1) DEFAULT '0' NOT NULL --「取引先種類該当フラグ７」
	,TRHKSK_SHRI_GIT_FLG_8  CHAR(1) DEFAULT '0' NOT NULL --「取引先種類該当フラグ８」
	,TRHKSK_SHRI_GIT_FLG_9  CHAR(1) DEFAULT '0' NOT NULL --「取引先種類該当フラグ９」
	,TRHKSK_SHRI_GIT_FLG_10  CHAR(1) DEFAULT '0' NOT NULL --「取引先種類該当フラグ１０」
	,TRHKSK_SHRI_GIT_FLG_11  CHAR(1) DEFAULT '0' NOT NULL --「取引先種類該当フラグ１１」
	,TRHKSK_SHRI_GIT_FLG_12  CHAR(1) DEFAULT '0' NOT NULL --「取引先種類該当フラグ１２」
	,TRHKSK_SHRI_GIT_FLG_13  CHAR(1) DEFAULT '0' NOT NULL --「取引先種類該当フラグ１３」
	,TRHKSK_SHRI_GIT_FLG_14  CHAR(1) DEFAULT '0' NOT NULL --「取引先種類該当フラグ１４」
	,TRHKSK_SHRI_GIT_FLG_15  CHAR(1) DEFAULT '0' NOT NULL --「取引先種類該当フラグ１５」
	,TRHKSK_SHRI_GIT_FLG_16  CHAR(1) DEFAULT '0' NOT NULL --「取引先種類該当フラグ１６」
	,TRHKSK_SHRI_GIT_FLG_17  CHAR(1) DEFAULT '0' NOT NULL --「取引先種類該当フラグ１７」
	,TRHKSK_SHRI_GIT_FLG_18  CHAR(1) DEFAULT '0' NOT NULL --「取引先種類該当フラグ１８」
	,TRHKSK_SHRI_GIT_FLG_19  CHAR(1) DEFAULT '0' NOT NULL --「取引先種類該当フラグ１９」
	,TRHKSK_SHRI_GIT_FLG_20  CHAR(1) DEFAULT '0' NOT NULL --「取引先種類該当フラグ２０」
	,RECORD_SOSA_KBN  CHAR(1) NOT NULL --「レコード操作区分」
	,IKKATSU_TORIKOMIYO_TS  TIMESTAMP --「一括取込用タイムスタンプ」
	,IKKATSU_TORIKOMIYO_KAISHA_CD  CHAR(5) --「一括取込用会社コード」
	,IKKATSU_TORIKOMIYO_SOSHIKI_CD  VARCHAR2(6) --「一括取込用組織コード」
	,IKKATSU_TORIKOMIYO_SHAIN_NO  VARCHAR2(8) --「一括取込用社員番号」
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
	,CONSTRAINT ED9150W_PK PRIMARY KEY(
	 TORIHIKISAKI_CD
	,  KAISHA_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9150W_TBL IS '個社別取引先マスタ検索結果ＣＳＶファイルワーク'
/

COMMENT ON COLUMN ED9150W_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED9150W_TBL.TORIHIKISAKI_CD IS '取引先コード'
/
COMMENT ON COLUMN ED9150W_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED9150W_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED9150W_TBL.KANKEI_KAISHA_KBN IS '関係会社区分'
/
COMMENT ON COLUMN ED9150W_TBL.SHOHIZEI_HASU_SHORI_KBN IS '消費税端数処理区分'
/
COMMENT ON COLUMN ED9150W_TBL.SHOHIZEI_SANSHUTSU_KBN IS '消費税算出区分'
/
COMMENT ON COLUMN ED9150W_TBL.SHOHIZEI_KBN IS '消費税区分'
/
COMMENT ON COLUMN ED9150W_TBL.TANKA_RANK_KBN IS '単価ランク区分'
/
COMMENT ON COLUMN ED9150W_TBL.BAISHO_SEKININ_HOKEN_GENDO_AMT IS '賠償責任保険限度金額'
/
COMMENT ON COLUMN ED9150W_TBL.KEIBI_GYOMU_1_GO_KEIBI_FLG IS '警備業務１号警備フラグ'
/
COMMENT ON COLUMN ED9150W_TBL.KEIBI_GYOMU_2_GO_KEIBI_FLG IS '警備業務２号警備フラグ'
/
COMMENT ON COLUMN ED9150W_TBL.KEIBI_GYOMU_3_GO_KEIBI_FLG IS '警備業務３号警備フラグ'
/
COMMENT ON COLUMN ED9150W_TBL.KEIBI_GYOMU_4_GO_KEIBI_FLG IS '警備業務４号警備フラグ'
/
COMMENT ON COLUMN ED9150W_TBL.TRHKSK_SHRI_GIT_FLG_1 IS '取引先種類該当フラグ１'
/
COMMENT ON COLUMN ED9150W_TBL.TRHKSK_SHRI_GIT_FLG_2 IS '取引先種類該当フラグ２'
/
COMMENT ON COLUMN ED9150W_TBL.TRHKSK_SHRI_GIT_FLG_3 IS '取引先種類該当フラグ３'
/
COMMENT ON COLUMN ED9150W_TBL.TRHKSK_SHRI_GIT_FLG_4 IS '取引先種類該当フラグ４'
/
COMMENT ON COLUMN ED9150W_TBL.TRHKSK_SHRI_GIT_FLG_5 IS '取引先種類該当フラグ５'
/
COMMENT ON COLUMN ED9150W_TBL.TRHKSK_SHRI_GIT_FLG_6 IS '取引先種類該当フラグ６'
/
COMMENT ON COLUMN ED9150W_TBL.TRHKSK_SHRI_GIT_FLG_7 IS '取引先種類該当フラグ７'
/
COMMENT ON COLUMN ED9150W_TBL.TRHKSK_SHRI_GIT_FLG_8 IS '取引先種類該当フラグ８'
/
COMMENT ON COLUMN ED9150W_TBL.TRHKSK_SHRI_GIT_FLG_9 IS '取引先種類該当フラグ９'
/
COMMENT ON COLUMN ED9150W_TBL.TRHKSK_SHRI_GIT_FLG_10 IS '取引先種類該当フラグ１０'
/
COMMENT ON COLUMN ED9150W_TBL.TRHKSK_SHRI_GIT_FLG_11 IS '取引先種類該当フラグ１１'
/
COMMENT ON COLUMN ED9150W_TBL.TRHKSK_SHRI_GIT_FLG_12 IS '取引先種類該当フラグ１２'
/
COMMENT ON COLUMN ED9150W_TBL.TRHKSK_SHRI_GIT_FLG_13 IS '取引先種類該当フラグ１３'
/
COMMENT ON COLUMN ED9150W_TBL.TRHKSK_SHRI_GIT_FLG_14 IS '取引先種類該当フラグ１４'
/
COMMENT ON COLUMN ED9150W_TBL.TRHKSK_SHRI_GIT_FLG_15 IS '取引先種類該当フラグ１５'
/
COMMENT ON COLUMN ED9150W_TBL.TRHKSK_SHRI_GIT_FLG_16 IS '取引先種類該当フラグ１６'
/
COMMENT ON COLUMN ED9150W_TBL.TRHKSK_SHRI_GIT_FLG_17 IS '取引先種類該当フラグ１７'
/
COMMENT ON COLUMN ED9150W_TBL.TRHKSK_SHRI_GIT_FLG_18 IS '取引先種類該当フラグ１８'
/
COMMENT ON COLUMN ED9150W_TBL.TRHKSK_SHRI_GIT_FLG_19 IS '取引先種類該当フラグ１９'
/
COMMENT ON COLUMN ED9150W_TBL.TRHKSK_SHRI_GIT_FLG_20 IS '取引先種類該当フラグ２０'
/
COMMENT ON COLUMN ED9150W_TBL.RECORD_SOSA_KBN IS 'レコード操作区分'
/
COMMENT ON COLUMN ED9150W_TBL.IKKATSU_TORIKOMIYO_TS IS '一括取込用タイムスタンプ'
/
COMMENT ON COLUMN ED9150W_TBL.IKKATSU_TORIKOMIYO_KAISHA_CD IS '一括取込用会社コード'
/
COMMENT ON COLUMN ED9150W_TBL.IKKATSU_TORIKOMIYO_SOSHIKI_CD IS '一括取込用組織コード'
/
COMMENT ON COLUMN ED9150W_TBL.IKKATSU_TORIKOMIYO_SHAIN_NO IS '一括取込用社員番号'
/
COMMENT ON COLUMN ED9150W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9150W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9150W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9150W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9150W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9150W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9150W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9150W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9150W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9150W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9150W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9150W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
