﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0636T_TBL.sql
-- 物理名：ED0636T_TBL
-- 論理名：入出金機受注仕様明細詳細テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0636T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0636T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,NYSHKKNK_JCH_SHY_MISI_KBN  CHAR(1) NOT NULL --「入出金機受注仕様明細区分」
	,NYSHKKNK_JCH_SHY_MISI_NO  CHAR(10) NOT NULL --「入出金機受注仕様明細番号」
	,NSKK_JCH_SHY_MEISAI_RIREKI_NO  CHAR(3) NOT NULL --「入出金機受注仕様明細履歴番号」
	,NYUSHUKKINKI_SN  CHAR(14) NOT NULL --「入出金機連番」
	,SHIYO_MEISAI_PATTERN_KBN  CHAR(2) NOT NULL --「仕様明細パターン区分」
	,NYUSHUKKINKI_GOKI_NO  VARCHAR2(18) --「入出金機号機番号」
	,LEASE_KEIYAKUSHO_NO  VARCHAR2(13) --「リース契約書番号」
	,LEASE_KEIYAKUSHO_TEIKETSU_YMD  DATE --「リース契約書締結年月日」
	,NSKKNK_JC_SY_MISIS_SKSI_YMD  DATE --「入出金機受注仕様明細書作成年月日」
	,TAISHOSAKI_TANTOSHA_NM  VARCHAR2(60) --「対象先担当者氏名」
	,SAGYOHI_SEIKYU_JIGYOSHO_CD  CHAR(6) --「作業費請求事業所コード」
	,SGYH_SIKYSK_TNT_SHIN_NM  VARCHAR2(60) --「作業費請求先担当社員氏名」
	,NYUSHUKKINKI_SETCHISHA_KBN  CHAR(1) --「入出金機設置者区分」
	,NYUSHUKKINKI_SETCHI_YMD  DATE --「入出金機設置年月日」
	,NYUSHUKKINKI_SETCHI_TM  CHAR(4) --「入出金機設置時刻」
	,NYSHKKNK_KIYK_KISH_YTI_YMD  DATE --「入出金機契約開始予定年月日」
	,KEIYAKU_HENKO_TEKIYO_YMD  DATE --「契約変更適用年月日」
	,GENCHI_CHOSA_YOTEI_YMD  DATE --「現地調査予定年月日」
	,YAMATO_CENTER_TEN_CD  CHAR(6) --「ヤマトセンター店コード」
	,SHUKAN_SHITEN_NM  VARCHAR2(15) --「主管支店名称」
	,HOKAN_JIGYOSHO_CD  CHAR(6) --「保管事業所コード」
	,HOKAN_JIGYOSHO_NM  VARCHAR2(200) --「保管事業所名称」
	,TNYMT_NYSHKKNK_KSH_CD  CHAR(8) --「転用元入出金機機種コード」
	,TNYMT_HSHRY_SIKY_JGYSH_CD  CHAR(6) --「転用元保守料請求事業所コード」
	,TNYMT_HSHRY_SIKY_JGYSH_NM  VARCHAR2(200) --「転用元保守料請求事業所名称」
	,TENYOMOTO_NYUSHUKKINKI_NO  VARCHAR2(6) --「転用元入出金機番号」
	,TENYO_CHUKOKI_KAKUNO_BASHO_KBN  CHAR(1) --「転用中古機格納場所区分」
	,POOL_YO_SOKO_CD  CHAR(6) --「プール用倉庫コード」
	,TEKKYO_HIYO_JYUJYU_HOHO_KBN  CHAR(1) --「撤去費用収受方法区分」
	,TNYMT_KIYKSK_TRHKSK_NM  VARCHAR2(40) --「転用元契約先取引先名称」
	,TENYOMOTO_KEIYAKUSAKI_CD  CHAR(9) --「転用元契約先取引先コード」
	,TENYOMOTO_TAISHOSAKI_NM  VARCHAR2(40) --「転用元対象先名称」
	,TENYOMOTO_TAISHOSAKI_CD  CHAR(9) --「転用元対象先コード」
	,TENYOMOTO_TAISHOSAKI_YUBIN_NO  CHAR(7) --「転用元対象先郵便番号」
	,TENYOMOTO_TAISHOSAKI_JUSHO_1  VARCHAR2(60) --「転用元対象先住所１」
	,TENYOMOTO_TAISHOSAKI_JUSHO_2  VARCHAR2(60) --「転用元対象先住所２」
	,TNYMT_NYSHKKNK_TRHZSHSH_KBN  CHAR(1) --「転用元入出金機取外し者区分」
	,TNYMT_NYSHKKNK_TKKY_YMD  DATE --「転用元入出金機撤去年月日」
	,TNYMT_NYSHKKNK_TKKY_TM  CHAR(4) --「転用元入出金機撤去時刻」
	,TNYMT_NYSHKKNK_UMPNSH_KBN  CHAR(1) --「転用元入出金機運搬者区分」
	,SNT_TNYMT_UMPNSH_NAIYO  VARCHAR2(30) --「その他転用元運搬者内容」
	,TENYOMOTO_HANSHUTSU_YMD  DATE --「転用元搬出年月日」
	,TENYOMOTO_HANSHUTSU_TM  CHAR(4) --「転用元搬出時刻」
	,TENYOMOTO_HANNYU_YMD  DATE --「転用元搬入年月日」
	,TENYOMOTO_HANNYU_TM  CHAR(4) --「転用元搬入時刻」
	,SONOTA_HOKANSISETSU_NM  VARCHAR2(40) --「その他保管施設名称」
	,KAIYAKU_YMD  DATE --「解約年月日」
	,KAIYAKU_RIYU  VARCHAR2(50) --「解約理由」
	,YUKAZAISHITSU_KBN  CHAR(1) --「床材質区分」
	,NYKNK_SHHN_STCH_HH_KBN  CHAR(1) --「入金機商品設置方法区分」
	,KIKAI_KEIBI_SHUBETSU_KBN  CHAR(1) NOT NULL --「機械警備種別区分」
	,NYSHKKNK_KISN_SHBTS_CD  CHAR(3) --「入出金機回線種別コード」
	,NYSHKKNK_KISN_RY_JKY_KBN  CHAR(1) --「入出金機回線利用状況区分」
	,NSKKNK_TERMINAL_ADAPTER_KS_KBN  CHAR(1) --「入出金機ターミナルアダプタ機種区分」
	,HONTAI_IP_ADDRESS  VARCHAR2(40) --「本体ＩＰアドレス」
	,IP_ADDRESS_HARAIDASHI_HOHO_KBN  CHAR(1) --「ＩＰアドレス払出方法区分」
	,IP_ADDRESS  VARCHAR2(40) --「ＩＰアドレス」
	,SUB_NET_MASK_ADDRESS  VARCHAR2(40) --「サブネットマスクアドレス」
	,DEFAULT_GATEWAY_ADDRESS  VARCHAR2(40) --「デフォルトゲートウェイアドレス」
	,SETSUZOKUSAKI_ROUTER_KBN  CHAR(1) --「接続先ルータ区分」
	,TSUSHIN_SOKUDO_KBN  CHAR(1) --「通信速度区分」
	,TSUSHIN_MODE_KBN  CHAR(1) --「通信モード区分」
	,SECURITY_PLATE_KBN  CHAR(1) --「セキュリティプレート区分」
	,FOOT_GUARD_KBN  CHAR(1) --「フットガード区分」
	,ANCHOR_PLATE_KBN  CHAR(1) --「アンカープレート区分」
	,KOKA_SYUKKIBAKO_KOSU_KBN  CHAR(1) --「硬貨出金箱個数区分」
	,KOKA_SHUKKIMBAKO_KBN  CHAR(1) --「硬貨出金箱区分」
	,PRINTER_OKIDAI_KBN  CHAR(1) --「プリンタ置き台区分」
	,BOOK_PRINTER_KBN  CHAR(1) --「ブックプリンタ区分」
	,BOOK_PRINTER_SENYO_OKIDAI_KBN  CHAR(1) --「ブックプリンタ専用置台区分」
	,BARCODE_READER_KBN  CHAR(1) --「バーコードリーダ区分」
	,BKN_SHMBY_KNSH_SHEET_KBN  CHAR(1) --「棒金収納部用金種シート区分」
	,DAIYORYO_TSURISEN_HOKANKO_KBN  CHAR(1) --「大容量釣銭保管庫区分」
	,TSURISEN_TSUSHIN_HOKANKO_KBN  CHAR(1) --「釣銭通信保管庫区分」
	,TSUSIN_SAG_TYPE_KBN  CHAR(1) --「通信３Ｇアダプタ区分」
	,SETCHI_ROUTER_KBN  CHAR(1) --「設置ルータ区分」
	,NYSHKKNK_TSIK_TNY_CARD_AR_FLG  CHAR(1) --「入出金機追加投入カード有フラグ」
	,NSKKNK_TIK_TN_CARD_NO_NAIYO  VARCHAR2(30) --「入出金機追加投入カード番号内容」
	,TSURISEN_KOFU_HOHO_KBN  CHAR(1) --「釣銭交付方法区分」
	,NYSHKKNK_TMP_CD_SHTIAR_FLG  CHAR(1) --「入出金機店舗コード指定有フラグ」
	,NYUSHUKKINKI_SETCHI_TEMPO_CD  CHAR(6) --「入出金機設置店舗コード」
	,NYSHKKNK_SHD_SHM_PRINT_KBN  CHAR(1) NOT NULL --「入出金機手動締めプリント区分」
	,NYUSHUKKINKI_TONYU_INJIARI_FLG  CHAR(1) --「入出金機投入印字有フラグ」
	,NYUSHUKKINKI_JIDO_SHIME_TM  CHAR(4) --「入出金機自動締め時刻」
	,NYSHKKNK_JD_SHM_PRINT_AR_FLG  CHAR(1) DEFAULT '0' NOT NULL --「入出金機自動締めプリント有フラグ」
	,NSKKNK_SM_REGI_BT_INJAR_FLG  CHAR(1) DEFAULT '0' NOT NULL --「入出金機締めレジ別印字有フラグ」
	,NYSHKKNK_RYGE_PRINT_AR_FLG  CHAR(1) --「入出金機両替プリント有フラグ」
	,RECEIPT_FORMAT_KBN  CHAR(1) --「レシートフォーマット区分」
	,NYSHKKNK_HNTI_UNY_HH_KBN  CHAR(1) --「入出金機本体運用方法区分」
	,DEMBUN_FORMAT_KBN  CHAR(1) --「電文フォーマット区分」
	,AMT_SHITEI_TONYU_KBN  CHAR(1) --「金額指定投入区分」
	,PATTERN_RYOGAE_KBN  CHAR(1) --「パターン両替区分」
	,NSKKNK_TRSN_ZNC_TIS_KNS_KBN  CHAR(1) --「入出金機釣銭残置対象金種区分」
	,KOGUCHI_FURIKAE_KINOYO_FLG  CHAR(1) --「小口振替機能要フラグ」
	,NYSHKKNK_HNTI_ID_KRTRKAR_FLG  CHAR(1) --「入出金機本体ＩＤ仮登録有フラグ」
	,NYSHKKNK_HNTI_ID_JD_SKJAR_FLG  CHAR(1) --「入出金機本体ＩＤ自動削除有フラグ」
	,NYSHKKNK_HNTI_ID_SKJ_KKN_KBN  CHAR(1) --「入出金機本体ＩＤ削除期間区分」
	,NYSHKKNK_HNTI_ID_SKJ_TM  CHAR(4) --「入出金機本体ＩＤ削除時刻」
	,NYSHKKNK_HNTI_RYSH_RRK_KBN  CHAR(1) --「入出金機本体利用者履歴区分」
	,NYSHKKNK_HNTI_STTI_RNRK_JIKO  VARCHAR2(60) --「入出金機本体設定連絡事項」
	,HANSHUTSU_CHUSHAJO_UMU_KBN  CHAR(1) --「搬出駐車場有無区分」
	,HANSHUTSU_NIOROSHIKA_FLG  CHAR(1) --「搬出荷降ろし可フラグ」
	,HNSHTS_CHSHJ_TKS_SIGNAR_FLG  CHAR(1) --「搬出駐車場高さ制限有フラグ」
	,HANSHUTSU_CHUSHAJO_TAKASA_M  NUMBER(12,3) DEFAULT '0' NOT NULL --「搬出駐車場高さメートル」
	,HANSHUTSU_SETCHI_BASHO_KYORI_M  NUMBER(12,3) DEFAULT '0' NOT NULL --「搬出設置場所距離メートル」
	,HNSHTS_NRIRK_TRUCK_SHRI_KBN  CHAR(1) --「搬出乗入可トラック種類区分」
	,HNSHTS_CHSH_TTMN_DNSAR_FLG  CHAR(1) --「搬出駐車建物段差有フラグ」
	,HNSHTS_CHSH_TTMN_DANSASU  NUMBER(9,0) DEFAULT '0' NOT NULL --「搬出駐車建物段差数」
	,HNSHTS_CHSH_TTMN_DNS_CM  NUMBER(9,0) DEFAULT '0' NOT NULL --「搬出駐車建物段差センチ」
	,HANSHUTSU_HANNYUGUCHIHABA_CM  NUMBER(9,0) DEFAULT '0' NOT NULL --「搬出搬入口幅センチ」
	,HNSHTS_STCH_BSH_DNSAR_FLG  CHAR(1) --「搬出設置場所段差有フラグ」
	,HNSHTS_STCH_BSH_DNS_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「搬出設置場所段差数量」
	,HNSHTS_STCH_BSH_DNS_CM  NUMBER(9,0) DEFAULT '0' NOT NULL --「搬出設置場所段差センチ」
	,HANSHUTSU_KAI  NUMBER(9,0) DEFAULT '0' NOT NULL --「搬出階」
	,HANSHUTSU_ELEVATOR_SHIYOKA_FLG  CHAR(1) --「搬出エレベーター使用可フラグ」
	,HNSHTS_ELEVATOR_DNSAR_FLG  CHAR(1) --「搬出エレベーター段差有フラグ」
	,HANSHUTSU_ELEVATOR_DANSA_CM  NUMBER(9,0) DEFAULT '0' NOT NULL --「搬出エレベーター段差センチ」
	,HANSHUTSU_KAIDAN_KEIJO_KBN  CHAR(1) --「搬出階段形状区分」
	,HNSHTSZ_B_HB_150_CM_IJ_FLG  CHAR(1) --「搬出図Ｂ幅１５０センチ以上フラグ」
	,HANSHUTSUZU_B_HABA_CM  NUMBER(9,0) DEFAULT '0' NOT NULL --「搬出図Ｂ幅センチ」
	,HNSHTSZ_A_HB_120_CM_IJ_FLG  CHAR(1) --「搬出図Ａ幅１２０センチ以上フラグ」
	,HANSHUTSUZU_A_HABA_CM  NUMBER(9,0) DEFAULT '0' NOT NULL --「搬出図Ａ幅センチ」
	,HANSHUTSU_ODORIBAYOKO_CM  NUMBER(9,0) DEFAULT '0' NOT NULL --「搬出踊り場横センチ」
	,HANSHUTSU_ODORIBATATE_CM  NUMBER(9,0) DEFAULT '0' NOT NULL --「搬出踊り場縦センチ」
	,HANSHUTSU_KAIDAN_KAKUDO_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「搬出階段角度数量」
	,HANNYU_CHUSHAJO_UMU_KBN  CHAR(1) --「搬入駐車場有無区分」
	,HANNYU_NIOROSHIKA_FLG  CHAR(1) --「搬入荷降ろし可フラグ」
	,HNNY_CHSHJ_TKS_SIGNAR_FLG  CHAR(1) --「搬入駐車場高さ制限有フラグ」
	,HANNYU_CHUSHAJO_TAKASA_M  NUMBER(12,3) DEFAULT '0' NOT NULL --「搬入駐車場高さメートル」
	,HANNYU_SETCHI_BASHO_KYORI_M  NUMBER(12,3) DEFAULT '0' NOT NULL --「搬入設置場所距離メートル」
	,HNNY_NRIRK_TRUCK_SHRI_KBN  CHAR(1) --「搬入乗入可トラック種類区分」
	,HNNY_CHSH_TTMN_DNSAR_FLG  CHAR(1) --「搬入駐車建物段差有フラグ」
	,HANNYU_CHUSHA_TATEMONO_DANSASU  NUMBER(9,0) DEFAULT '0' NOT NULL --「搬入駐車建物段差数」
	,HNNY_CHSH_TTMN_DNS_CM  NUMBER(9,0) DEFAULT '0' NOT NULL --「搬入駐車建物段差センチ」
	,HANNYU_HANNYUGUCHIHABA_CM  NUMBER(9,0) DEFAULT '0' NOT NULL --「搬入搬入口幅センチ」
	,HNNY_STCH_BSH_DNSAR_FLG  CHAR(1) --「搬入設置場所段差有フラグ」
	,HNNY_STCH_BSH_DNS_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「搬入設置場所段差数量」
	,HANNYU_SETCHI_BASHO_DANSA_CM  NUMBER(9,0) DEFAULT '0' NOT NULL --「搬入設置場所段差センチ」
	,HANNYU_KAI  NUMBER(9,0) DEFAULT '0' NOT NULL --「搬入階」
	,HANNYU_ELEVATOR_SHIYOKA_FLG  CHAR(1) --「搬入エレベーター使用可フラグ」
	,HANNYU_ELEVATOR_DANSAARI_FLG  CHAR(1) --「搬入エレベーター段差有フラグ」
	,HANNYU_ELEVATOR_DANSA_CM  NUMBER(9,0) DEFAULT '0' NOT NULL --「搬入エレベーター段差センチ」
	,HANNYU_KAIDAN_KEIJO_KBN  CHAR(1) --「搬入階段形状区分」
	,HANNYUZU_B_HABA_150_CM_IJO_FLG  CHAR(1) --「搬入図Ｂ幅１５０センチ以上フラグ」
	,HANNYUZU_B_HABA_CM  NUMBER(9,0) DEFAULT '0' NOT NULL --「搬入図Ｂ幅センチ」
	,HANNYUZU_A_HABA_120_CM_IJO_FLG  CHAR(1) --「搬入図Ａ幅１２０センチ以上フラグ」
	,HANNYUZU_A_HABA_CM  NUMBER(9,0) DEFAULT '0' NOT NULL --「搬入図Ａ幅センチ」
	,HANNYU_ODORIBAYOKO_CM  NUMBER(9,0) DEFAULT '0' NOT NULL --「搬入踊り場横センチ」
	,HANNYU_ODORIBATATE_CM  NUMBER(9,0) DEFAULT '0' NOT NULL --「搬入踊り場縦センチ」
	,HANNYU_KAIDAN_KAKUDO_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「搬入階段角度数量」
	,HANNYU_JOKAI_HOHO_KBN  CHAR(1) --「搬入上階方法区分」
	,SHITAMI_KIBO_YMD  DATE --「下見希望年月日」
	,SHITAMI_KIBO_TM  CHAR(4) --「下見希望時刻」
	,HNNY_SGYSH_TDKDZM_FLG  CHAR(1) --「搬入作業者届出済フラグ」
	,HANNYU_PARAMETER_SETTEISHA_KBN  CHAR(1) --「搬入パラメータ設定者区分」
	,HANNYU_PARAMETER_SOFUYO_FLG  CHAR(1) --「搬入パラメータ送付要フラグ」
	,HANNYU_HANSHUTSU_TOKKI_JIKO_1  VARCHAR2(150) --「搬入搬出特記事項１」
	,JIKO_KINKYU_TAIO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「事故緊急対応フラグ」
	,GENCHI_CHOSA_YOTEI_TM  CHAR(4) --「現地調査予定時刻」
	,TNYMT_KEISO_JISSHI_JIGYOSHO_CD  CHAR(6) --「転用元警送実施事業所コード」
	,TNYMT_KEISO_JISSHI_JIGYOSHO_NM  VARCHAR2(200) --「転用元警送実施事業所名称」
	,TNYMT_KIKAI_JISSHI_JIGYOSHO_CD  CHAR(6) --「転用元機械実施事業所コード」
	,TNYMT_KIKAI_JISSHI_JIGYOSHO_NM  VARCHAR2(200) --「転用元機械実施事業所名称」
	,TNYMT_NYUSHUKKINKI_GOKI_NO  VARCHAR2(18) --「転用元入出金機号機番号」
	,TNYMT_NYSHKKNK_KISN_SHBTS_CD  CHAR(3) --「転用元入出金機回線種別コード」
	,TNYMT_NYKNK_SHHN_STCH_HH_KBN  CHAR(1) --「転用元入金機商品設置方法区分」
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
	,CONSTRAINT ED0636T_PK PRIMARY KEY(
	 NYSHKKNK_JCH_SHY_MISI_NO
	,  KAISHA_CD
	,  NYSHKKNK_JCH_SHY_MISI_KBN
	,  NSKK_JCH_SHY_MEISAI_RIREKI_NO
	,  NYUSHUKKINKI_SN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0636T_TBL IS '入出金機受注仕様明細詳細テーブル'
/

COMMENT ON COLUMN ED0636T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0636T_TBL.NYSHKKNK_JCH_SHY_MISI_KBN IS '入出金機受注仕様明細区分'
/
COMMENT ON COLUMN ED0636T_TBL.NYSHKKNK_JCH_SHY_MISI_NO IS '入出金機受注仕様明細番号'
/
COMMENT ON COLUMN ED0636T_TBL.NSKK_JCH_SHY_MEISAI_RIREKI_NO IS '入出金機受注仕様明細履歴番号'
/
COMMENT ON COLUMN ED0636T_TBL.NYUSHUKKINKI_SN IS '入出金機連番'
/
COMMENT ON COLUMN ED0636T_TBL.SHIYO_MEISAI_PATTERN_KBN IS '仕様明細パターン区分'
/
COMMENT ON COLUMN ED0636T_TBL.NYUSHUKKINKI_GOKI_NO IS '入出金機号機番号'
/
COMMENT ON COLUMN ED0636T_TBL.LEASE_KEIYAKUSHO_NO IS 'リース契約書番号'
/
COMMENT ON COLUMN ED0636T_TBL.LEASE_KEIYAKUSHO_TEIKETSU_YMD IS 'リース契約書締結年月日'
/
COMMENT ON COLUMN ED0636T_TBL.NSKKNK_JC_SY_MISIS_SKSI_YMD IS '入出金機受注仕様明細書作成年月日'
/
COMMENT ON COLUMN ED0636T_TBL.TAISHOSAKI_TANTOSHA_NM IS '対象先担当者氏名'
/
COMMENT ON COLUMN ED0636T_TBL.SAGYOHI_SEIKYU_JIGYOSHO_CD IS '作業費請求事業所コード'
/
COMMENT ON COLUMN ED0636T_TBL.SGYH_SIKYSK_TNT_SHIN_NM IS '作業費請求先担当社員氏名'
/
COMMENT ON COLUMN ED0636T_TBL.NYUSHUKKINKI_SETCHISHA_KBN IS '入出金機設置者区分'
/
COMMENT ON COLUMN ED0636T_TBL.NYUSHUKKINKI_SETCHI_YMD IS '入出金機設置年月日'
/
COMMENT ON COLUMN ED0636T_TBL.NYUSHUKKINKI_SETCHI_TM IS '入出金機設置時刻'
/
COMMENT ON COLUMN ED0636T_TBL.NYSHKKNK_KIYK_KISH_YTI_YMD IS '入出金機契約開始予定年月日'
/
COMMENT ON COLUMN ED0636T_TBL.KEIYAKU_HENKO_TEKIYO_YMD IS '契約変更適用年月日'
/
COMMENT ON COLUMN ED0636T_TBL.GENCHI_CHOSA_YOTEI_YMD IS '現地調査予定年月日'
/
COMMENT ON COLUMN ED0636T_TBL.YAMATO_CENTER_TEN_CD IS 'ヤマトセンター店コード'
/
COMMENT ON COLUMN ED0636T_TBL.SHUKAN_SHITEN_NM IS '主管支店名称'
/
COMMENT ON COLUMN ED0636T_TBL.HOKAN_JIGYOSHO_CD IS '保管事業所コード'
/
COMMENT ON COLUMN ED0636T_TBL.HOKAN_JIGYOSHO_NM IS '保管事業所名称'
/
COMMENT ON COLUMN ED0636T_TBL.TNYMT_NYSHKKNK_KSH_CD IS '転用元入出金機機種コード'
/
COMMENT ON COLUMN ED0636T_TBL.TNYMT_HSHRY_SIKY_JGYSH_CD IS '転用元保守料請求事業所コード'
/
COMMENT ON COLUMN ED0636T_TBL.TNYMT_HSHRY_SIKY_JGYSH_NM IS '転用元保守料請求事業所名称'
/
COMMENT ON COLUMN ED0636T_TBL.TENYOMOTO_NYUSHUKKINKI_NO IS '転用元入出金機番号'
/
COMMENT ON COLUMN ED0636T_TBL.TENYO_CHUKOKI_KAKUNO_BASHO_KBN IS '転用中古機格納場所区分'
/
COMMENT ON COLUMN ED0636T_TBL.POOL_YO_SOKO_CD IS 'プール用倉庫コード'
/
COMMENT ON COLUMN ED0636T_TBL.TEKKYO_HIYO_JYUJYU_HOHO_KBN IS '撤去費用収受方法区分'
/
COMMENT ON COLUMN ED0636T_TBL.TNYMT_KIYKSK_TRHKSK_NM IS '転用元契約先取引先名称'
/
COMMENT ON COLUMN ED0636T_TBL.TENYOMOTO_KEIYAKUSAKI_CD IS '転用元契約先取引先コード'
/
COMMENT ON COLUMN ED0636T_TBL.TENYOMOTO_TAISHOSAKI_NM IS '転用元対象先名称'
/
COMMENT ON COLUMN ED0636T_TBL.TENYOMOTO_TAISHOSAKI_CD IS '転用元対象先コード'
/
COMMENT ON COLUMN ED0636T_TBL.TENYOMOTO_TAISHOSAKI_YUBIN_NO IS '転用元対象先郵便番号'
/
COMMENT ON COLUMN ED0636T_TBL.TENYOMOTO_TAISHOSAKI_JUSHO_1 IS '転用元対象先住所１'
/
COMMENT ON COLUMN ED0636T_TBL.TENYOMOTO_TAISHOSAKI_JUSHO_2 IS '転用元対象先住所２'
/
COMMENT ON COLUMN ED0636T_TBL.TNYMT_NYSHKKNK_TRHZSHSH_KBN IS '転用元入出金機取外し者区分'
/
COMMENT ON COLUMN ED0636T_TBL.TNYMT_NYSHKKNK_TKKY_YMD IS '転用元入出金機撤去年月日'
/
COMMENT ON COLUMN ED0636T_TBL.TNYMT_NYSHKKNK_TKKY_TM IS '転用元入出金機撤去時刻'
/
COMMENT ON COLUMN ED0636T_TBL.TNYMT_NYSHKKNK_UMPNSH_KBN IS '転用元入出金機運搬者区分'
/
COMMENT ON COLUMN ED0636T_TBL.SNT_TNYMT_UMPNSH_NAIYO IS 'その他転用元運搬者内容'
/
COMMENT ON COLUMN ED0636T_TBL.TENYOMOTO_HANSHUTSU_YMD IS '転用元搬出年月日'
/
COMMENT ON COLUMN ED0636T_TBL.TENYOMOTO_HANSHUTSU_TM IS '転用元搬出時刻'
/
COMMENT ON COLUMN ED0636T_TBL.TENYOMOTO_HANNYU_YMD IS '転用元搬入年月日'
/
COMMENT ON COLUMN ED0636T_TBL.TENYOMOTO_HANNYU_TM IS '転用元搬入時刻'
/
COMMENT ON COLUMN ED0636T_TBL.SONOTA_HOKANSISETSU_NM IS 'その他保管施設名称'
/
COMMENT ON COLUMN ED0636T_TBL.KAIYAKU_YMD IS '解約年月日'
/
COMMENT ON COLUMN ED0636T_TBL.KAIYAKU_RIYU IS '解約理由'
/
COMMENT ON COLUMN ED0636T_TBL.YUKAZAISHITSU_KBN IS '床材質区分'
/
COMMENT ON COLUMN ED0636T_TBL.NYKNK_SHHN_STCH_HH_KBN IS '入金機商品設置方法区分'
/
COMMENT ON COLUMN ED0636T_TBL.KIKAI_KEIBI_SHUBETSU_KBN IS '機械警備種別区分'
/
COMMENT ON COLUMN ED0636T_TBL.NYSHKKNK_KISN_SHBTS_CD IS '入出金機回線種別コード'
/
COMMENT ON COLUMN ED0636T_TBL.NYSHKKNK_KISN_RY_JKY_KBN IS '入出金機回線利用状況区分'
/
COMMENT ON COLUMN ED0636T_TBL.NSKKNK_TERMINAL_ADAPTER_KS_KBN IS '入出金機ターミナルアダプタ機種区分'
/
COMMENT ON COLUMN ED0636T_TBL.HONTAI_IP_ADDRESS IS '本体ＩＰアドレス'
/
COMMENT ON COLUMN ED0636T_TBL.IP_ADDRESS_HARAIDASHI_HOHO_KBN IS 'ＩＰアドレス払出方法区分'
/
COMMENT ON COLUMN ED0636T_TBL.IP_ADDRESS IS 'ＩＰアドレス'
/
COMMENT ON COLUMN ED0636T_TBL.SUB_NET_MASK_ADDRESS IS 'サブネットマスクアドレス'
/
COMMENT ON COLUMN ED0636T_TBL.DEFAULT_GATEWAY_ADDRESS IS 'デフォルトゲートウェイアドレス'
/
COMMENT ON COLUMN ED0636T_TBL.SETSUZOKUSAKI_ROUTER_KBN IS '接続先ルータ区分'
/
COMMENT ON COLUMN ED0636T_TBL.TSUSHIN_SOKUDO_KBN IS '通信速度区分'
/
COMMENT ON COLUMN ED0636T_TBL.TSUSHIN_MODE_KBN IS '通信モード区分'
/
COMMENT ON COLUMN ED0636T_TBL.SECURITY_PLATE_KBN IS 'セキュリティプレート区分'
/
COMMENT ON COLUMN ED0636T_TBL.FOOT_GUARD_KBN IS 'フットガード区分'
/
COMMENT ON COLUMN ED0636T_TBL.ANCHOR_PLATE_KBN IS 'アンカープレート区分'
/
COMMENT ON COLUMN ED0636T_TBL.KOKA_SYUKKIBAKO_KOSU_KBN IS '硬貨出金箱個数区分'
/
COMMENT ON COLUMN ED0636T_TBL.KOKA_SHUKKIMBAKO_KBN IS '硬貨出金箱区分'
/
COMMENT ON COLUMN ED0636T_TBL.PRINTER_OKIDAI_KBN IS 'プリンタ置き台区分'
/
COMMENT ON COLUMN ED0636T_TBL.BOOK_PRINTER_KBN IS 'ブックプリンタ区分'
/
COMMENT ON COLUMN ED0636T_TBL.BOOK_PRINTER_SENYO_OKIDAI_KBN IS 'ブックプリンタ専用置台区分'
/
COMMENT ON COLUMN ED0636T_TBL.BARCODE_READER_KBN IS 'バーコードリーダ区分'
/
COMMENT ON COLUMN ED0636T_TBL.BKN_SHMBY_KNSH_SHEET_KBN IS '棒金収納部用金種シート区分'
/
COMMENT ON COLUMN ED0636T_TBL.DAIYORYO_TSURISEN_HOKANKO_KBN IS '大容量釣銭保管庫区分'
/
COMMENT ON COLUMN ED0636T_TBL.TSURISEN_TSUSHIN_HOKANKO_KBN IS '釣銭通信保管庫区分'
/
COMMENT ON COLUMN ED0636T_TBL.TSUSIN_SAG_TYPE_KBN IS '通信３Ｇアダプタ区分'
/
COMMENT ON COLUMN ED0636T_TBL.SETCHI_ROUTER_KBN IS '設置ルータ区分'
/
COMMENT ON COLUMN ED0636T_TBL.NYSHKKNK_TSIK_TNY_CARD_AR_FLG IS '入出金機追加投入カード有フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.NSKKNK_TIK_TN_CARD_NO_NAIYO IS '入出金機追加投入カード番号内容'
/
COMMENT ON COLUMN ED0636T_TBL.TSURISEN_KOFU_HOHO_KBN IS '釣銭交付方法区分'
/
COMMENT ON COLUMN ED0636T_TBL.NYSHKKNK_TMP_CD_SHTIAR_FLG IS '入出金機店舗コード指定有フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.NYUSHUKKINKI_SETCHI_TEMPO_CD IS '入出金機設置店舗コード'
/
COMMENT ON COLUMN ED0636T_TBL.NYSHKKNK_SHD_SHM_PRINT_KBN IS '入出金機手動締めプリント区分'
/
COMMENT ON COLUMN ED0636T_TBL.NYUSHUKKINKI_TONYU_INJIARI_FLG IS '入出金機投入印字有フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.NYUSHUKKINKI_JIDO_SHIME_TM IS '入出金機自動締め時刻'
/
COMMENT ON COLUMN ED0636T_TBL.NYSHKKNK_JD_SHM_PRINT_AR_FLG IS '入出金機自動締めプリント有フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.NSKKNK_SM_REGI_BT_INJAR_FLG IS '入出金機締めレジ別印字有フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.NYSHKKNK_RYGE_PRINT_AR_FLG IS '入出金機両替プリント有フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.RECEIPT_FORMAT_KBN IS 'レシートフォーマット区分'
/
COMMENT ON COLUMN ED0636T_TBL.NYSHKKNK_HNTI_UNY_HH_KBN IS '入出金機本体運用方法区分'
/
COMMENT ON COLUMN ED0636T_TBL.DEMBUN_FORMAT_KBN IS '電文フォーマット区分'
/
COMMENT ON COLUMN ED0636T_TBL.AMT_SHITEI_TONYU_KBN IS '金額指定投入区分'
/
COMMENT ON COLUMN ED0636T_TBL.PATTERN_RYOGAE_KBN IS 'パターン両替区分'
/
COMMENT ON COLUMN ED0636T_TBL.NSKKNK_TRSN_ZNC_TIS_KNS_KBN IS '入出金機釣銭残置対象金種区分'
/
COMMENT ON COLUMN ED0636T_TBL.KOGUCHI_FURIKAE_KINOYO_FLG IS '小口振替機能要フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.NYSHKKNK_HNTI_ID_KRTRKAR_FLG IS '入出金機本体ＩＤ仮登録有フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.NYSHKKNK_HNTI_ID_JD_SKJAR_FLG IS '入出金機本体ＩＤ自動削除有フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.NYSHKKNK_HNTI_ID_SKJ_KKN_KBN IS '入出金機本体ＩＤ削除期間区分'
/
COMMENT ON COLUMN ED0636T_TBL.NYSHKKNK_HNTI_ID_SKJ_TM IS '入出金機本体ＩＤ削除時刻'
/
COMMENT ON COLUMN ED0636T_TBL.NYSHKKNK_HNTI_RYSH_RRK_KBN IS '入出金機本体利用者履歴区分'
/
COMMENT ON COLUMN ED0636T_TBL.NYSHKKNK_HNTI_STTI_RNRK_JIKO IS '入出金機本体設定連絡事項'
/
COMMENT ON COLUMN ED0636T_TBL.HANSHUTSU_CHUSHAJO_UMU_KBN IS '搬出駐車場有無区分'
/
COMMENT ON COLUMN ED0636T_TBL.HANSHUTSU_NIOROSHIKA_FLG IS '搬出荷降ろし可フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.HNSHTS_CHSHJ_TKS_SIGNAR_FLG IS '搬出駐車場高さ制限有フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.HANSHUTSU_CHUSHAJO_TAKASA_M IS '搬出駐車場高さメートル'
/
COMMENT ON COLUMN ED0636T_TBL.HANSHUTSU_SETCHI_BASHO_KYORI_M IS '搬出設置場所距離メートル'
/
COMMENT ON COLUMN ED0636T_TBL.HNSHTS_NRIRK_TRUCK_SHRI_KBN IS '搬出乗入可トラック種類区分'
/
COMMENT ON COLUMN ED0636T_TBL.HNSHTS_CHSH_TTMN_DNSAR_FLG IS '搬出駐車建物段差有フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.HNSHTS_CHSH_TTMN_DANSASU IS '搬出駐車建物段差数'
/
COMMENT ON COLUMN ED0636T_TBL.HNSHTS_CHSH_TTMN_DNS_CM IS '搬出駐車建物段差センチ'
/
COMMENT ON COLUMN ED0636T_TBL.HANSHUTSU_HANNYUGUCHIHABA_CM IS '搬出搬入口幅センチ'
/
COMMENT ON COLUMN ED0636T_TBL.HNSHTS_STCH_BSH_DNSAR_FLG IS '搬出設置場所段差有フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.HNSHTS_STCH_BSH_DNS_SURYO IS '搬出設置場所段差数量'
/
COMMENT ON COLUMN ED0636T_TBL.HNSHTS_STCH_BSH_DNS_CM IS '搬出設置場所段差センチ'
/
COMMENT ON COLUMN ED0636T_TBL.HANSHUTSU_KAI IS '搬出階'
/
COMMENT ON COLUMN ED0636T_TBL.HANSHUTSU_ELEVATOR_SHIYOKA_FLG IS '搬出エレベーター使用可フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.HNSHTS_ELEVATOR_DNSAR_FLG IS '搬出エレベーター段差有フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.HANSHUTSU_ELEVATOR_DANSA_CM IS '搬出エレベーター段差センチ'
/
COMMENT ON COLUMN ED0636T_TBL.HANSHUTSU_KAIDAN_KEIJO_KBN IS '搬出階段形状区分'
/
COMMENT ON COLUMN ED0636T_TBL.HNSHTSZ_B_HB_150_CM_IJ_FLG IS '搬出図Ｂ幅１５０センチ以上フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.HANSHUTSUZU_B_HABA_CM IS '搬出図Ｂ幅センチ'
/
COMMENT ON COLUMN ED0636T_TBL.HNSHTSZ_A_HB_120_CM_IJ_FLG IS '搬出図Ａ幅１２０センチ以上フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.HANSHUTSUZU_A_HABA_CM IS '搬出図Ａ幅センチ'
/
COMMENT ON COLUMN ED0636T_TBL.HANSHUTSU_ODORIBAYOKO_CM IS '搬出踊り場横センチ'
/
COMMENT ON COLUMN ED0636T_TBL.HANSHUTSU_ODORIBATATE_CM IS '搬出踊り場縦センチ'
/
COMMENT ON COLUMN ED0636T_TBL.HANSHUTSU_KAIDAN_KAKUDO_SURYO IS '搬出階段角度数量'
/
COMMENT ON COLUMN ED0636T_TBL.HANNYU_CHUSHAJO_UMU_KBN IS '搬入駐車場有無区分'
/
COMMENT ON COLUMN ED0636T_TBL.HANNYU_NIOROSHIKA_FLG IS '搬入荷降ろし可フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.HNNY_CHSHJ_TKS_SIGNAR_FLG IS '搬入駐車場高さ制限有フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.HANNYU_CHUSHAJO_TAKASA_M IS '搬入駐車場高さメートル'
/
COMMENT ON COLUMN ED0636T_TBL.HANNYU_SETCHI_BASHO_KYORI_M IS '搬入設置場所距離メートル'
/
COMMENT ON COLUMN ED0636T_TBL.HNNY_NRIRK_TRUCK_SHRI_KBN IS '搬入乗入可トラック種類区分'
/
COMMENT ON COLUMN ED0636T_TBL.HNNY_CHSH_TTMN_DNSAR_FLG IS '搬入駐車建物段差有フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.HANNYU_CHUSHA_TATEMONO_DANSASU IS '搬入駐車建物段差数'
/
COMMENT ON COLUMN ED0636T_TBL.HNNY_CHSH_TTMN_DNS_CM IS '搬入駐車建物段差センチ'
/
COMMENT ON COLUMN ED0636T_TBL.HANNYU_HANNYUGUCHIHABA_CM IS '搬入搬入口幅センチ'
/
COMMENT ON COLUMN ED0636T_TBL.HNNY_STCH_BSH_DNSAR_FLG IS '搬入設置場所段差有フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.HNNY_STCH_BSH_DNS_SURYO IS '搬入設置場所段差数量'
/
COMMENT ON COLUMN ED0636T_TBL.HANNYU_SETCHI_BASHO_DANSA_CM IS '搬入設置場所段差センチ'
/
COMMENT ON COLUMN ED0636T_TBL.HANNYU_KAI IS '搬入階'
/
COMMENT ON COLUMN ED0636T_TBL.HANNYU_ELEVATOR_SHIYOKA_FLG IS '搬入エレベーター使用可フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.HANNYU_ELEVATOR_DANSAARI_FLG IS '搬入エレベーター段差有フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.HANNYU_ELEVATOR_DANSA_CM IS '搬入エレベーター段差センチ'
/
COMMENT ON COLUMN ED0636T_TBL.HANNYU_KAIDAN_KEIJO_KBN IS '搬入階段形状区分'
/
COMMENT ON COLUMN ED0636T_TBL.HANNYUZU_B_HABA_150_CM_IJO_FLG IS '搬入図Ｂ幅１５０センチ以上フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.HANNYUZU_B_HABA_CM IS '搬入図Ｂ幅センチ'
/
COMMENT ON COLUMN ED0636T_TBL.HANNYUZU_A_HABA_120_CM_IJO_FLG IS '搬入図Ａ幅１２０センチ以上フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.HANNYUZU_A_HABA_CM IS '搬入図Ａ幅センチ'
/
COMMENT ON COLUMN ED0636T_TBL.HANNYU_ODORIBAYOKO_CM IS '搬入踊り場横センチ'
/
COMMENT ON COLUMN ED0636T_TBL.HANNYU_ODORIBATATE_CM IS '搬入踊り場縦センチ'
/
COMMENT ON COLUMN ED0636T_TBL.HANNYU_KAIDAN_KAKUDO_SURYO IS '搬入階段角度数量'
/
COMMENT ON COLUMN ED0636T_TBL.HANNYU_JOKAI_HOHO_KBN IS '搬入上階方法区分'
/
COMMENT ON COLUMN ED0636T_TBL.SHITAMI_KIBO_YMD IS '下見希望年月日'
/
COMMENT ON COLUMN ED0636T_TBL.SHITAMI_KIBO_TM IS '下見希望時刻'
/
COMMENT ON COLUMN ED0636T_TBL.HNNY_SGYSH_TDKDZM_FLG IS '搬入作業者届出済フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.HANNYU_PARAMETER_SETTEISHA_KBN IS '搬入パラメータ設定者区分'
/
COMMENT ON COLUMN ED0636T_TBL.HANNYU_PARAMETER_SOFUYO_FLG IS '搬入パラメータ送付要フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.HANNYU_HANSHUTSU_TOKKI_JIKO_1 IS '搬入搬出特記事項１'
/
COMMENT ON COLUMN ED0636T_TBL.JIKO_KINKYU_TAIO_FLG IS '事故緊急対応フラグ'
/
COMMENT ON COLUMN ED0636T_TBL.GENCHI_CHOSA_YOTEI_TM IS '現地調査予定時刻'
/
COMMENT ON COLUMN ED0636T_TBL.TNYMT_KEISO_JISSHI_JIGYOSHO_CD IS '転用元警送実施事業所コード'
/
COMMENT ON COLUMN ED0636T_TBL.TNYMT_KEISO_JISSHI_JIGYOSHO_NM IS '転用元警送実施事業所名称'
/
COMMENT ON COLUMN ED0636T_TBL.TNYMT_KIKAI_JISSHI_JIGYOSHO_CD IS '転用元機械実施事業所コード'
/
COMMENT ON COLUMN ED0636T_TBL.TNYMT_KIKAI_JISSHI_JIGYOSHO_NM IS '転用元機械実施事業所名称'
/
COMMENT ON COLUMN ED0636T_TBL.TNYMT_NYUSHUKKINKI_GOKI_NO IS '転用元入出金機号機番号'
/
COMMENT ON COLUMN ED0636T_TBL.TNYMT_NYSHKKNK_KISN_SHBTS_CD IS '転用元入出金機回線種別コード'
/
COMMENT ON COLUMN ED0636T_TBL.TNYMT_NYKNK_SHHN_STCH_HH_KBN IS '転用元入金機商品設置方法区分'
/
COMMENT ON COLUMN ED0636T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0636T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0636T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0636T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0636T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0636T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0636T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0636T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0636T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0636T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0636T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0636T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
