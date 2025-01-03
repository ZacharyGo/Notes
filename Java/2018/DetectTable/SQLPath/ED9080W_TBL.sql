﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9080W_TBL.sql
-- 物理名：ED9080W_TBL
-- 論理名：組織マスタＩＦファイルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9080W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9080W_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SOSHIKI_CD  VARCHAR2(6) NOT NULL --「組織コード」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,SOSHIKI_NM  VARCHAR2(200) --「組織名称」
	,SOSHIKI_RNM  VARCHAR2(200) --「組織略称」
	,JOI_SOSHIKI_CD  VARCHAR2(6) --「上位組織コード」
	,SHISHABU_SOSHIKI_CD  VARCHAR2(6) --「支社部組織コード」
	,KTH_HIFMT_TIS_HNS_BMN_SSK_FLG  CHAR(1) DEFAULT '0' NOT NULL --「共通費配賦元対象本社部門組織フラグ」
	,KTH_HIFSK_TIS_ZNS_SEGMENT_FLG  CHAR(1) DEFAULT '0' NOT NULL --「共通費配賦先対象全社セグメントフラグ」
	,KNKY_KIHTS_BMN_SSHK_KBN  CHAR(1) NOT NULL --「研究開発部門組織区分」
	,HIYO_FUTAN_BUMON_SOSHIKI_CD  VARCHAR2(6) --「費用負担部門組織コード」
	,KIH_ICHJ_SHNN_BMN_SSHK_CD  VARCHAR2(6) --「経費一次承認部門組織コード」
	,SHISHA_SOSHIKI_CD  VARCHAR2(6) --「支社組織コード」
	,CHIIKI_HOMBU_SOSHIKI_CD  VARCHAR2(6) --「地域本部組織コード」
	,JIGYO_HOMBU_SANSHOKA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「事業本部参照可フラグ」
	,ZENSHA_SANSHOKA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「全社参照可フラグ」
	,BUMON_CD  CHAR(8) --「部門コード」
	,KIR_KNR_SHSHB_SSHK_CD  VARCHAR2(6) --「経理管理支社部組織コード」
	,SOSHIKI_RANK_NO  NUMBER(2,0) DEFAULT '0' NOT NULL --「組織ランク番号」
	,RANK_01_SOSHIKI_CD  VARCHAR2(6) --「ランク０１組織コード」
	,RANK_02_SOSHIKI_CD  VARCHAR2(6) --「ランク０２組織コード」
	,RANK_03_SOSHIKI_CD  VARCHAR2(6) --「ランク０３組織コード」
	,RANK_04_SOSHIKI_CD  VARCHAR2(6) --「ランク０４組織コード」
	,RANK_05_SOSHIKI_CD  VARCHAR2(6) --「ランク０５組織コード」
	,RANK_06_SOSHIKI_CD  VARCHAR2(6) --「ランク０６組織コード」
	,RANK_07_SOSHIKI_CD  VARCHAR2(6) --「ランク０７組織コード」
	,RANK_08_SOSHIKI_CD  VARCHAR2(6) --「ランク０８組織コード」
	,RANK_09_SOSHIKI_CD  VARCHAR2(6) --「ランク０９組織コード」
	,RANK_10_SOSHIKI_CD  VARCHAR2(6) --「ランク１０組織コード」
	,RANK_11_SOSHIKI_CD  VARCHAR2(6) --「ランク１１組織コード」
	,RANK_12_SOSHIKI_CD  VARCHAR2(6) --「ランク１２組織コード」
	,RANK_13_SOSHIKI_CD  VARCHAR2(6) --「ランク１３組織コード」
	,RANK_14_SOSHIKI_CD  VARCHAR2(6) --「ランク１４組織コード」
	,RANK_15_SOSHIKI_CD  VARCHAR2(6) --「ランク１５組織コード」
	,RANK_16_SOSHIKI_CD  VARCHAR2(6) --「ランク１６組織コード」
	,RANK_17_SOSHIKI_CD  VARCHAR2(6) --「ランク１７組織コード」
	,RANK_18_SOSHIKI_CD  VARCHAR2(6) --「ランク１８組織コード」
	,RANK_19_SOSHIKI_CD  VARCHAR2(6) --「ランク１９組織コード」
	,RANK_20_SOSHIKI_CD  VARCHAR2(6) --「ランク２０組織コード」
	,RANK_01_SOSHIKI_NM  VARCHAR2(200) --「ランク０１組織名称」
	,RANK_02_SOSHIKI_NM  VARCHAR2(200) --「ランク０２組織名称」
	,RANK_03_SOSHIKI_NM  VARCHAR2(200) --「ランク０３組織名称」
	,RANK_04_SOSHIKI_NM  VARCHAR2(200) --「ランク０４組織名称」
	,RANK_05_SOSHIKI_NM  VARCHAR2(200) --「ランク０５組織名称」
	,RANK_06_SOSHIKI_NM  VARCHAR2(200) --「ランク０６組織名称」
	,RANK_07_SOSHIKI_NM  VARCHAR2(200) --「ランク０７組織名称」
	,RANK_08_SOSHIKI_NM  VARCHAR2(200) --「ランク０８組織名称」
	,RANK_09_SOSHIKI_NM  VARCHAR2(200) --「ランク０９組織名称」
	,RANK_10_SOSHIKI_NM  VARCHAR2(200) --「ランク１０組織名称」
	,RANK_11_SOSHIKI_NM  VARCHAR2(200) --「ランク１１組織名称」
	,RANK_12_SOSHIKI_NM  VARCHAR2(200) --「ランク１２組織名称」
	,RANK_13_SOSHIKI_NM  VARCHAR2(200) --「ランク１３組織名称」
	,RANK_14_SOSHIKI_NM  VARCHAR2(200) --「ランク１４組織名称」
	,RANK_15_SOSHIKI_NM  VARCHAR2(200) --「ランク１５組織名称」
	,RANK_16_SOSHIKI_NM  VARCHAR2(200) --「ランク１６組織名称」
	,RANK_17_SOSHIKI_NM  VARCHAR2(200) --「ランク１７組織名称」
	,RANK_18_SOSHIKI_NM  VARCHAR2(200) --「ランク１８組織名称」
	,RANK_19_SOSHIKI_NM  VARCHAR2(200) --「ランク１９組織名称」
	,RANK_20_SOSHIKI_NM  VARCHAR2(200) --「ランク２０組織名称」
	,BUMON_RANK_NO  NUMBER(2,0) DEFAULT '0' NOT NULL --「部門ランク番号」
	,RANK_01_BUMON_CD  CHAR(8) --「ランク０１部門コード」
	,RANK_02_BUMON_CD  CHAR(8) --「ランク０２部門コード」
	,RANK_03_BUMON_CD  CHAR(8) --「ランク０３部門コード」
	,RANK_04_BUMON_CD  CHAR(8) --「ランク０４部門コード」
	,RANK_05_BUMON_CD  CHAR(8) --「ランク０５部門コード」
	,RANK_06_BUMON_CD  CHAR(8) --「ランク０６部門コード」
	,RANK_07_BUMON_CD  CHAR(8) --「ランク０７部門コード」
	,RANK_08_BUMON_CD  CHAR(8) --「ランク０８部門コード」
	,RANK_09_BUMON_CD  CHAR(8) --「ランク０９部門コード」
	,RANK_10_BUMON_CD  CHAR(8) --「ランク１０部門コード」
	,RANK_11_BUMON_CD  CHAR(8) --「ランク１１部門コード」
	,RANK_12_BUMON_CD  CHAR(8) --「ランク１２部門コード」
	,RANK_13_BUMON_CD  CHAR(8) --「ランク１３部門コード」
	,RANK_14_BUMON_CD  CHAR(8) --「ランク１４部門コード」
	,RANK_15_BUMON_CD  CHAR(8) --「ランク１５部門コード」
	,RANK_16_BUMON_CD  CHAR(8) --「ランク１６部門コード」
	,RANK_17_BUMON_CD  CHAR(8) --「ランク１７部門コード」
	,RANK_18_BUMON_CD  CHAR(8) --「ランク１８部門コード」
	,RANK_19_BUMON_CD  CHAR(8) --「ランク１９部門コード」
	,RANK_20_BUMON_CD  CHAR(8) --「ランク２０部門コード」
	,RANK_01_BUMON_NM  VARCHAR2(200) --「ランク０１部門名称」
	,RANK_02_BUMON_NM  VARCHAR2(200) --「ランク０２部門名称」
	,RANK_03_BUMON_NM  VARCHAR2(200) --「ランク０３部門名称」
	,RANK_04_BUMON_NM  VARCHAR2(200) --「ランク０４部門名称」
	,RANK_05_BUMON_NM  VARCHAR2(200) --「ランク０５部門名称」
	,RANK_06_BUMON_NM  VARCHAR2(200) --「ランク０６部門名称」
	,RANK_07_BUMON_NM  VARCHAR2(200) --「ランク０７部門名称」
	,RANK_08_BUMON_NM  VARCHAR2(200) --「ランク０８部門名称」
	,RANK_09_BUMON_NM  VARCHAR2(200) --「ランク０９部門名称」
	,RANK_10_BUMON_NM  VARCHAR2(200) --「ランク１０部門名称」
	,RANK_11_BUMON_NM  VARCHAR2(200) --「ランク１１部門名称」
	,RANK_12_BUMON_NM  VARCHAR2(200) --「ランク１２部門名称」
	,RANK_13_BUMON_NM  VARCHAR2(200) --「ランク１３部門名称」
	,RANK_14_BUMON_NM  VARCHAR2(200) --「ランク１４部門名称」
	,RANK_15_BUMON_NM  VARCHAR2(200) --「ランク１５部門名称」
	,RANK_16_BUMON_NM  VARCHAR2(200) --「ランク１６部門名称」
	,RANK_17_BUMON_NM  VARCHAR2(200) --「ランク１７部門名称」
	,RANK_18_BUMON_NM  VARCHAR2(200) --「ランク１８部門名称」
	,RANK_19_BUMON_NM  VARCHAR2(200) --「ランク１９部門名称」
	,RANK_20_BUMON_NM  VARCHAR2(200) --「ランク２０部門名称」
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
	,CONSTRAINT ED9080W_PK PRIMARY KEY(
	 SOSHIKI_CD
	,  KAISHA_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9080W_TBL IS '組織マスタＩＦファイルワーク'
/

COMMENT ON COLUMN ED9080W_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED9080W_TBL.SOSHIKI_CD IS '組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED9080W_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED9080W_TBL.SOSHIKI_NM IS '組織名称'
/
COMMENT ON COLUMN ED9080W_TBL.SOSHIKI_RNM IS '組織略称'
/
COMMENT ON COLUMN ED9080W_TBL.JOI_SOSHIKI_CD IS '上位組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.SHISHABU_SOSHIKI_CD IS '支社部組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.KTH_HIFMT_TIS_HNS_BMN_SSK_FLG IS '共通費配賦元対象本社部門組織フラグ'
/
COMMENT ON COLUMN ED9080W_TBL.KTH_HIFSK_TIS_ZNS_SEGMENT_FLG IS '共通費配賦先対象全社セグメントフラグ'
/
COMMENT ON COLUMN ED9080W_TBL.KNKY_KIHTS_BMN_SSHK_KBN IS '研究開発部門組織区分'
/
COMMENT ON COLUMN ED9080W_TBL.HIYO_FUTAN_BUMON_SOSHIKI_CD IS '費用負担部門組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.KIH_ICHJ_SHNN_BMN_SSHK_CD IS '経費一次承認部門組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.SHISHA_SOSHIKI_CD IS '支社組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.CHIIKI_HOMBU_SOSHIKI_CD IS '地域本部組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.JIGYO_HOMBU_SANSHOKA_FLG IS '事業本部参照可フラグ'
/
COMMENT ON COLUMN ED9080W_TBL.ZENSHA_SANSHOKA_FLG IS '全社参照可フラグ'
/
COMMENT ON COLUMN ED9080W_TBL.BUMON_CD IS '部門コード'
/
COMMENT ON COLUMN ED9080W_TBL.KIR_KNR_SHSHB_SSHK_CD IS '経理管理支社部組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.SOSHIKI_RANK_NO IS '組織ランク番号'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_01_SOSHIKI_CD IS 'ランク０１組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_02_SOSHIKI_CD IS 'ランク０２組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_03_SOSHIKI_CD IS 'ランク０３組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_04_SOSHIKI_CD IS 'ランク０４組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_05_SOSHIKI_CD IS 'ランク０５組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_06_SOSHIKI_CD IS 'ランク０６組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_07_SOSHIKI_CD IS 'ランク０７組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_08_SOSHIKI_CD IS 'ランク０８組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_09_SOSHIKI_CD IS 'ランク０９組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_10_SOSHIKI_CD IS 'ランク１０組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_11_SOSHIKI_CD IS 'ランク１１組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_12_SOSHIKI_CD IS 'ランク１２組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_13_SOSHIKI_CD IS 'ランク１３組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_14_SOSHIKI_CD IS 'ランク１４組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_15_SOSHIKI_CD IS 'ランク１５組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_16_SOSHIKI_CD IS 'ランク１６組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_17_SOSHIKI_CD IS 'ランク１７組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_18_SOSHIKI_CD IS 'ランク１８組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_19_SOSHIKI_CD IS 'ランク１９組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_20_SOSHIKI_CD IS 'ランク２０組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_01_SOSHIKI_NM IS 'ランク０１組織名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_02_SOSHIKI_NM IS 'ランク０２組織名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_03_SOSHIKI_NM IS 'ランク０３組織名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_04_SOSHIKI_NM IS 'ランク０４組織名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_05_SOSHIKI_NM IS 'ランク０５組織名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_06_SOSHIKI_NM IS 'ランク０６組織名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_07_SOSHIKI_NM IS 'ランク０７組織名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_08_SOSHIKI_NM IS 'ランク０８組織名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_09_SOSHIKI_NM IS 'ランク０９組織名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_10_SOSHIKI_NM IS 'ランク１０組織名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_11_SOSHIKI_NM IS 'ランク１１組織名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_12_SOSHIKI_NM IS 'ランク１２組織名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_13_SOSHIKI_NM IS 'ランク１３組織名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_14_SOSHIKI_NM IS 'ランク１４組織名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_15_SOSHIKI_NM IS 'ランク１５組織名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_16_SOSHIKI_NM IS 'ランク１６組織名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_17_SOSHIKI_NM IS 'ランク１７組織名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_18_SOSHIKI_NM IS 'ランク１８組織名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_19_SOSHIKI_NM IS 'ランク１９組織名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_20_SOSHIKI_NM IS 'ランク２０組織名称'
/
COMMENT ON COLUMN ED9080W_TBL.BUMON_RANK_NO IS '部門ランク番号'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_01_BUMON_CD IS 'ランク０１部門コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_02_BUMON_CD IS 'ランク０２部門コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_03_BUMON_CD IS 'ランク０３部門コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_04_BUMON_CD IS 'ランク０４部門コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_05_BUMON_CD IS 'ランク０５部門コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_06_BUMON_CD IS 'ランク０６部門コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_07_BUMON_CD IS 'ランク０７部門コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_08_BUMON_CD IS 'ランク０８部門コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_09_BUMON_CD IS 'ランク０９部門コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_10_BUMON_CD IS 'ランク１０部門コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_11_BUMON_CD IS 'ランク１１部門コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_12_BUMON_CD IS 'ランク１２部門コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_13_BUMON_CD IS 'ランク１３部門コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_14_BUMON_CD IS 'ランク１４部門コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_15_BUMON_CD IS 'ランク１５部門コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_16_BUMON_CD IS 'ランク１６部門コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_17_BUMON_CD IS 'ランク１７部門コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_18_BUMON_CD IS 'ランク１８部門コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_19_BUMON_CD IS 'ランク１９部門コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_20_BUMON_CD IS 'ランク２０部門コード'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_01_BUMON_NM IS 'ランク０１部門名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_02_BUMON_NM IS 'ランク０２部門名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_03_BUMON_NM IS 'ランク０３部門名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_04_BUMON_NM IS 'ランク０４部門名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_05_BUMON_NM IS 'ランク０５部門名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_06_BUMON_NM IS 'ランク０６部門名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_07_BUMON_NM IS 'ランク０７部門名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_08_BUMON_NM IS 'ランク０８部門名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_09_BUMON_NM IS 'ランク０９部門名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_10_BUMON_NM IS 'ランク１０部門名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_11_BUMON_NM IS 'ランク１１部門名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_12_BUMON_NM IS 'ランク１２部門名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_13_BUMON_NM IS 'ランク１３部門名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_14_BUMON_NM IS 'ランク１４部門名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_15_BUMON_NM IS 'ランク１５部門名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_16_BUMON_NM IS 'ランク１６部門名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_17_BUMON_NM IS 'ランク１７部門名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_18_BUMON_NM IS 'ランク１８部門名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_19_BUMON_NM IS 'ランク１９部門名称'
/
COMMENT ON COLUMN ED9080W_TBL.RANK_20_BUMON_NM IS 'ランク２０部門名称'
/
COMMENT ON COLUMN ED9080W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9080W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9080W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9080W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9080W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9080W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9080W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9080W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9080W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9080W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9080W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
