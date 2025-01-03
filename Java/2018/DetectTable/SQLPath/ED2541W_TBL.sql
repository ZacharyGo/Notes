﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED2541W_TBL.sql
-- 物理名：ED2541W_TBL
-- 論理名：次月綜合管理予定ワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED2541W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED2541W_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) NOT NULL --「受注契約変更番号」
	,UNYO_HENKO_RIREKI_NO  CHAR(10) NOT NULL --「運用変更履歴番号」
	,SKSN_KNR_KOMOKU_DIKMK_CD  CHAR(10) --「積算管理項目大項目コード」
	,SKSN_KNR_KOMOKU_CHKMK_CD  CHAR(10) --「積算管理項目中項目コード」
	,SKSN_KNR_KOMOKU_SHKMK_NAIYO  VARCHAR2(100) --「積算管理項目小項目内容」
	,KIYK_KITI_KBN  CHAR(1) NOT NULL --「契約形態区分」
	,SOKAN_BOSAI_SHUKI_TANI_KBN  CHAR(2) NOT NULL --「綜管防災周期単位区分」
	,KANRI_KOMOKU_KAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「管理項目回数」
	,SEIKYU_HOHO_KBN  CHAR(1) NOT NULL --「請求方法区分」
	,TEISHUTSU_CYCLE_KBN  CHAR(1) NOT NULL --「提出サイクル区分」
	,SHKI_GYSI_TISHTS_YTI_YM  CHAR(6) --「初回行政提出予定年月」
	,HTI_SHRI_GYSI_TISHTS_YTI_YM  CHAR(6) --「法定書類行政提出予定年月」
	,JKI_HTI_SRI_GSI_TIST_YTI_YM  CHAR(6) --「次回法定書類行政提出予定年月」
	,ZNKI_HTI_SHRI_GYSI_TISHTS_YMD  DATE --「前回法定書類行政提出年月日」
	,TEISHUTSU_CYCLE_Y  CHAR(4) --「提出サイクル年」
	,TEISHUTSU_CYCLE_M  CHAR(2) --「提出サイクル月」
	,HOKOKUSHO_TEISHUTSUSAKI_KBN  CHAR(1) NOT NULL --「報告書提出先区分」
	,HOKOKUSHO_TEISHUTSU_BUSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「報告書提出部数」
	,HOKOKUSHO_TEISHUTSU_HOHO_KBN  CHAR(1) NOT NULL --「報告書提出方法区分」
	,JISSHI_JIKANTAI_KBN  CHAR(2) NOT NULL --「実施時間帯区分」
	,JISSHI_JIKANTAI_KAISHI_TM  CHAR(4) --「実施時間帯開始時刻」
	,JISSHI_JIKANTAI_SHURYO_TM  CHAR(4) --「実施時間帯終了時刻」
	,JISSHI_SHITEI_1_M_FLG  CHAR(1) DEFAULT '0' NOT NULL --「実施指定１月フラグ」
	,JISSHI_SHITEI_2_M_FLG  CHAR(1) DEFAULT '0' NOT NULL --「実施指定２月フラグ」
	,JISSHI_SHITEI_3_M_FLG  CHAR(1) DEFAULT '0' NOT NULL --「実施指定３月フラグ」
	,JISSHI_SHITEI_4_M_FLG  CHAR(1) DEFAULT '0' NOT NULL --「実施指定４月フラグ」
	,JISSHI_SHITEI_5_M_FLG  CHAR(1) DEFAULT '0' NOT NULL --「実施指定５月フラグ」
	,JISSHI_SHITEI_6_M_FLG  CHAR(1) DEFAULT '0' NOT NULL --「実施指定６月フラグ」
	,JISSHI_SHITEI_7_M_FLG  CHAR(1) DEFAULT '0' NOT NULL --「実施指定７月フラグ」
	,JISSHI_SHITEI_8_M_FLG  CHAR(1) DEFAULT '0' NOT NULL --「実施指定８月フラグ」
	,JISSHI_SHITEI_9_M_FLG  CHAR(1) DEFAULT '0' NOT NULL --「実施指定９月フラグ」
	,JISSHI_SHITEI_10_M_FLG  CHAR(1) DEFAULT '0' NOT NULL --「実施指定１０月フラグ」
	,JISSHI_SHITEI_11_M_FLG  CHAR(1) DEFAULT '0' NOT NULL --「実施指定１１月フラグ」
	,JISSHI_SHITEI_12_M_FLG  CHAR(1) DEFAULT '0' NOT NULL --「実施指定１２月フラグ」
	,ZENKAI_JISSHI_YMD  DATE --「前回実施年月日」
	,JIKAI_JISSHI_YOTEI_YM  CHAR(6) --「次回実施予定年月」
	,NTTI_RNRK_JSSH_BSH_KBN  CHAR(1) NOT NULL --「日程連絡実施部署区分」
	,YTI_JSSK_NYRYK_BSH_KBN  CHAR(1) NOT NULL --「予定実績入力部署区分」
	,GYM_ITKSK_TRHKSK_CD  CHAR(9) --「業務委託先取引先コード」
	,GYM_ITKSK_TRHKSK_BSH_CD  CHAR(4) --「業務委託先取引先部署コード」
	,GYOMU_ITAKU_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「業務委託料金金額」
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
	,CONSTRAINT ED2541W_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  JUCHU_KEIYAKU_HENKO_NO
	,  UNYO_HENKO_RIREKI_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED2541W_TBL IS '次月綜合管理予定ワーク'
/

COMMENT ON COLUMN ED2541W_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED2541W_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED2541W_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED2541W_TBL.UNYO_HENKO_RIREKI_NO IS '運用変更履歴番号'
/
COMMENT ON COLUMN ED2541W_TBL.SKSN_KNR_KOMOKU_DIKMK_CD IS '積算管理項目大項目コード'
/
COMMENT ON COLUMN ED2541W_TBL.SKSN_KNR_KOMOKU_CHKMK_CD IS '積算管理項目中項目コード'
/
COMMENT ON COLUMN ED2541W_TBL.SKSN_KNR_KOMOKU_SHKMK_NAIYO IS '積算管理項目小項目内容'
/
COMMENT ON COLUMN ED2541W_TBL.KIYK_KITI_KBN IS '契約形態区分'
/
COMMENT ON COLUMN ED2541W_TBL.SOKAN_BOSAI_SHUKI_TANI_KBN IS '綜管防災周期単位区分'
/
COMMENT ON COLUMN ED2541W_TBL.KANRI_KOMOKU_KAISU IS '管理項目回数'
/
COMMENT ON COLUMN ED2541W_TBL.SEIKYU_HOHO_KBN IS '請求方法区分'
/
COMMENT ON COLUMN ED2541W_TBL.TEISHUTSU_CYCLE_KBN IS '提出サイクル区分'
/
COMMENT ON COLUMN ED2541W_TBL.SHKI_GYSI_TISHTS_YTI_YM IS '初回行政提出予定年月'
/
COMMENT ON COLUMN ED2541W_TBL.HTI_SHRI_GYSI_TISHTS_YTI_YM IS '法定書類行政提出予定年月'
/
COMMENT ON COLUMN ED2541W_TBL.JKI_HTI_SRI_GSI_TIST_YTI_YM IS '次回法定書類行政提出予定年月'
/
COMMENT ON COLUMN ED2541W_TBL.ZNKI_HTI_SHRI_GYSI_TISHTS_YMD IS '前回法定書類行政提出年月日'
/
COMMENT ON COLUMN ED2541W_TBL.TEISHUTSU_CYCLE_Y IS '提出サイクル年'
/
COMMENT ON COLUMN ED2541W_TBL.TEISHUTSU_CYCLE_M IS '提出サイクル月'
/
COMMENT ON COLUMN ED2541W_TBL.HOKOKUSHO_TEISHUTSUSAKI_KBN IS '報告書提出先区分'
/
COMMENT ON COLUMN ED2541W_TBL.HOKOKUSHO_TEISHUTSU_BUSU IS '報告書提出部数'
/
COMMENT ON COLUMN ED2541W_TBL.HOKOKUSHO_TEISHUTSU_HOHO_KBN IS '報告書提出方法区分'
/
COMMENT ON COLUMN ED2541W_TBL.JISSHI_JIKANTAI_KBN IS '実施時間帯区分'
/
COMMENT ON COLUMN ED2541W_TBL.JISSHI_JIKANTAI_KAISHI_TM IS '実施時間帯開始時刻'
/
COMMENT ON COLUMN ED2541W_TBL.JISSHI_JIKANTAI_SHURYO_TM IS '実施時間帯終了時刻'
/
COMMENT ON COLUMN ED2541W_TBL.JISSHI_SHITEI_1_M_FLG IS '実施指定１月フラグ'
/
COMMENT ON COLUMN ED2541W_TBL.JISSHI_SHITEI_2_M_FLG IS '実施指定２月フラグ'
/
COMMENT ON COLUMN ED2541W_TBL.JISSHI_SHITEI_3_M_FLG IS '実施指定３月フラグ'
/
COMMENT ON COLUMN ED2541W_TBL.JISSHI_SHITEI_4_M_FLG IS '実施指定４月フラグ'
/
COMMENT ON COLUMN ED2541W_TBL.JISSHI_SHITEI_5_M_FLG IS '実施指定５月フラグ'
/
COMMENT ON COLUMN ED2541W_TBL.JISSHI_SHITEI_6_M_FLG IS '実施指定６月フラグ'
/
COMMENT ON COLUMN ED2541W_TBL.JISSHI_SHITEI_7_M_FLG IS '実施指定７月フラグ'
/
COMMENT ON COLUMN ED2541W_TBL.JISSHI_SHITEI_8_M_FLG IS '実施指定８月フラグ'
/
COMMENT ON COLUMN ED2541W_TBL.JISSHI_SHITEI_9_M_FLG IS '実施指定９月フラグ'
/
COMMENT ON COLUMN ED2541W_TBL.JISSHI_SHITEI_10_M_FLG IS '実施指定１０月フラグ'
/
COMMENT ON COLUMN ED2541W_TBL.JISSHI_SHITEI_11_M_FLG IS '実施指定１１月フラグ'
/
COMMENT ON COLUMN ED2541W_TBL.JISSHI_SHITEI_12_M_FLG IS '実施指定１２月フラグ'
/
COMMENT ON COLUMN ED2541W_TBL.ZENKAI_JISSHI_YMD IS '前回実施年月日'
/
COMMENT ON COLUMN ED2541W_TBL.JIKAI_JISSHI_YOTEI_YM IS '次回実施予定年月'
/
COMMENT ON COLUMN ED2541W_TBL.NTTI_RNRK_JSSH_BSH_KBN IS '日程連絡実施部署区分'
/
COMMENT ON COLUMN ED2541W_TBL.YTI_JSSK_NYRYK_BSH_KBN IS '予定実績入力部署区分'
/
COMMENT ON COLUMN ED2541W_TBL.GYM_ITKSK_TRHKSK_CD IS '業務委託先取引先コード'
/
COMMENT ON COLUMN ED2541W_TBL.GYM_ITKSK_TRHKSK_BSH_CD IS '業務委託先取引先部署コード'
/
COMMENT ON COLUMN ED2541W_TBL.GYOMU_ITAKU_RYOKIN_AMT IS '業務委託料金金額'
/
COMMENT ON COLUMN ED2541W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED2541W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED2541W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED2541W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED2541W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED2541W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED2541W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED2541W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED2541W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED2541W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED2541W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED2541W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
