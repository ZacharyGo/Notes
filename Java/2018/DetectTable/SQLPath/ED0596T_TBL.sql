﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0596T_TBL.sql
-- 物理名：ED0596T_TBL
-- 論理名：契約ＭＭＫテーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0596T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0596T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KEIYAKU_ID  CHAR(18) NOT NULL --「契約ＩＤ」
	,KOJI_YOBI_KBN  CHAR(1) NOT NULL --「工事曜日区分」
	,KOJI_JIKANTAI_KBN  CHAR(1) NOT NULL --「工事時間帯区分」
	,KIKAI_KEIBI_SHUBETSU_KBN  CHAR(1) NOT NULL --「機械警備種別区分」
	,SEIGYO_SOCHI_HIMMEI_CD  CHAR(8) --「制御装置品名コード」
	,SOCHI_KYOYUARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「装置共有有フラグ」
	,SIGY_SCH_OYJCH_KIYK_NO  CHAR(15) --「制御装置親受注契約番号」
	,SHUKAISEN_SHUBETSU_CD  CHAR(3) --「主回線種別コード」
	,SHUKAISEN_SHOYU_KBN  CHAR(1) NOT NULL --「主回線所有区分」
	,SHUKAISEN_KYOYUARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「主回線共有有フラグ」
	,SHUKAISEN_OYAJUCHU_KEIYAKU_NO  CHAR(15) --「主回線親受注契約番号」
	,FUKUKAISEN_SHUBETSU_CD  CHAR(3) --「副回線種別コード」
	,FUKUKAISEN_SHOYU_KBN  CHAR(1) NOT NULL --「副回線所有区分」
	,FUKUKAISEN_KYOYUARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「副回線共有有フラグ」
	,FUKUKAISEN_OYAJUCHU_KEIYAKU_NO  CHAR(15) --「副回線親受注契約番号」
	,SHUKAISEN_CHOSA_KEKKA_CD  CHAR(2) --「主回線調査結果コード」
	,SHUKAISEN_DEMPA_LEVEL_NAIYO  VARCHAR2(100) --「主回線電波レベル内容」
	,FUKUKAISEN_CHOSA_KEKKA_CD  CHAR(2) --「副回線調査結果コード」
	,FUKUKAISEN_DEMPA_LEVEL_NAIYO  VARCHAR2(100) --「副回線電波レベル内容」
	,TAIKISHO_SHOYO_JIKAN  NUMBER(9,0) DEFAULT '0' NOT NULL --「待機所所要時間」
	,TAIKISHO_KYORI_M  NUMBER(12,3) DEFAULT '0' NOT NULL --「待機所距離メートル」
	,YAKAN_TAIKISHO_SHOYO_JIKAN  NUMBER(9,0) DEFAULT '0' NOT NULL --「夜間待機所所要時間」
	,YAKAN_TAIKISHO_KYORI_M  NUMBER(12,3) DEFAULT '0' NOT NULL --「夜間待機所距離メートル」
	,MUSHO_SHUTSUDO_KAISU_KBN  CHAR(1) NOT NULL --「無償出動回数区分」
	,SUBETE_MUSHO_JOKEN_NAIYO  VARCHAR2(30) --「すべて無償条件内容」
	,GEKKAN_MUSHO_SHUTSUDO_KAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「月間無償出動回数」
	,SONOTA_MUSHO_JOKEN_NAIYO  VARCHAR2(30) --「その他無償条件内容」
	,MSH_SHTSD_KAISU_SHKI_KISH_D  CHAR(2) --「無償出動回数集計開始日」
	,MSH_SHTSD_KAISU_SHKI_SHRY_D  CHAR(2) --「無償出動回数集計終了日」
	,SEIKYUSHO_TEMPLATE_NO  CHAR(14) --「請求書テンプレート番号」
	,SHUTSUDO_KAKIN_BIKO  VARCHAR2(100) --「出動課金備考」
	,SHTSD_KKN_TRK_TSCH_FLG  CHAR(1) DEFAULT '0' NOT NULL --「出動課金登録通知フラグ」
	,KEIYAKU_YM_KBN  CHAR(1) NOT NULL --「契約年月区分」
	,BISH_GNDGK_1_TMP_1_JK_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「賠償限度額１店舗１事故金額」
	,SHINSEI_SHONIN_CMNT  VARCHAR2(200) --「申請承認コメント」
	,SONOTA_SHUKAISEN_SHUBETSU_NM  VARCHAR2(60) --「その他主回線種別名称」
	,SONOTA_FUKUKAISEN_SHUBETSU_NM  VARCHAR2(60) --「その他副回線種別名称」
	,MMK_KISHU_CD  CHAR(4) --「ＭＭＫ機種コード」
	,TAIKISHO_CD  CHAR(4) --「待機所コード」
	,YAKAN_TAIKISHO_CD  CHAR(4) --「夜間待機所コード」
	,SHUKAISEN_KAITSU_JOKYO_KBN  CHAR(1) NOT NULL --「主回線開通状況区分」
	,SHUKAISEN_KAITSU_YOTEI_YMD  DATE --「主回線開通予定年月日」
	,FUKUKAISEN_KAITSU_JOKYO_KBN  CHAR(1) NOT NULL --「副回線開通状況区分」
	,FUKUKAISEN_KAITSU_YOTEI_YMD  DATE --「副回線開通予定年月日」
	,ROUTER_KATASHIKI_NM  VARCHAR2(15) --「ルータ型式名称」
	,AKI_PORT_ARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「空きポート有フラグ」
	,NETWORK_KANRISHAARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「ネットワーク管理者有フラグ」
	,NETWORK_KANRISHA_NM  VARCHAR2(60) --「ネットワーク管理者氏名」
	,KOJI_TOJITSU_TACHIAIYO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「工事当日立会い要フラグ」
	,JH_TSSHN_STCHSK_CHNRY_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「情報通信設置先賃料金額」
	,COSMO_KHNRYKN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「コスモ基本料金金額」
	,ROUTER_STCH_BSH_ZMN_KSIAR_FLG  CHAR(1) DEFAULT '0' NOT NULL --「ルータ設置場所図面記載有フラグ」
	,KKIKIB_GTSGK_KHNRYKN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「機械警備月額基本料金金額」
	,KIS_KHNRYKN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「警送基本料金金額」
	,KIS_RNG_KHNRYKN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「警送臨時料金金額」
	,JOHO_TSUSHIN_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「情報通信料金金額」
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
	,CONSTRAINT ED0596T_PK PRIMARY KEY(
	 KEIYAKU_ID
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0596T_TBL IS '契約ＭＭＫテーブル'
/

COMMENT ON COLUMN ED0596T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0596T_TBL.KEIYAKU_ID IS '契約ＩＤ'
/
COMMENT ON COLUMN ED0596T_TBL.KOJI_YOBI_KBN IS '工事曜日区分'
/
COMMENT ON COLUMN ED0596T_TBL.KOJI_JIKANTAI_KBN IS '工事時間帯区分'
/
COMMENT ON COLUMN ED0596T_TBL.KIKAI_KEIBI_SHUBETSU_KBN IS '機械警備種別区分'
/
COMMENT ON COLUMN ED0596T_TBL.SEIGYO_SOCHI_HIMMEI_CD IS '制御装置品名コード'
/
COMMENT ON COLUMN ED0596T_TBL.SOCHI_KYOYUARI_FLG IS '装置共有有フラグ'
/
COMMENT ON COLUMN ED0596T_TBL.SIGY_SCH_OYJCH_KIYK_NO IS '制御装置親受注契約番号'
/
COMMENT ON COLUMN ED0596T_TBL.SHUKAISEN_SHUBETSU_CD IS '主回線種別コード'
/
COMMENT ON COLUMN ED0596T_TBL.SHUKAISEN_SHOYU_KBN IS '主回線所有区分'
/
COMMENT ON COLUMN ED0596T_TBL.SHUKAISEN_KYOYUARI_FLG IS '主回線共有有フラグ'
/
COMMENT ON COLUMN ED0596T_TBL.SHUKAISEN_OYAJUCHU_KEIYAKU_NO IS '主回線親受注契約番号'
/
COMMENT ON COLUMN ED0596T_TBL.FUKUKAISEN_SHUBETSU_CD IS '副回線種別コード'
/
COMMENT ON COLUMN ED0596T_TBL.FUKUKAISEN_SHOYU_KBN IS '副回線所有区分'
/
COMMENT ON COLUMN ED0596T_TBL.FUKUKAISEN_KYOYUARI_FLG IS '副回線共有有フラグ'
/
COMMENT ON COLUMN ED0596T_TBL.FUKUKAISEN_OYAJUCHU_KEIYAKU_NO IS '副回線親受注契約番号'
/
COMMENT ON COLUMN ED0596T_TBL.SHUKAISEN_CHOSA_KEKKA_CD IS '主回線調査結果コード'
/
COMMENT ON COLUMN ED0596T_TBL.SHUKAISEN_DEMPA_LEVEL_NAIYO IS '主回線電波レベル内容'
/
COMMENT ON COLUMN ED0596T_TBL.FUKUKAISEN_CHOSA_KEKKA_CD IS '副回線調査結果コード'
/
COMMENT ON COLUMN ED0596T_TBL.FUKUKAISEN_DEMPA_LEVEL_NAIYO IS '副回線電波レベル内容'
/
COMMENT ON COLUMN ED0596T_TBL.TAIKISHO_SHOYO_JIKAN IS '待機所所要時間'
/
COMMENT ON COLUMN ED0596T_TBL.TAIKISHO_KYORI_M IS '待機所距離メートル'
/
COMMENT ON COLUMN ED0596T_TBL.YAKAN_TAIKISHO_SHOYO_JIKAN IS '夜間待機所所要時間'
/
COMMENT ON COLUMN ED0596T_TBL.YAKAN_TAIKISHO_KYORI_M IS '夜間待機所距離メートル'
/
COMMENT ON COLUMN ED0596T_TBL.MUSHO_SHUTSUDO_KAISU_KBN IS '無償出動回数区分'
/
COMMENT ON COLUMN ED0596T_TBL.SUBETE_MUSHO_JOKEN_NAIYO IS 'すべて無償条件内容'
/
COMMENT ON COLUMN ED0596T_TBL.GEKKAN_MUSHO_SHUTSUDO_KAISU IS '月間無償出動回数'
/
COMMENT ON COLUMN ED0596T_TBL.SONOTA_MUSHO_JOKEN_NAIYO IS 'その他無償条件内容'
/
COMMENT ON COLUMN ED0596T_TBL.MSH_SHTSD_KAISU_SHKI_KISH_D IS '無償出動回数集計開始日'
/
COMMENT ON COLUMN ED0596T_TBL.MSH_SHTSD_KAISU_SHKI_SHRY_D IS '無償出動回数集計終了日'
/
COMMENT ON COLUMN ED0596T_TBL.SEIKYUSHO_TEMPLATE_NO IS '請求書テンプレート番号'
/
COMMENT ON COLUMN ED0596T_TBL.SHUTSUDO_KAKIN_BIKO IS '出動課金備考'
/
COMMENT ON COLUMN ED0596T_TBL.SHTSD_KKN_TRK_TSCH_FLG IS '出動課金登録通知フラグ'
/
COMMENT ON COLUMN ED0596T_TBL.KEIYAKU_YM_KBN IS '契約年月区分'
/
COMMENT ON COLUMN ED0596T_TBL.BISH_GNDGK_1_TMP_1_JK_AMT IS '賠償限度額１店舗１事故金額'
/
COMMENT ON COLUMN ED0596T_TBL.SHINSEI_SHONIN_CMNT IS '申請承認コメント'
/
COMMENT ON COLUMN ED0596T_TBL.SONOTA_SHUKAISEN_SHUBETSU_NM IS 'その他主回線種別名称'
/
COMMENT ON COLUMN ED0596T_TBL.SONOTA_FUKUKAISEN_SHUBETSU_NM IS 'その他副回線種別名称'
/
COMMENT ON COLUMN ED0596T_TBL.MMK_KISHU_CD IS 'ＭＭＫ機種コード'
/
COMMENT ON COLUMN ED0596T_TBL.TAIKISHO_CD IS '待機所コード'
/
COMMENT ON COLUMN ED0596T_TBL.YAKAN_TAIKISHO_CD IS '夜間待機所コード'
/
COMMENT ON COLUMN ED0596T_TBL.SHUKAISEN_KAITSU_JOKYO_KBN IS '主回線開通状況区分'
/
COMMENT ON COLUMN ED0596T_TBL.SHUKAISEN_KAITSU_YOTEI_YMD IS '主回線開通予定年月日'
/
COMMENT ON COLUMN ED0596T_TBL.FUKUKAISEN_KAITSU_JOKYO_KBN IS '副回線開通状況区分'
/
COMMENT ON COLUMN ED0596T_TBL.FUKUKAISEN_KAITSU_YOTEI_YMD IS '副回線開通予定年月日'
/
COMMENT ON COLUMN ED0596T_TBL.ROUTER_KATASHIKI_NM IS 'ルータ型式名称'
/
COMMENT ON COLUMN ED0596T_TBL.AKI_PORT_ARI_FLG IS '空きポート有フラグ'
/
COMMENT ON COLUMN ED0596T_TBL.NETWORK_KANRISHAARI_FLG IS 'ネットワーク管理者有フラグ'
/
COMMENT ON COLUMN ED0596T_TBL.NETWORK_KANRISHA_NM IS 'ネットワーク管理者氏名'
/
COMMENT ON COLUMN ED0596T_TBL.KOJI_TOJITSU_TACHIAIYO_FLG IS '工事当日立会い要フラグ'
/
COMMENT ON COLUMN ED0596T_TBL.JH_TSSHN_STCHSK_CHNRY_AMT IS '情報通信設置先賃料金額'
/
COMMENT ON COLUMN ED0596T_TBL.COSMO_KHNRYKN_AMT IS 'コスモ基本料金金額'
/
COMMENT ON COLUMN ED0596T_TBL.ROUTER_STCH_BSH_ZMN_KSIAR_FLG IS 'ルータ設置場所図面記載有フラグ'
/
COMMENT ON COLUMN ED0596T_TBL.KKIKIB_GTSGK_KHNRYKN_AMT IS '機械警備月額基本料金金額'
/
COMMENT ON COLUMN ED0596T_TBL.KIS_KHNRYKN_AMT IS '警送基本料金金額'
/
COMMENT ON COLUMN ED0596T_TBL.KIS_RNG_KHNRYKN_AMT IS '警送臨時料金金額'
/
COMMENT ON COLUMN ED0596T_TBL.JOHO_TSUSHIN_RYOKIN_AMT IS '情報通信料金金額'
/
COMMENT ON COLUMN ED0596T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0596T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0596T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0596T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0596T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0596T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0596T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0596T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0596T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0596T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0596T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0596T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
