﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0680T_TBL.sql
-- 物理名：ED0680T_TBL
-- 論理名：金庫連絡票テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0680T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0680T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KEIYAKU_ID  CHAR(18) NOT NULL --「契約ＩＤ」
	,JUCHU_KEIYAKU_NO  CHAR(15) --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) --「受注契約変更番号」
	,KINKO_MAKER_TANTOSHA_NM  VARCHAR2(60) --「金庫メーカ担当者氏名」
	,KINKO_HANNYUSAKI_TEMPO_NM  VARCHAR2(30) --「金庫搬入先店舗名称」
	,KINKO_HANNYU_YMD  DATE --「金庫搬入年月日」
	,KINKO_HANNYU_TM  CHAR(4) --「金庫搬入時刻」
	,KINKO_HANNYUSAKI_JUSHO_1  VARCHAR2(60) --「金庫搬入先住所１」
	,KINKO_HANNYUSAKI_JUSHO_2  VARCHAR2(60) --「金庫搬入先住所２」
	,KNK_HNNY_DIICH_RNRKSK_BSH_NM  VARCHAR2(40) --「金庫搬入第一連絡先部署名称」
	,KNK_HNN_DIIC_RNRKSK_KN_TNTS_NM  VARCHAR2(60) --「金庫搬入第一連絡先購入担当者氏名」
	,KNK_HNNY_DIICH_RNRKSK_DNW_NO  VARCHAR2(20) --「金庫搬入第一連絡先電話番号」
	,KNK_HNNY_DIN_RNRKSK_BSH_NM  VARCHAR2(40) --「金庫搬入第二連絡先部署名称」
	,KNK_HNN_DIN_RNRKSK_KN_TNTS_NM  VARCHAR2(60) --「金庫搬入第二連絡先購入担当者氏名」
	,KNK_HNNY_DIN_RNRKSK_DNW_NO  VARCHAR2(20) --「金庫搬入第二連絡先電話番号」
	,EIGYO_TANTOSHA_SHAIN_NO  VARCHAR2(8) --「営業担当者社員番号」
	,EIGYO_TANTOSHA_DENWA_NO  VARCHAR2(20) --「営業担当者電話番号」
	,SS_TANTO_SHAIN_NM  VARCHAR2(60) --「ＳＳ担当社員氏名」
	,SS_TANTOSHA_DENWA_NO  VARCHAR2(20) --「ＳＳ担当者電話番号」
	,KINKO_SETCHI_KAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「金庫設置階数」
	,ELEVATOR_SHIYO_KANO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「エレベーター使用可能フラグ」
	,KAIDAN_AGESAGEARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「階段上げ下げ有フラグ」
	,BASE_BOARD_SHIYOARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「ベースボード使用有フラグ」
	,KINKO_KOTEI_HOHO_KBN  CHAR(1) NOT NULL --「金庫固定方法区分」
	,BASE_BOARD_KOTEI_HOHO_KBN  CHAR(1) NOT NULL --「ベースボード固定方法区分」
	,BASE_BOARD_SIZE_HENKOYO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「ベースボードサイズ変更要フラグ」
	,BASE_BOARD_CUT_SUMPO_A_MM  NUMBER(9,0) DEFAULT '0' NOT NULL --「ベースボードカット寸法Ａミリ」
	,BASE_BOARD_CUT_SUMPO_B_MM  NUMBER(9,0) DEFAULT '0' NOT NULL --「ベースボードカット寸法Ｂミリ」
	,KEIHO_KUMIKOMIARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「警報組込有フラグ」
	,NOHIN_YOBI_KBN  CHAR(1) NOT NULL --「納品曜日区分」
	,NOHIN_KAISHI_TM  CHAR(4) --「納品開始時刻」
	,NOHIN_SHURYO_TM  CHAR(4) --「納品終了時刻」
	,ALSOK_TCHAISH_SHZKSK_JGYSH_CD  CHAR(6) --「ＡＬＳＯＫ立会者所属先事業所コード」
	,GEMBA_TACHIAI_SHAIN_NO  VARCHAR2(8) --「現場立会社員番号」
	,KJ_KBB_TCHAI_TNTSH_DNW_NO  VARCHAR2(20) --「工事希望日立会担当者電話番号」
	,KINKO_RENRAKUHYO_TOKKI_JIKO  VARCHAR2(200) --「金庫連絡票特記事項」
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
	,CONSTRAINT ED0680T_PK PRIMARY KEY(
	 KEIYAKU_ID
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0680T_TBL IS '金庫連絡票テーブル'
/

COMMENT ON COLUMN ED0680T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0680T_TBL.KEIYAKU_ID IS '契約ＩＤ'
/
COMMENT ON COLUMN ED0680T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED0680T_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED0680T_TBL.KINKO_MAKER_TANTOSHA_NM IS '金庫メーカ担当者氏名'
/
COMMENT ON COLUMN ED0680T_TBL.KINKO_HANNYUSAKI_TEMPO_NM IS '金庫搬入先店舗名称'
/
COMMENT ON COLUMN ED0680T_TBL.KINKO_HANNYU_YMD IS '金庫搬入年月日'
/
COMMENT ON COLUMN ED0680T_TBL.KINKO_HANNYU_TM IS '金庫搬入時刻'
/
COMMENT ON COLUMN ED0680T_TBL.KINKO_HANNYUSAKI_JUSHO_1 IS '金庫搬入先住所１'
/
COMMENT ON COLUMN ED0680T_TBL.KINKO_HANNYUSAKI_JUSHO_2 IS '金庫搬入先住所２'
/
COMMENT ON COLUMN ED0680T_TBL.KNK_HNNY_DIICH_RNRKSK_BSH_NM IS '金庫搬入第一連絡先部署名称'
/
COMMENT ON COLUMN ED0680T_TBL.KNK_HNN_DIIC_RNRKSK_KN_TNTS_NM IS '金庫搬入第一連絡先購入担当者氏名'
/
COMMENT ON COLUMN ED0680T_TBL.KNK_HNNY_DIICH_RNRKSK_DNW_NO IS '金庫搬入第一連絡先電話番号'
/
COMMENT ON COLUMN ED0680T_TBL.KNK_HNNY_DIN_RNRKSK_BSH_NM IS '金庫搬入第二連絡先部署名称'
/
COMMENT ON COLUMN ED0680T_TBL.KNK_HNN_DIN_RNRKSK_KN_TNTS_NM IS '金庫搬入第二連絡先購入担当者氏名'
/
COMMENT ON COLUMN ED0680T_TBL.KNK_HNNY_DIN_RNRKSK_DNW_NO IS '金庫搬入第二連絡先電話番号'
/
COMMENT ON COLUMN ED0680T_TBL.EIGYO_TANTOSHA_SHAIN_NO IS '営業担当者社員番号'
/
COMMENT ON COLUMN ED0680T_TBL.EIGYO_TANTOSHA_DENWA_NO IS '営業担当者電話番号'
/
COMMENT ON COLUMN ED0680T_TBL.SS_TANTO_SHAIN_NM IS 'ＳＳ担当社員氏名'
/
COMMENT ON COLUMN ED0680T_TBL.SS_TANTOSHA_DENWA_NO IS 'ＳＳ担当者電話番号'
/
COMMENT ON COLUMN ED0680T_TBL.KINKO_SETCHI_KAISU IS '金庫設置階数'
/
COMMENT ON COLUMN ED0680T_TBL.ELEVATOR_SHIYO_KANO_FLG IS 'エレベーター使用可能フラグ'
/
COMMENT ON COLUMN ED0680T_TBL.KAIDAN_AGESAGEARI_FLG IS '階段上げ下げ有フラグ'
/
COMMENT ON COLUMN ED0680T_TBL.BASE_BOARD_SHIYOARI_FLG IS 'ベースボード使用有フラグ'
/
COMMENT ON COLUMN ED0680T_TBL.KINKO_KOTEI_HOHO_KBN IS '金庫固定方法区分'
/
COMMENT ON COLUMN ED0680T_TBL.BASE_BOARD_KOTEI_HOHO_KBN IS 'ベースボード固定方法区分'
/
COMMENT ON COLUMN ED0680T_TBL.BASE_BOARD_SIZE_HENKOYO_FLG IS 'ベースボードサイズ変更要フラグ'
/
COMMENT ON COLUMN ED0680T_TBL.BASE_BOARD_CUT_SUMPO_A_MM IS 'ベースボードカット寸法Ａミリ'
/
COMMENT ON COLUMN ED0680T_TBL.BASE_BOARD_CUT_SUMPO_B_MM IS 'ベースボードカット寸法Ｂミリ'
/
COMMENT ON COLUMN ED0680T_TBL.KEIHO_KUMIKOMIARI_FLG IS '警報組込有フラグ'
/
COMMENT ON COLUMN ED0680T_TBL.NOHIN_YOBI_KBN IS '納品曜日区分'
/
COMMENT ON COLUMN ED0680T_TBL.NOHIN_KAISHI_TM IS '納品開始時刻'
/
COMMENT ON COLUMN ED0680T_TBL.NOHIN_SHURYO_TM IS '納品終了時刻'
/
COMMENT ON COLUMN ED0680T_TBL.ALSOK_TCHAISH_SHZKSK_JGYSH_CD IS 'ＡＬＳＯＫ立会者所属先事業所コード'
/
COMMENT ON COLUMN ED0680T_TBL.GEMBA_TACHIAI_SHAIN_NO IS '現場立会社員番号'
/
COMMENT ON COLUMN ED0680T_TBL.KJ_KBB_TCHAI_TNTSH_DNW_NO IS '工事希望日立会担当者電話番号'
/
COMMENT ON COLUMN ED0680T_TBL.KINKO_RENRAKUHYO_TOKKI_JIKO IS '金庫連絡票特記事項'
/
COMMENT ON COLUMN ED0680T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0680T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0680T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0680T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0680T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0680T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0680T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0680T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0680T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0680T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0680T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0680T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/