﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9135T_TBL.sql
-- 物理名：ED9135T_TBL
-- 論理名：申請用取引先支払情報テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9135T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9135T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,TORIHIKISAKI_CD  CHAR(9) NOT NULL --「取引先コード」
	,TORIHIKISAKI_SHIHARAI_JOHO_CD  CHAR(4) NOT NULL --「取引先支払情報コード」
	,SHIHARAI_JOHO_SHINSEI_SN  CHAR(14) NOT NULL --「支払情報申請連番」
	,SHHRI_JH_SHNSIME_TKY_KISH_YMD  DATE --「支払情報申請前適用開始年月日」
	,SHHRI_JH_SHNSIME_TKY_SHRY_YMD  DATE --「支払情報申請前適用終了年月日」
	,TORIHIKISAKI_SHIHARAI_JOHO_NM  VARCHAR2(40) --「取引先支払情報名称」
	,TRHKSK_SHHRI_JH_KN_NM  VARCHAR2(40) --「取引先支払情報カナ名称」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,DENWA_NO  VARCHAR2(20) --「電話番号」
	,FAX_NO  VARCHAR2(20) --「ＦＡＸ番号」
	,MAIL_ADDRESS_1  VARCHAR2(200) --「メールアドレス１」
	,MAIL_ADDRESS_2  VARCHAR2(200) --「メールアドレス２」
	,MAIL_ADDRESS_3  VARCHAR2(200) --「メールアドレス３」
	,SHIHARAI_KBN  CHAR(1) NOT NULL --「支払区分」
	,KINYU_KIKAN_CD  CHAR(4) --「金融機関コード」
	,KINYU_KIKAN_SHITEN_CD  CHAR(3) --「金融機関支店コード」
	,KOZA_MEIGININ_HKN_NM  VARCHAR2(60) --「口座名義人半角カナ氏名」
	,KOZA_SHUBETSU_KBN  CHAR(1) --「口座種別区分」
	,KOZA_NO  CHAR(7) --「口座番号」
	,JISHA_KOZA_CD  CHAR(4) --「自社口座コード」
	,SHIHARAI_TSUCHIARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「支払通知有フラグ」
	,SHIHARAI_JOKEN_CD  CHAR(5) --「支払条件コード」
	,TESURYO_FUTAN_KBN  CHAR(1) NOT NULL --「手数料負担区分」
	,SHIHARAI_BUMON_SOSHIKI_CD  VARCHAR2(6) --「支払部門組織コード」
	,HOTEI_CHOSHO_KBN  CHAR(1) NOT NULL --「法定調書区分」
	,SHHRI_CHSHY_TRHKSK_SHHRI_JH_NM  VARCHAR2(40) --「支払調書用取引先支払情報名称」
	,YUBIN_NO  CHAR(7) --「郵便番号」
	,JUSHO_CD  CHAR(11) --「住所コード」
	,SHIHARAI_CHOSHOYO_JUSHO  VARCHAR2(60) --「支払調書用住所」
	,SHHRI_CHSHY_KJN_HJN_KBN  CHAR(1) --「支払調書用個人法人区分」
	,SHIHARAI_CHOSHOYO_GYOSHA_KBN  CHAR(1) --「支払調書用業者区分」
	,SHKN_KMKY_KNJ_KMK_CD  VARCHAR2(12) --「資金科目用勘定科目コード」
	,SHHRI_JH_SHRI_GIT_FLG_1  CHAR(1) DEFAULT '0' NOT NULL --「支払情報種類該当フラグ１」
	,SHHRI_JH_SHRI_GIT_FLG_2  CHAR(1) DEFAULT '0' NOT NULL --「支払情報種類該当フラグ２」
	,SHHRI_JH_SHRI_GIT_FLG_3  CHAR(1) DEFAULT '0' NOT NULL --「支払情報種類該当フラグ３」
	,SHHRI_JH_SHRI_GIT_FLG_4  CHAR(1) DEFAULT '0' NOT NULL --「支払情報種類該当フラグ４」
	,SHHRI_JH_SHRI_GIT_FLG_5  CHAR(1) DEFAULT '0' NOT NULL --「支払情報種類該当フラグ５」
	,SHHRI_JH_SHRI_GIT_FLG_6  CHAR(1) DEFAULT '0' NOT NULL --「支払情報種類該当フラグ６」
	,SHHRI_JH_SHRI_GIT_FLG_7  CHAR(1) DEFAULT '0' NOT NULL --「支払情報種類該当フラグ７」
	,SHHRI_JH_SHRI_GIT_FLG_8  CHAR(1) DEFAULT '0' NOT NULL --「支払情報種類該当フラグ８」
	,SHHRI_JH_SHRI_GIT_FLG_9  CHAR(1) DEFAULT '0' NOT NULL --「支払情報種類該当フラグ９」
	,SHHRI_JH_SHRI_GIT_FLG_10  CHAR(1) DEFAULT '0' NOT NULL --「支払情報種類該当フラグ１０」
	,SHHRI_JH_SHRI_GIT_FLG_11  CHAR(1) DEFAULT '0' NOT NULL --「支払情報種類該当フラグ１１」
	,SHHRI_JH_SHRI_GIT_FLG_12  CHAR(1) DEFAULT '0' NOT NULL --「支払情報種類該当フラグ１２」
	,SHHRI_JH_SHRI_GIT_FLG_13  CHAR(1) DEFAULT '0' NOT NULL --「支払情報種類該当フラグ１３」
	,SHHRI_JH_SHRI_GIT_FLG_14  CHAR(1) DEFAULT '0' NOT NULL --「支払情報種類該当フラグ１４」
	,SHHRI_JH_SHRI_GIT_FLG_15  CHAR(1) DEFAULT '0' NOT NULL --「支払情報種類該当フラグ１５」
	,SHHRI_JH_SHRI_GIT_FLG_16  CHAR(1) DEFAULT '0' NOT NULL --「支払情報種類該当フラグ１６」
	,SHHRI_JH_SHRI_GIT_FLG_17  CHAR(1) DEFAULT '0' NOT NULL --「支払情報種類該当フラグ１７」
	,SHHRI_JH_SHRI_GIT_FLG_18  CHAR(1) DEFAULT '0' NOT NULL --「支払情報種類該当フラグ１８」
	,SHHRI_JH_SHRI_GIT_FLG_19  CHAR(1) DEFAULT '0' NOT NULL --「支払情報種類該当フラグ１９」
	,SHHRI_JH_SHRI_GIT_FLG_20  CHAR(1) DEFAULT '0' NOT NULL --「支払情報種類該当フラグ２０」
	,SHINSEI_SHONIN_NO  CHAR(14) --「申請承認番号」
	,SHHRI_JH_SHNSI_PATTERN_KBN  CHAR(1) NOT NULL --「支払情報申請パターン区分」
	,SHHRI_JH_SHNSI_STATUS_KBN  CHAR(2) NOT NULL --「支払情報申請ステータス区分」
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
	,CONSTRAINT ED9135T_PK PRIMARY KEY(
	 TORIHIKISAKI_CD
	,  SHIHARAI_JOHO_SHINSEI_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9135T_TBL IS '申請用取引先支払情報テーブル'
/

COMMENT ON COLUMN ED9135T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED9135T_TBL.TORIHIKISAKI_CD IS '取引先コード'
/
COMMENT ON COLUMN ED9135T_TBL.TORIHIKISAKI_SHIHARAI_JOHO_CD IS '取引先支払情報コード'
/
COMMENT ON COLUMN ED9135T_TBL.SHIHARAI_JOHO_SHINSEI_SN IS '支払情報申請連番'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_JH_SHNSIME_TKY_KISH_YMD IS '支払情報申請前適用開始年月日'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_JH_SHNSIME_TKY_SHRY_YMD IS '支払情報申請前適用終了年月日'
/
COMMENT ON COLUMN ED9135T_TBL.TORIHIKISAKI_SHIHARAI_JOHO_NM IS '取引先支払情報名称'
/
COMMENT ON COLUMN ED9135T_TBL.TRHKSK_SHHRI_JH_KN_NM IS '取引先支払情報カナ名称'
/
COMMENT ON COLUMN ED9135T_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED9135T_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED9135T_TBL.DENWA_NO IS '電話番号'
/
COMMENT ON COLUMN ED9135T_TBL.FAX_NO IS 'ＦＡＸ番号'
/
COMMENT ON COLUMN ED9135T_TBL.MAIL_ADDRESS_1 IS 'メールアドレス１'
/
COMMENT ON COLUMN ED9135T_TBL.MAIL_ADDRESS_2 IS 'メールアドレス２'
/
COMMENT ON COLUMN ED9135T_TBL.MAIL_ADDRESS_3 IS 'メールアドレス３'
/
COMMENT ON COLUMN ED9135T_TBL.SHIHARAI_KBN IS '支払区分'
/
COMMENT ON COLUMN ED9135T_TBL.KINYU_KIKAN_CD IS '金融機関コード'
/
COMMENT ON COLUMN ED9135T_TBL.KINYU_KIKAN_SHITEN_CD IS '金融機関支店コード'
/
COMMENT ON COLUMN ED9135T_TBL.KOZA_MEIGININ_HKN_NM IS '口座名義人半角カナ氏名'
/
COMMENT ON COLUMN ED9135T_TBL.KOZA_SHUBETSU_KBN IS '口座種別区分'
/
COMMENT ON COLUMN ED9135T_TBL.KOZA_NO IS '口座番号'
/
COMMENT ON COLUMN ED9135T_TBL.JISHA_KOZA_CD IS '自社口座コード'
/
COMMENT ON COLUMN ED9135T_TBL.SHIHARAI_TSUCHIARI_FLG IS '支払通知有フラグ'
/
COMMENT ON COLUMN ED9135T_TBL.SHIHARAI_JOKEN_CD IS '支払条件コード'
/
COMMENT ON COLUMN ED9135T_TBL.TESURYO_FUTAN_KBN IS '手数料負担区分'
/
COMMENT ON COLUMN ED9135T_TBL.SHIHARAI_BUMON_SOSHIKI_CD IS '支払部門組織コード'
/
COMMENT ON COLUMN ED9135T_TBL.HOTEI_CHOSHO_KBN IS '法定調書区分'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_CHSHY_TRHKSK_SHHRI_JH_NM IS '支払調書用取引先支払情報名称'
/
COMMENT ON COLUMN ED9135T_TBL.YUBIN_NO IS '郵便番号'
/
COMMENT ON COLUMN ED9135T_TBL.JUSHO_CD IS '住所コード'
/
COMMENT ON COLUMN ED9135T_TBL.SHIHARAI_CHOSHOYO_JUSHO IS '支払調書用住所'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_CHSHY_KJN_HJN_KBN IS '支払調書用個人法人区分'
/
COMMENT ON COLUMN ED9135T_TBL.SHIHARAI_CHOSHOYO_GYOSHA_KBN IS '支払調書用業者区分'
/
COMMENT ON COLUMN ED9135T_TBL.SHKN_KMKY_KNJ_KMK_CD IS '資金科目用勘定科目コード'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_JH_SHRI_GIT_FLG_1 IS '支払情報種類該当フラグ１'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_JH_SHRI_GIT_FLG_2 IS '支払情報種類該当フラグ２'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_JH_SHRI_GIT_FLG_3 IS '支払情報種類該当フラグ３'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_JH_SHRI_GIT_FLG_4 IS '支払情報種類該当フラグ４'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_JH_SHRI_GIT_FLG_5 IS '支払情報種類該当フラグ５'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_JH_SHRI_GIT_FLG_6 IS '支払情報種類該当フラグ６'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_JH_SHRI_GIT_FLG_7 IS '支払情報種類該当フラグ７'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_JH_SHRI_GIT_FLG_8 IS '支払情報種類該当フラグ８'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_JH_SHRI_GIT_FLG_9 IS '支払情報種類該当フラグ９'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_JH_SHRI_GIT_FLG_10 IS '支払情報種類該当フラグ１０'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_JH_SHRI_GIT_FLG_11 IS '支払情報種類該当フラグ１１'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_JH_SHRI_GIT_FLG_12 IS '支払情報種類該当フラグ１２'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_JH_SHRI_GIT_FLG_13 IS '支払情報種類該当フラグ１３'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_JH_SHRI_GIT_FLG_14 IS '支払情報種類該当フラグ１４'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_JH_SHRI_GIT_FLG_15 IS '支払情報種類該当フラグ１５'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_JH_SHRI_GIT_FLG_16 IS '支払情報種類該当フラグ１６'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_JH_SHRI_GIT_FLG_17 IS '支払情報種類該当フラグ１７'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_JH_SHRI_GIT_FLG_18 IS '支払情報種類該当フラグ１８'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_JH_SHRI_GIT_FLG_19 IS '支払情報種類該当フラグ１９'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_JH_SHRI_GIT_FLG_20 IS '支払情報種類該当フラグ２０'
/
COMMENT ON COLUMN ED9135T_TBL.SHINSEI_SHONIN_NO IS '申請承認番号'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_JH_SHNSI_PATTERN_KBN IS '支払情報申請パターン区分'
/
COMMENT ON COLUMN ED9135T_TBL.SHHRI_JH_SHNSI_STATUS_KBN IS '支払情報申請ステータス区分'
/
COMMENT ON COLUMN ED9135T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9135T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9135T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9135T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9135T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9135T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9135T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9135T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9135T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9135T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9135T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9135T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
