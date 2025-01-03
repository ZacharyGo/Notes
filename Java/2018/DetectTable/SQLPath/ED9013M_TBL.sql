﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9013M_TBL.sql
-- 物理名：ED9013M_TBL
-- 論理名：自社口座マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9013M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9013M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JISHA_KOZA_CD  CHAR(4) NOT NULL --「自社口座コード」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,JISHA_KOZA_NM  VARCHAR2(30) --「自社口座名称」
	,JISHA_KOZA_SAGYO_GROUP_NM  VARCHAR2(15) --「自社口座作業グループ名称」
	,SHIYO_FUKA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「使用不可フラグ」
	,KINYU_KIKAN_CD  CHAR(4) --「金融機関コード」
	,KINYU_KIKAN_SHITEN_CD  CHAR(3) --「金融機関支店コード」
	,KOZA_SHUBETSU_KBN  CHAR(1) NOT NULL --「口座種別区分」
	,KOZA_NO  CHAR(7) --「口座番号」
	,KOZA_MEIGININ_HKN_NM  VARCHAR2(60) --「口座名義人半角カナ氏名」
	,FB_DATA_JUSHIN_KBN  CHAR(1) NOT NULL --「ＦＢデータ受信区分」
	,KANJO_KAMOKU_CD  VARCHAR2(12) --「勘定科目コード」
	,HOJO_KAMOKU_CD  VARCHAR2(12) --「補助科目コード」
	,NYUKIN_JIGYOSHO_CD  CHAR(6) --「入金事業所コード」
	,TAIRYU_SAIKEN_YUYOARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「滞留債権猶予有フラグ」
	,TAIRYU_SAIKEN_YUYO_NISSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「滞留債権猶予日数」
	,ZANDAKA_KANRI_TAISHOGAI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「残高管理対象外フラグ」
	,KASO_MOTOKOZA_HONSHA_SHOYU_FLG  CHAR(1) DEFAULT '0' NOT NULL --「仮想元口座本社所有フラグ」
	,KOZA_YOTO_NAIYO  VARCHAR2(300) --「口座用途内容」
	,NYUKIN_TSUJO_KOZA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「入金通常口座フラグ」
	,NYKN_EIGYGI_SIKNY_KZ_FLG  CHAR(1) DEFAULT '0' NOT NULL --「入金営業外債権用口座フラグ」
	,NYUKIN_TOKUSOKUYO_KOZA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「入金督促用口座フラグ」
	,NYUKIN_DUMMY_YO_KOZA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「入金ダミー用口座フラグ」
	,FB_KOZA_KBN  CHAR(1) NOT NULL --「ＦＢ口座区分」
	,SHUKKIN_KOZA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「出金口座フラグ」
	,SHIWAKEYO_KANJO_KAMOKU_CD  VARCHAR2(12) --「仕訳用勘定科目コード」
	,SHIWAKEYO_HOJO_KAMOKU_CD  VARCHAR2(12) --「仕訳用補助科目コード」
	,SHIWAKEYO_NYUKIN_JIGYOSHO_CD  CHAR(6) --「仕訳用入金事業所コード」
	,SHIHARAI_KANJO_KAMOKU_CD  VARCHAR2(12) --「支払勘定科目コード」
	,SHIHARAI_HOJO_KAMOKU_CD  VARCHAR2(12) --「支払補助科目コード」
	,SHIHARAI_BUMON_SOSHIKI_CD  VARCHAR2(6) --「支払部門組織コード」
	,KINYU_KIKAN_SHUBETSU_KBN  CHAR(1) NOT NULL --「金融機関種別区分」
	,YUCHO_GINKO_KIGO_NO  VARCHAR2(24) --「ゆうちょ銀行記号番号」
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
	,CONSTRAINT ED9013M_PK PRIMARY KEY(
	 JISHA_KOZA_CD
	,  KAISHA_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9013M_TBL IS '自社口座マスタ'
/

COMMENT ON COLUMN ED9013M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED9013M_TBL.JISHA_KOZA_CD IS '自社口座コード'
/
COMMENT ON COLUMN ED9013M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED9013M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED9013M_TBL.JISHA_KOZA_NM IS '自社口座名称'
/
COMMENT ON COLUMN ED9013M_TBL.JISHA_KOZA_SAGYO_GROUP_NM IS '自社口座作業グループ名称'
/
COMMENT ON COLUMN ED9013M_TBL.SHIYO_FUKA_FLG IS '使用不可フラグ'
/
COMMENT ON COLUMN ED9013M_TBL.KINYU_KIKAN_CD IS '金融機関コード'
/
COMMENT ON COLUMN ED9013M_TBL.KINYU_KIKAN_SHITEN_CD IS '金融機関支店コード'
/
COMMENT ON COLUMN ED9013M_TBL.KOZA_SHUBETSU_KBN IS '口座種別区分'
/
COMMENT ON COLUMN ED9013M_TBL.KOZA_NO IS '口座番号'
/
COMMENT ON COLUMN ED9013M_TBL.KOZA_MEIGININ_HKN_NM IS '口座名義人半角カナ氏名'
/
COMMENT ON COLUMN ED9013M_TBL.FB_DATA_JUSHIN_KBN IS 'ＦＢデータ受信区分'
/
COMMENT ON COLUMN ED9013M_TBL.KANJO_KAMOKU_CD IS '勘定科目コード'
/
COMMENT ON COLUMN ED9013M_TBL.HOJO_KAMOKU_CD IS '補助科目コード'
/
COMMENT ON COLUMN ED9013M_TBL.NYUKIN_JIGYOSHO_CD IS '入金事業所コード'
/
COMMENT ON COLUMN ED9013M_TBL.TAIRYU_SAIKEN_YUYOARI_FLG IS '滞留債権猶予有フラグ'
/
COMMENT ON COLUMN ED9013M_TBL.TAIRYU_SAIKEN_YUYO_NISSU IS '滞留債権猶予日数'
/
COMMENT ON COLUMN ED9013M_TBL.ZANDAKA_KANRI_TAISHOGAI_FLG IS '残高管理対象外フラグ'
/
COMMENT ON COLUMN ED9013M_TBL.KASO_MOTOKOZA_HONSHA_SHOYU_FLG IS '仮想元口座本社所有フラグ'
/
COMMENT ON COLUMN ED9013M_TBL.KOZA_YOTO_NAIYO IS '口座用途内容'
/
COMMENT ON COLUMN ED9013M_TBL.NYUKIN_TSUJO_KOZA_FLG IS '入金通常口座フラグ'
/
COMMENT ON COLUMN ED9013M_TBL.NYKN_EIGYGI_SIKNY_KZ_FLG IS '入金営業外債権用口座フラグ'
/
COMMENT ON COLUMN ED9013M_TBL.NYUKIN_TOKUSOKUYO_KOZA_FLG IS '入金督促用口座フラグ'
/
COMMENT ON COLUMN ED9013M_TBL.NYUKIN_DUMMY_YO_KOZA_FLG IS '入金ダミー用口座フラグ'
/
COMMENT ON COLUMN ED9013M_TBL.FB_KOZA_KBN IS 'ＦＢ口座区分'
/
COMMENT ON COLUMN ED9013M_TBL.SHUKKIN_KOZA_FLG IS '出金口座フラグ'
/
COMMENT ON COLUMN ED9013M_TBL.SHIWAKEYO_KANJO_KAMOKU_CD IS '仕訳用勘定科目コード'
/
COMMENT ON COLUMN ED9013M_TBL.SHIWAKEYO_HOJO_KAMOKU_CD IS '仕訳用補助科目コード'
/
COMMENT ON COLUMN ED9013M_TBL.SHIWAKEYO_NYUKIN_JIGYOSHO_CD IS '仕訳用入金事業所コード'
/
COMMENT ON COLUMN ED9013M_TBL.SHIHARAI_KANJO_KAMOKU_CD IS '支払勘定科目コード'
/
COMMENT ON COLUMN ED9013M_TBL.SHIHARAI_HOJO_KAMOKU_CD IS '支払補助科目コード'
/
COMMENT ON COLUMN ED9013M_TBL.SHIHARAI_BUMON_SOSHIKI_CD IS '支払部門組織コード'
/
COMMENT ON COLUMN ED9013M_TBL.KINYU_KIKAN_SHUBETSU_KBN IS '金融機関種別区分'
/
COMMENT ON COLUMN ED9013M_TBL.YUCHO_GINKO_KIGO_NO IS 'ゆうちょ銀行記号番号'
/
COMMENT ON COLUMN ED9013M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9013M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9013M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9013M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9013M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9013M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9013M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9013M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9013M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9013M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9013M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9013M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
