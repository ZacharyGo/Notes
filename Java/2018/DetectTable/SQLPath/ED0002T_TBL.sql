﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0002T_TBL.sql
-- 物理名：ED0002T_TBL
-- 論理名：案件お客様問合テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0002T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0002T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,ANKEN_NO  CHAR(13) NOT NULL --「案件番号」
	,OKYKSM_TIAWS_KJN_HJN_KBN  CHAR(1) NOT NULL --「お客様問合個人法人区分」
	,OKYKSM_TIAWS_GTSJ_CHECK_KBN  CHAR(1) --「お客様問合月次チェック区分」
	,OKYKSM_TIAWS_UKTSK_NO  VARCHAR2(17) --「お客様問合受付番号」
	,OKYAKUSAMA_TOIAWASE_STATUS_NM  VARCHAR2(30) --「お客様問合ステータス名称」
	,OKYKSM_TIAWS_SISH_KSHN_TS  TIMESTAMP --「お客様問合最終更新タイムスタンプ」
	,OKYKSM_TIAWS_SISH_KSHNSH_NM  VARCHAR2(60) --「お客様問合最終更新者氏名」
	,OKYAKUSAMA_TOIAWASE_KEIRO_NM  VARCHAR2(30) --「お客様問合経路名称」
	,OKYKSM_TIAWS_UKTSK_TS  TIMESTAMP --「お客様問合受付タイムスタンプ」
	,OKYKSM_TIAWS_KB_SHHN_NM  VARCHAR2(300) --「お客様問合希望商品名称」
	,OKYAKUSAMA_TOIAWASE_SHOHIN_NM  VARCHAR2(300) --「お客様問合商品名称」
	,OKYKSM_TIAWS_TRHKSK_NM  VARCHAR2(200) --「お客様問合取引先名称」
	,OKYKSM_TIAWS_TRHKSK_KN_NM  VARCHAR2(200) --「お客様問合取引先カナ名称」
	,OKYAKUSAMA_TOIAWASE_GYOSHU_NM  VARCHAR2(200) --「お客様問合業種名称」
	,OKYKSM_TIAWS_HISH_TRHK_NAIYO  VARCHAR2(200) --「お客様問合弊社取引内容」
	,OKYAKUSAMA_TOIAWASE_BUSHO_NM  VARCHAR2(200) --「お客様問合部署名称」
	,OKYKSM_TIAWS_YKSHK_NM  VARCHAR2(200) --「お客様問合役職名称」
	,OKYAKUSAMA_TOIAWASE_NM  VARCHAR2(255) --「お客様問合氏名」
	,OKYAKUSAMA_TOIAWASE_KN_NM  VARCHAR2(255) --「お客様問合カナ氏名」
	,OKYAKUSAMA_TOIAWASE_YUBIN_NO  CHAR(8) --「お客様問合郵便番号」
	,OKYKSM_TIAWS_TDFKN_NM  VARCHAR2(10) --「お客様問合都道府県名称」
	,OKYKSM_TIAWS_SHKCHSN_NM  VARCHAR2(255) --「お客様問合市区町村名称」
	,OKYKSM_TIAWS_TTMN_NM  VARCHAR2(255) --「お客様問合建物名称」
	,OKYAKUSAMA_TOIAWASE_DENWA_NO  VARCHAR2(20) --「お客様問合電話番号」
	,OKYAKUSAMA_TOIAWASE_FAX_NO  VARCHAR2(20) --「お客様問合ＦＡＸ番号」
	,OKYKSM_TIAWS_MAIL_ADDRESS  VARCHAR2(255) --「お客様問合メールアドレス」
	,OKYKSM_TIAWS_SHKGY_NM  VARCHAR2(100) --「お客様問合職業名称」
	,OKYKSM_TIAWS_TSH_CONTACT_NAIYO  VARCHAR2(100) --「お客様問合当社コンタクト内容」
	,OKYKSM_TIAWS_IKN_YB_NAIYO  VARCHAR2(1000) --「お客様問合意見要望内容」
	,OKYKSM_TIAWS_HMN_MTSMR_NAIYO  VARCHAR2(100) --「お客様問合訪問見積り内容」
	,OKYKSM_TIAWS_HS_KNT_JTK_NAIYO  VARCHAR2(100) --「お客様問合ＨＳ検討住宅内容」
	,OKYKSM_TIAWS_T_SITE_KIK_NAIYO  VARCHAR2(255) --「お客様問合当サイト契機内容」
	,OKKSM_TIAWS_T_SITE_KKSNT_NAIYO  VARCHAR2(255) --「お客様問合当サイト契機その他内容」
	,OKKSM_TIAWS_SR_SIK_SNK_NAIYO  VARCHAR2(255) --「お客様問合資料請求参考内容」
	,OKKSM_TIAWS_SRSK_SKSNT_NAIYO  VARCHAR2(255) --「お客様問合資料請求参考その他内容」
	,OKKSM_TIAWS_MLMAGA_HISHN_NAIYO  VARCHAR2(100) --「お客様問合メールマガジン配信内容」
	,OKYKSM_TIAWS_SHR_JKY_NAIYO  VARCHAR2(100) --「お客様問合処理状況内容」
	,OKYAKUSAMA_TOIAWASE_BIKO  VARCHAR2(1000) --「お客様問合備考」
	,OKYKSM_TIAWS_AFFILIATE_ID  VARCHAR2(100) --「お客様問合アフィリエイトＩＤ」
	,OKKSM_TAJGS_NRR_TNT_JGYSH_NM  VARCHAR2(255) --「お客様問合事業所入力欄担当事業所名称」
	,OKKSM_TAJGS_NRR_TNT_EIGYIN_NM  VARCHAR2(255) --「お客様問合事業所入力欄担当営業員氏名」
	,OKKSM_TAJGS_NRR_SHKI_RNRK_YMD  DATE --「お客様問合事業所入力欄初回連絡年月日」
	,OKKSM_TAJGS_NRR_SIYK_SHTCH_YMD  DATE --「お客様問合事業所入力欄成約失注年月日」
	,OKKSM_TAJGS_NRR_KIYK_SHHN_NM  VARCHAR2(300) --「お客様問合事業所入力欄契約商品名称」
	,OKKSM_TAJGS_NRR_KEIYAKU_NO  VARCHAR2(32) --「お客様問合事業所入力欄契約番号」
	,OKKSM_TAJGS_NRR_KYOGO_NM  VARCHAR2(255) --「お客様問合事業所入力欄競合名称」
	,OKKSM_TAJGS_NRR_BIKO  VARCHAR2(1000) --「お客様問合事業所入力欄備考」
	,OKKSM_TASKB_NRR_SHRY_SF_YMD  DATE --「お客様問合主管部入力欄資料送付年月日」
	,OKKSM_TASKB_NRR_BIKO  VARCHAR2(1000) --「お客様問合主管部入力欄備考」
	,OKYKSM_TIAWS_TIKI_KISH_NM  VARCHAR2(200) --「お客様問合提携会社名称」
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
	,CONSTRAINT ED0002T_PK PRIMARY KEY(
	 ANKEN_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0002T_TBL IS '案件お客様問合テーブル'
/

COMMENT ON COLUMN ED0002T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0002T_TBL.ANKEN_NO IS '案件番号'
/
COMMENT ON COLUMN ED0002T_TBL.OKYKSM_TIAWS_KJN_HJN_KBN IS 'お客様問合個人法人区分'
/
COMMENT ON COLUMN ED0002T_TBL.OKYKSM_TIAWS_GTSJ_CHECK_KBN IS 'お客様問合月次チェック区分'
/
COMMENT ON COLUMN ED0002T_TBL.OKYKSM_TIAWS_UKTSK_NO IS 'お客様問合受付番号'
/
COMMENT ON COLUMN ED0002T_TBL.OKYAKUSAMA_TOIAWASE_STATUS_NM IS 'お客様問合ステータス名称'
/
COMMENT ON COLUMN ED0002T_TBL.OKYKSM_TIAWS_SISH_KSHN_TS IS 'お客様問合最終更新タイムスタンプ'
/
COMMENT ON COLUMN ED0002T_TBL.OKYKSM_TIAWS_SISH_KSHNSH_NM IS 'お客様問合最終更新者氏名'
/
COMMENT ON COLUMN ED0002T_TBL.OKYAKUSAMA_TOIAWASE_KEIRO_NM IS 'お客様問合経路名称'
/
COMMENT ON COLUMN ED0002T_TBL.OKYKSM_TIAWS_UKTSK_TS IS 'お客様問合受付タイムスタンプ'
/
COMMENT ON COLUMN ED0002T_TBL.OKYKSM_TIAWS_KB_SHHN_NM IS 'お客様問合希望商品名称'
/
COMMENT ON COLUMN ED0002T_TBL.OKYAKUSAMA_TOIAWASE_SHOHIN_NM IS 'お客様問合商品名称'
/
COMMENT ON COLUMN ED0002T_TBL.OKYKSM_TIAWS_TRHKSK_NM IS 'お客様問合取引先名称'
/
COMMENT ON COLUMN ED0002T_TBL.OKYKSM_TIAWS_TRHKSK_KN_NM IS 'お客様問合取引先カナ名称'
/
COMMENT ON COLUMN ED0002T_TBL.OKYAKUSAMA_TOIAWASE_GYOSHU_NM IS 'お客様問合業種名称'
/
COMMENT ON COLUMN ED0002T_TBL.OKYKSM_TIAWS_HISH_TRHK_NAIYO IS 'お客様問合弊社取引内容'
/
COMMENT ON COLUMN ED0002T_TBL.OKYAKUSAMA_TOIAWASE_BUSHO_NM IS 'お客様問合部署名称'
/
COMMENT ON COLUMN ED0002T_TBL.OKYKSM_TIAWS_YKSHK_NM IS 'お客様問合役職名称'
/
COMMENT ON COLUMN ED0002T_TBL.OKYAKUSAMA_TOIAWASE_NM IS 'お客様問合氏名'
/
COMMENT ON COLUMN ED0002T_TBL.OKYAKUSAMA_TOIAWASE_KN_NM IS 'お客様問合カナ氏名'
/
COMMENT ON COLUMN ED0002T_TBL.OKYAKUSAMA_TOIAWASE_YUBIN_NO IS 'お客様問合郵便番号'
/
COMMENT ON COLUMN ED0002T_TBL.OKYKSM_TIAWS_TDFKN_NM IS 'お客様問合都道府県名称'
/
COMMENT ON COLUMN ED0002T_TBL.OKYKSM_TIAWS_SHKCHSN_NM IS 'お客様問合市区町村名称'
/
COMMENT ON COLUMN ED0002T_TBL.OKYKSM_TIAWS_TTMN_NM IS 'お客様問合建物名称'
/
COMMENT ON COLUMN ED0002T_TBL.OKYAKUSAMA_TOIAWASE_DENWA_NO IS 'お客様問合電話番号'
/
COMMENT ON COLUMN ED0002T_TBL.OKYAKUSAMA_TOIAWASE_FAX_NO IS 'お客様問合ＦＡＸ番号'
/
COMMENT ON COLUMN ED0002T_TBL.OKYKSM_TIAWS_MAIL_ADDRESS IS 'お客様問合メールアドレス'
/
COMMENT ON COLUMN ED0002T_TBL.OKYKSM_TIAWS_SHKGY_NM IS 'お客様問合職業名称'
/
COMMENT ON COLUMN ED0002T_TBL.OKYKSM_TIAWS_TSH_CONTACT_NAIYO IS 'お客様問合当社コンタクト内容'
/
COMMENT ON COLUMN ED0002T_TBL.OKYKSM_TIAWS_IKN_YB_NAIYO IS 'お客様問合意見要望内容'
/
COMMENT ON COLUMN ED0002T_TBL.OKYKSM_TIAWS_HMN_MTSMR_NAIYO IS 'お客様問合訪問見積り内容'
/
COMMENT ON COLUMN ED0002T_TBL.OKYKSM_TIAWS_HS_KNT_JTK_NAIYO IS 'お客様問合ＨＳ検討住宅内容'
/
COMMENT ON COLUMN ED0002T_TBL.OKYKSM_TIAWS_T_SITE_KIK_NAIYO IS 'お客様問合当サイト契機内容'
/
COMMENT ON COLUMN ED0002T_TBL.OKKSM_TIAWS_T_SITE_KKSNT_NAIYO IS 'お客様問合当サイト契機その他内容'
/
COMMENT ON COLUMN ED0002T_TBL.OKKSM_TIAWS_SR_SIK_SNK_NAIYO IS 'お客様問合資料請求参考内容'
/
COMMENT ON COLUMN ED0002T_TBL.OKKSM_TIAWS_SRSK_SKSNT_NAIYO IS 'お客様問合資料請求参考その他内容'
/
COMMENT ON COLUMN ED0002T_TBL.OKKSM_TIAWS_MLMAGA_HISHN_NAIYO IS 'お客様問合メールマガジン配信内容'
/
COMMENT ON COLUMN ED0002T_TBL.OKYKSM_TIAWS_SHR_JKY_NAIYO IS 'お客様問合処理状況内容'
/
COMMENT ON COLUMN ED0002T_TBL.OKYAKUSAMA_TOIAWASE_BIKO IS 'お客様問合備考'
/
COMMENT ON COLUMN ED0002T_TBL.OKYKSM_TIAWS_AFFILIATE_ID IS 'お客様問合アフィリエイトＩＤ'
/
COMMENT ON COLUMN ED0002T_TBL.OKKSM_TAJGS_NRR_TNT_JGYSH_NM IS 'お客様問合事業所入力欄担当事業所名称'
/
COMMENT ON COLUMN ED0002T_TBL.OKKSM_TAJGS_NRR_TNT_EIGYIN_NM IS 'お客様問合事業所入力欄担当営業員氏名'
/
COMMENT ON COLUMN ED0002T_TBL.OKKSM_TAJGS_NRR_SHKI_RNRK_YMD IS 'お客様問合事業所入力欄初回連絡年月日'
/
COMMENT ON COLUMN ED0002T_TBL.OKKSM_TAJGS_NRR_SIYK_SHTCH_YMD IS 'お客様問合事業所入力欄成約失注年月日'
/
COMMENT ON COLUMN ED0002T_TBL.OKKSM_TAJGS_NRR_KIYK_SHHN_NM IS 'お客様問合事業所入力欄契約商品名称'
/
COMMENT ON COLUMN ED0002T_TBL.OKKSM_TAJGS_NRR_KEIYAKU_NO IS 'お客様問合事業所入力欄契約番号'
/
COMMENT ON COLUMN ED0002T_TBL.OKKSM_TAJGS_NRR_KYOGO_NM IS 'お客様問合事業所入力欄競合名称'
/
COMMENT ON COLUMN ED0002T_TBL.OKKSM_TAJGS_NRR_BIKO IS 'お客様問合事業所入力欄備考'
/
COMMENT ON COLUMN ED0002T_TBL.OKKSM_TASKB_NRR_SHRY_SF_YMD IS 'お客様問合主管部入力欄資料送付年月日'
/
COMMENT ON COLUMN ED0002T_TBL.OKKSM_TASKB_NRR_BIKO IS 'お客様問合主管部入力欄備考'
/
COMMENT ON COLUMN ED0002T_TBL.OKYKSM_TIAWS_TIKI_KISH_NM IS 'お客様問合提携会社名称'
/
COMMENT ON COLUMN ED0002T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0002T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0002T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0002T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0002T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0002T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0002T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0002T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0002T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0002T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0002T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0002T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
