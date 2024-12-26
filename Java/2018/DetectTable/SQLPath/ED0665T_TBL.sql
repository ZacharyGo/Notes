﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0665T_TBL.sql
-- 物理名：ED0665T_TBL
-- 論理名：契約電話応対業務テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0665T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0665T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KEIYAKU_ID  CHAR(18) NOT NULL --「契約ＩＤ」
	,DENWA_OTAI_HOSHIKI_KBN  CHAR(1) NOT NULL --「電話応対方式区分」
	,DENWA_OTAI_ANKENSU_KBN  CHAR(1) NOT NULL --「電話応対案件数区分」
	,DENWA_OTAI_ANKEN_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「電話応対案件件数」
	,DNW_OTI_TIRY_ANKN_TNK_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「電話応対大量案件単価金額」
	,DNW_OTI_CHK_ANKN_TNK_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「電話応対超過案件単価金額」
	,DENWA_OTAI_UKETSUKE_KOSHO_KBN  CHAR(1) NOT NULL --「電話応対受付呼称区分」
	,DENWA_OTAI_SENYO_KOSHO_NM  VARCHAR2(100) --「電話応対専用呼称名称」
	,DENWA_OTAI_HEARING_GYOMU_KBN  CHAR(1) NOT NULL --「電話応対ヒヤリング業務区分」
	,KINKYU_RENRAKUSAKI_NINZU  NUMBER(9,0) DEFAULT '0' NOT NULL --「緊急連絡先人数」
	,JOJI_RENRAKU_FLG  CHAR(1) DEFAULT '0' NOT NULL --「常時連絡フラグ」
	,JIKO_HASSEIJI_RENRAKU_FLG  CHAR(1) DEFAULT '0' NOT NULL --「事故発生時連絡フラグ」
	,SNT_KNKY_RNRK_HNDN_KJNAR_FLG  CHAR(1) DEFAULT '0' NOT NULL --「その他緊急連絡判断基準有フラグ」
	,SNT_KNKY_RNRK_HNDN_KJN_NAIYO  VARCHAR2(100) --「その他緊急連絡判断基準内容」
	,WEB_KENGEN_FUYO_NINZU  NUMBER(9,0) DEFAULT '0' NOT NULL --「Ｗｅｂ権限付与人数」
	,FAX_HOKOKUYO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「ＦＡＸ報告要フラグ」
	,DENWA_JUSHIN_HOSHIKI_KBN  CHAR(1) NOT NULL --「電話受信方式区分」
	,DNW_OTI_UNY_JMB_ANKNS_KBN  CHAR(1) NOT NULL --「電話応対運用準備案件数区分」
	,DNW_OTI_UNY_JMB_ANKN_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「電話応対運用準備案件件数」
	,DNW_OTI_UNY_JMB_TIRY_ANKN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「電話応対運用準備大量案件金額」
	,CTI_KOJI_ANKEN_KAZU_KBN  CHAR(1) NOT NULL --「ＣＴＩ工事案件数区分」
	,CTI_KOJIAN_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「ＣＴＩ工事案件数」
	,CTI_KOJI_TAIRYO_ANKEN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「ＣＴＩ工事大量案件金額」
	,TISHSK_BKKN_DATA_TRK_KBN  CHAR(1) NOT NULL --「対象先物件データ登録区分」
	,TISHSK_BKKN_DATA_TRK_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「対象先物件データ登録金額」
	,GYOMU_ITAKU_HEIJITSU_KAISHI_TM  CHAR(4) --「業務委託平日開始時刻」
	,GYOMU_ITAKU_HEIJITSU_SHURYO_TM  CHAR(4) --「業務委託平日終了時刻」
	,GYOMU_ITAKU_HEIJITSU_BIKO  VARCHAR2(100) --「業務委託平日備考」
	,GYOMU_ITAKU_TEIKYUBI_KAISHI_TM  CHAR(4) --「業務委託定休日開始時刻」
	,GYOMU_ITAKU_TEIKYUBI_SHURYO_TM  CHAR(4) --「業務委託定休日終了時刻」
	,GYOMU_ITAKU_TEIKYUBI_BIKO  VARCHAR2(100) --「業務委託定休日備考」
	,GYOMU_ITAKU_SONOTA_1_KAISHI_TM  CHAR(4) --「業務委託その他１開始時刻」
	,GYOMU_ITAKU_SONOTA_1_SHURYO_TM  CHAR(4) --「業務委託その他１終了時刻」
	,GYOMU_ITAKU_SONOTA_1_BIKO  VARCHAR2(100) --「業務委託その他１備考」
	,GYOMU_ITAKU_SONOTA_2_KAISHI_TM  CHAR(4) --「業務委託その他２開始時刻」
	,GYOMU_ITAKU_SONOTA_2_SHURYO_TM  CHAR(4) --「業務委託その他２終了時刻」
	,GYOMU_ITAKU_SONOTA_2_BIKO  VARCHAR2(100) --「業務委託その他２備考」
	,GYM_ITK_GOLDEN_WEEK_KISH_TM  CHAR(4) --「業務委託ゴールデンウィーク開始時刻」
	,GYM_ITK_GOLDEN_WEEK_SHRY_TM  CHAR(4) --「業務委託ゴールデンウィーク終了時刻」
	,GYOMU_ITAKU_GOLDEN_WEEK_BIKO  VARCHAR2(100) --「業務委託ゴールデンウィーク備考」
	,GYOMU_ITAKU_OBON_KAISHI_TM  CHAR(4) --「業務委託お盆開始時刻」
	,GYOMU_ITAKU_OBON_SHURYO_TM  CHAR(4) --「業務委託お盆終了時刻」
	,GYOMU_ITAKU_OBON_BIKO  VARCHAR2(100) --「業務委託お盆備考」
	,GYM_ITK_NMMTS_NNSH_KISH_TM  CHAR(4) --「業務委託年末年始開始時刻」
	,GYM_ITK_NMMTS_NNSH_SHRY_TM  CHAR(4) --「業務委託年末年始終了時刻」
	,GYM_ITK_NMMTS_NNSH_BIKO  VARCHAR2(100) --「業務委託年末年始備考」
	,GETSUYO_TEIKYUBI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「月曜定休日フラグ」
	,KAYO_TEIKYUBI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「火曜定休日フラグ」
	,SUIYO_TEIKYUBI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「水曜定休日フラグ」
	,MOKUYO_TEIKYUBI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「木曜定休日フラグ」
	,KINYO_TEIKYUBI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「金曜定休日フラグ」
	,DOYO_TEIKYUBI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「土曜定休日フラグ」
	,NICHIYO_TEIKYUBI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「日曜定休日フラグ」
	,SHUYO_DENWA_AITESAKI_NM  VARCHAR2(60) --「主要電話相手先名称」
	,DENWA_SHUYO_NAIYO  VARCHAR2(100) --「電話主要内容」
	,TENWAOTAI_GM_FAX_HKK_KASHOSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「電話応答業務ＦＡＸ報告箇所数」
	,SYUKUSAI_TEIKYUBI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「祝祭定休日フラグ」
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
	,CONSTRAINT ED0665T_PK PRIMARY KEY(
	 KEIYAKU_ID
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0665T_TBL IS '契約電話応対業務テーブル'
/

COMMENT ON COLUMN ED0665T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0665T_TBL.KEIYAKU_ID IS '契約ＩＤ'
/
COMMENT ON COLUMN ED0665T_TBL.DENWA_OTAI_HOSHIKI_KBN IS '電話応対方式区分'
/
COMMENT ON COLUMN ED0665T_TBL.DENWA_OTAI_ANKENSU_KBN IS '電話応対案件数区分'
/
COMMENT ON COLUMN ED0665T_TBL.DENWA_OTAI_ANKEN_KENSU IS '電話応対案件件数'
/
COMMENT ON COLUMN ED0665T_TBL.DNW_OTI_TIRY_ANKN_TNK_AMT IS '電話応対大量案件単価金額'
/
COMMENT ON COLUMN ED0665T_TBL.DNW_OTI_CHK_ANKN_TNK_AMT IS '電話応対超過案件単価金額'
/
COMMENT ON COLUMN ED0665T_TBL.DENWA_OTAI_UKETSUKE_KOSHO_KBN IS '電話応対受付呼称区分'
/
COMMENT ON COLUMN ED0665T_TBL.DENWA_OTAI_SENYO_KOSHO_NM IS '電話応対専用呼称名称'
/
COMMENT ON COLUMN ED0665T_TBL.DENWA_OTAI_HEARING_GYOMU_KBN IS '電話応対ヒヤリング業務区分'
/
COMMENT ON COLUMN ED0665T_TBL.KINKYU_RENRAKUSAKI_NINZU IS '緊急連絡先人数'
/
COMMENT ON COLUMN ED0665T_TBL.JOJI_RENRAKU_FLG IS '常時連絡フラグ'
/
COMMENT ON COLUMN ED0665T_TBL.JIKO_HASSEIJI_RENRAKU_FLG IS '事故発生時連絡フラグ'
/
COMMENT ON COLUMN ED0665T_TBL.SNT_KNKY_RNRK_HNDN_KJNAR_FLG IS 'その他緊急連絡判断基準有フラグ'
/
COMMENT ON COLUMN ED0665T_TBL.SNT_KNKY_RNRK_HNDN_KJN_NAIYO IS 'その他緊急連絡判断基準内容'
/
COMMENT ON COLUMN ED0665T_TBL.WEB_KENGEN_FUYO_NINZU IS 'Ｗｅｂ権限付与人数'
/
COMMENT ON COLUMN ED0665T_TBL.FAX_HOKOKUYO_FLG IS 'ＦＡＸ報告要フラグ'
/
COMMENT ON COLUMN ED0665T_TBL.DENWA_JUSHIN_HOSHIKI_KBN IS '電話受信方式区分'
/
COMMENT ON COLUMN ED0665T_TBL.DNW_OTI_UNY_JMB_ANKNS_KBN IS '電話応対運用準備案件数区分'
/
COMMENT ON COLUMN ED0665T_TBL.DNW_OTI_UNY_JMB_ANKN_KENSU IS '電話応対運用準備案件件数'
/
COMMENT ON COLUMN ED0665T_TBL.DNW_OTI_UNY_JMB_TIRY_ANKN_AMT IS '電話応対運用準備大量案件金額'
/
COMMENT ON COLUMN ED0665T_TBL.CTI_KOJI_ANKEN_KAZU_KBN IS 'ＣＴＩ工事案件数区分'
/
COMMENT ON COLUMN ED0665T_TBL.CTI_KOJIAN_KENSU IS 'ＣＴＩ工事案件数'
/
COMMENT ON COLUMN ED0665T_TBL.CTI_KOJI_TAIRYO_ANKEN_AMT IS 'ＣＴＩ工事大量案件金額'
/
COMMENT ON COLUMN ED0665T_TBL.TISHSK_BKKN_DATA_TRK_KBN IS '対象先物件データ登録区分'
/
COMMENT ON COLUMN ED0665T_TBL.TISHSK_BKKN_DATA_TRK_AMT IS '対象先物件データ登録金額'
/
COMMENT ON COLUMN ED0665T_TBL.GYOMU_ITAKU_HEIJITSU_KAISHI_TM IS '業務委託平日開始時刻'
/
COMMENT ON COLUMN ED0665T_TBL.GYOMU_ITAKU_HEIJITSU_SHURYO_TM IS '業務委託平日終了時刻'
/
COMMENT ON COLUMN ED0665T_TBL.GYOMU_ITAKU_HEIJITSU_BIKO IS '業務委託平日備考'
/
COMMENT ON COLUMN ED0665T_TBL.GYOMU_ITAKU_TEIKYUBI_KAISHI_TM IS '業務委託定休日開始時刻'
/
COMMENT ON COLUMN ED0665T_TBL.GYOMU_ITAKU_TEIKYUBI_SHURYO_TM IS '業務委託定休日終了時刻'
/
COMMENT ON COLUMN ED0665T_TBL.GYOMU_ITAKU_TEIKYUBI_BIKO IS '業務委託定休日備考'
/
COMMENT ON COLUMN ED0665T_TBL.GYOMU_ITAKU_SONOTA_1_KAISHI_TM IS '業務委託その他１開始時刻'
/
COMMENT ON COLUMN ED0665T_TBL.GYOMU_ITAKU_SONOTA_1_SHURYO_TM IS '業務委託その他１終了時刻'
/
COMMENT ON COLUMN ED0665T_TBL.GYOMU_ITAKU_SONOTA_1_BIKO IS '業務委託その他１備考'
/
COMMENT ON COLUMN ED0665T_TBL.GYOMU_ITAKU_SONOTA_2_KAISHI_TM IS '業務委託その他２開始時刻'
/
COMMENT ON COLUMN ED0665T_TBL.GYOMU_ITAKU_SONOTA_2_SHURYO_TM IS '業務委託その他２終了時刻'
/
COMMENT ON COLUMN ED0665T_TBL.GYOMU_ITAKU_SONOTA_2_BIKO IS '業務委託その他２備考'
/
COMMENT ON COLUMN ED0665T_TBL.GYM_ITK_GOLDEN_WEEK_KISH_TM IS '業務委託ゴールデンウィーク開始時刻'
/
COMMENT ON COLUMN ED0665T_TBL.GYM_ITK_GOLDEN_WEEK_SHRY_TM IS '業務委託ゴールデンウィーク終了時刻'
/
COMMENT ON COLUMN ED0665T_TBL.GYOMU_ITAKU_GOLDEN_WEEK_BIKO IS '業務委託ゴールデンウィーク備考'
/
COMMENT ON COLUMN ED0665T_TBL.GYOMU_ITAKU_OBON_KAISHI_TM IS '業務委託お盆開始時刻'
/
COMMENT ON COLUMN ED0665T_TBL.GYOMU_ITAKU_OBON_SHURYO_TM IS '業務委託お盆終了時刻'
/
COMMENT ON COLUMN ED0665T_TBL.GYOMU_ITAKU_OBON_BIKO IS '業務委託お盆備考'
/
COMMENT ON COLUMN ED0665T_TBL.GYM_ITK_NMMTS_NNSH_KISH_TM IS '業務委託年末年始開始時刻'
/
COMMENT ON COLUMN ED0665T_TBL.GYM_ITK_NMMTS_NNSH_SHRY_TM IS '業務委託年末年始終了時刻'
/
COMMENT ON COLUMN ED0665T_TBL.GYM_ITK_NMMTS_NNSH_BIKO IS '業務委託年末年始備考'
/
COMMENT ON COLUMN ED0665T_TBL.GETSUYO_TEIKYUBI_FLG IS '月曜定休日フラグ'
/
COMMENT ON COLUMN ED0665T_TBL.KAYO_TEIKYUBI_FLG IS '火曜定休日フラグ'
/
COMMENT ON COLUMN ED0665T_TBL.SUIYO_TEIKYUBI_FLG IS '水曜定休日フラグ'
/
COMMENT ON COLUMN ED0665T_TBL.MOKUYO_TEIKYUBI_FLG IS '木曜定休日フラグ'
/
COMMENT ON COLUMN ED0665T_TBL.KINYO_TEIKYUBI_FLG IS '金曜定休日フラグ'
/
COMMENT ON COLUMN ED0665T_TBL.DOYO_TEIKYUBI_FLG IS '土曜定休日フラグ'
/
COMMENT ON COLUMN ED0665T_TBL.NICHIYO_TEIKYUBI_FLG IS '日曜定休日フラグ'
/
COMMENT ON COLUMN ED0665T_TBL.SHUYO_DENWA_AITESAKI_NM IS '主要電話相手先名称'
/
COMMENT ON COLUMN ED0665T_TBL.DENWA_SHUYO_NAIYO IS '電話主要内容'
/
COMMENT ON COLUMN ED0665T_TBL.TENWAOTAI_GM_FAX_HKK_KASHOSU IS '電話応答業務ＦＡＸ報告箇所数'
/
COMMENT ON COLUMN ED0665T_TBL.SYUKUSAI_TEIKYUBI_FLG IS '祝祭定休日フラグ'
/
COMMENT ON COLUMN ED0665T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0665T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0665T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0665T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0665T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0665T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0665T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0665T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0665T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0665T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0665T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0665T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
