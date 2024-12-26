﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0611T_TBL.sql
-- 物理名：ED0611T_TBL
-- 論理名：契約情報通信テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0611T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0611T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KEIYAKU_ID  CHAR(18) NOT NULL --「契約ＩＤ」
	,KIYKSK_TRHKSK_BSH_CD  CHAR(4) --「契約先取引先部署コード」
	,TAISHOSAKI_TANTOSHA_NM  VARCHAR2(60) --「対象先担当者氏名」
	,TAISHOSAKI_TANTOSHA_DENWA_NO  VARCHAR2(20) --「対象先担当者電話番号」
	,HONTAI_JOHO_SHUBETSU_KBN  CHAR(2) NOT NULL --「本体情報種別区分」
	,KEIYAKU_YM_KBN  CHAR(1) NOT NULL --「契約年月区分」
	,NENGAKU_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「年額料金金額」
	,NEBIKI_CD  CHAR(6) --「値引コード」
	,KOGAKU_JUCHU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「高額受注金額」
	,MUSHO_SHUTSUDO_KAISU_KBN  CHAR(1) NOT NULL --「無償出動回数区分」
	,SHTSD_KKN_SBT_MSH_RIYU  VARCHAR2(100) --「出動課金すべて無償理由」
	,GEKKAN_MUSHO_SHUTSUDO_KAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「月間無償出動回数」
	,SONOTA_MUSHO_JOKEN_NAIYO  VARCHAR2(30) --「その他無償条件内容」
	,YUSHO_SHUTSUDO_RYOKIN_KBN  CHAR(1) NOT NULL --「有償出動料金区分」
	,YUSHO_SHUTSUDO_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「有償出動料金金額」
	,SONOTA_YUSHO_JOKEN_NAIYO  VARCHAR2(30) --「その他有償条件内容」
	,SEIKYUSHO_TEMPLATE_NO  CHAR(14) --「請求書テンプレート番号」
	,SHUTSUDO_KAKIN_BIKO  VARCHAR2(100) --「出動課金備考」
	,MSH_SHTSD_KAISU_SHKI_KISH_D  CHAR(2) --「無償出動回数集計開始日」
	,MSH_SHTSD_KAISU_SHKI_SHRY_D  CHAR(2) --「無償出動回数集計終了日」
	,SHTSD_KKN_TRK_TSCH_FLG  CHAR(1) DEFAULT '0' NOT NULL --「出動課金登録通知フラグ」
	,TISHSK_KISN_MTSMR_TIJ_AMT_KBN  CHAR(1) NOT NULL --「対象先回線見積提示金額区分」
	,TAISHOSAKI_MITSUMORI_TEIJI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「対象先見積提示金額」
	,KIHON_RYOKIN_KBN  CHAR(2) NOT NULL --「基本料金区分」
	,KOSHO_SAGYOARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「高所作業有フラグ」
	,SHISETSU_KANKEI_JISSHISHA_KBN  CHAR(1) NOT NULL --「施設関係実施者区分」
	,SNT_SHSTS_KNKI_JSSHSH_NAIYO  VARCHAR2(40) --「その他施設関係実施者内容」
	,JISSHIJI_NYUKO_HOHO_KBN  CHAR(1) NOT NULL --「実施時入構方法区分」
	,SNT_JSSHJ_NYK_HH_NAIYO  VARCHAR2(40) --「その他実施時入構方法内容」
	,GYOMU_JISSHI_KAISHI_YMD  DATE --「業務実施開始年月日」
	,GYOMU_JISSHI_SHURYO_YMD  DATE --「業務実施終了年月日」
	,HIKO_KINSHI_KUIKIARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「飛行禁止区域有フラグ」
	,SHISETSU_KBN  CHAR(1) NOT NULL --「施設区分」
	,SOKO_KANRI_SHISETSU_MENSEKI  NUMBER(12,3) DEFAULT '0' NOT NULL --「倉庫管理施設面積」
	,SONOTA_SHISETSU_NAIYO  VARCHAR2(20) --「その他施設内容」
	,SONOTA_SHISETSU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「その他施設金額」
	,GOOGLE_MAP_HYOJIARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「グーグルマップ表示有フラグ」
	,KOTEISA_KBN  CHAR(1) NOT NULL --「高低差区分」
	,SODENSENARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「送電線有フラグ」
	,SONOTA_SHOGAIARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「その他障害有フラグ」
	,SONOTA_SHOGAI_NAIYO  VARCHAR2(100) --「その他障害内容」
	,RIHATCHAKUJO_SHOYU_FLG  CHAR(1) DEFAULT '0' NOT NULL --「離発着場所有フラグ」
	,KINRIN_HIKOJOARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「近隣飛行場有フラグ」
	,RINSETSU_MINKAARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「隣接民家有フラグ」
	,SHUHEN_KANKYO_KBN  CHAR(1) NOT NULL --「周辺環境区分」
	,SONOTA_SHUHEN_KANKYO_NAIYO  VARCHAR2(100) --「その他周辺環境内容」
	,SONOTA_CHUITEN_NAIYO  VARCHAR2(100) --「その他注意点内容」
	,ALSOK_KUSATSU_SERVICE_BIKO  VARCHAR2(100) --「ＡＬＳＯＫ空撮サービス備考」
	,SETCHI_KIKI_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「設置機器数量」
	,SETCHI_BASHO_NM  VARCHAR2(60) --「設置場所名称」
	,HIJO_HOSO_SETSUBIARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「非常放送設備有フラグ」
	,KATASHIKI_NM  VARCHAR2(15) --「型式名称」
	,DENGENARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「電源有フラグ」
	,SETTEN_SHUTSURYOKU_FLG  CHAR(1) DEFAULT '0' NOT NULL --「接点出力フラグ」
	,ALSOK_KOJIARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「ＡＬＳＯＫ工事有フラグ」
	,KOJI_NAIYO  VARCHAR2(100) --「工事内容」
	,HYOJI_SOFT_YO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「表示ソフト要フラグ」
	,PERSONAL_COMPUTER_DAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「パソコン台数」
	,ALSOK_TAMMATSU_SETUP_ARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「ＡＬＳＯＫ端末セットアップ有フラグ」
	,HYOJI_TAMMATSUYO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「表示端末要フラグ」
	,HYOJI_TAMMATSU_DAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「表示端末台数」
	,JSN_ZFKRT_SNST_SERVICE_AR_FLG  CHAR(1) DEFAULT '0' NOT NULL --「地震増幅率算出サービス有フラグ」
	,KAISEN_SERVICE_KBN  CHAR(1) NOT NULL --「回線サービス区分」
	,KAISEN_SERVICE_NM_1  VARCHAR2(60) --「回線サービス名称１」
	,KAISEN_SERVICE_NM_2  VARCHAR2(60) --「回線サービス名称２」
	,KAISEN_SERVICE_NM_3  VARCHAR2(60) --「回線サービス名称３」
	,SONOTA_KAISEN_SERVICE_NM  VARCHAR2(60) --「その他回線サービス名称」
	,KAITSU_YOTEI_YMD  DATE --「開通予定年月日」
	,KAISEN_KAITSU_YOTEI_TM_H  CHAR(2) --「回線開通予定時刻時」
	,KNKY_JSHN_SKH_SYSTEM_BIKO  VARCHAR2(100) --「緊急地震速報システム備考」
	,SONOTA_SHIKAKU_YOBO_NAIYO  VARCHAR2(100) --「その他資格要望内容」
	,MEGA_SOLAR_SETSUBI_M_W  NUMBER(12,3) DEFAULT '0' NOT NULL --「メガソーラー設備メガワット」
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
	,CONSTRAINT ED0611T_PK PRIMARY KEY(
	 KEIYAKU_ID
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0611T_TBL IS '契約情報通信テーブル'
/

COMMENT ON COLUMN ED0611T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0611T_TBL.KEIYAKU_ID IS '契約ＩＤ'
/
COMMENT ON COLUMN ED0611T_TBL.KIYKSK_TRHKSK_BSH_CD IS '契約先取引先部署コード'
/
COMMENT ON COLUMN ED0611T_TBL.TAISHOSAKI_TANTOSHA_NM IS '対象先担当者氏名'
/
COMMENT ON COLUMN ED0611T_TBL.TAISHOSAKI_TANTOSHA_DENWA_NO IS '対象先担当者電話番号'
/
COMMENT ON COLUMN ED0611T_TBL.HONTAI_JOHO_SHUBETSU_KBN IS '本体情報種別区分'
/
COMMENT ON COLUMN ED0611T_TBL.KEIYAKU_YM_KBN IS '契約年月区分'
/
COMMENT ON COLUMN ED0611T_TBL.NENGAKU_RYOKIN_AMT IS '年額料金金額'
/
COMMENT ON COLUMN ED0611T_TBL.NEBIKI_CD IS '値引コード'
/
COMMENT ON COLUMN ED0611T_TBL.KOGAKU_JUCHU_AMT IS '高額受注金額'
/
COMMENT ON COLUMN ED0611T_TBL.MUSHO_SHUTSUDO_KAISU_KBN IS '無償出動回数区分'
/
COMMENT ON COLUMN ED0611T_TBL.SHTSD_KKN_SBT_MSH_RIYU IS '出動課金すべて無償理由'
/
COMMENT ON COLUMN ED0611T_TBL.GEKKAN_MUSHO_SHUTSUDO_KAISU IS '月間無償出動回数'
/
COMMENT ON COLUMN ED0611T_TBL.SONOTA_MUSHO_JOKEN_NAIYO IS 'その他無償条件内容'
/
COMMENT ON COLUMN ED0611T_TBL.YUSHO_SHUTSUDO_RYOKIN_KBN IS '有償出動料金区分'
/
COMMENT ON COLUMN ED0611T_TBL.YUSHO_SHUTSUDO_RYOKIN_AMT IS '有償出動料金金額'
/
COMMENT ON COLUMN ED0611T_TBL.SONOTA_YUSHO_JOKEN_NAIYO IS 'その他有償条件内容'
/
COMMENT ON COLUMN ED0611T_TBL.SEIKYUSHO_TEMPLATE_NO IS '請求書テンプレート番号'
/
COMMENT ON COLUMN ED0611T_TBL.SHUTSUDO_KAKIN_BIKO IS '出動課金備考'
/
COMMENT ON COLUMN ED0611T_TBL.MSH_SHTSD_KAISU_SHKI_KISH_D IS '無償出動回数集計開始日'
/
COMMENT ON COLUMN ED0611T_TBL.MSH_SHTSD_KAISU_SHKI_SHRY_D IS '無償出動回数集計終了日'
/
COMMENT ON COLUMN ED0611T_TBL.SHTSD_KKN_TRK_TSCH_FLG IS '出動課金登録通知フラグ'
/
COMMENT ON COLUMN ED0611T_TBL.TISHSK_KISN_MTSMR_TIJ_AMT_KBN IS '対象先回線見積提示金額区分'
/
COMMENT ON COLUMN ED0611T_TBL.TAISHOSAKI_MITSUMORI_TEIJI_AMT IS '対象先見積提示金額'
/
COMMENT ON COLUMN ED0611T_TBL.KIHON_RYOKIN_KBN IS '基本料金区分'
/
COMMENT ON COLUMN ED0611T_TBL.KOSHO_SAGYOARI_FLG IS '高所作業有フラグ'
/
COMMENT ON COLUMN ED0611T_TBL.SHISETSU_KANKEI_JISSHISHA_KBN IS '施設関係実施者区分'
/
COMMENT ON COLUMN ED0611T_TBL.SNT_SHSTS_KNKI_JSSHSH_NAIYO IS 'その他施設関係実施者内容'
/
COMMENT ON COLUMN ED0611T_TBL.JISSHIJI_NYUKO_HOHO_KBN IS '実施時入構方法区分'
/
COMMENT ON COLUMN ED0611T_TBL.SNT_JSSHJ_NYK_HH_NAIYO IS 'その他実施時入構方法内容'
/
COMMENT ON COLUMN ED0611T_TBL.GYOMU_JISSHI_KAISHI_YMD IS '業務実施開始年月日'
/
COMMENT ON COLUMN ED0611T_TBL.GYOMU_JISSHI_SHURYO_YMD IS '業務実施終了年月日'
/
COMMENT ON COLUMN ED0611T_TBL.HIKO_KINSHI_KUIKIARI_FLG IS '飛行禁止区域有フラグ'
/
COMMENT ON COLUMN ED0611T_TBL.SHISETSU_KBN IS '施設区分'
/
COMMENT ON COLUMN ED0611T_TBL.SOKO_KANRI_SHISETSU_MENSEKI IS '倉庫管理施設面積'
/
COMMENT ON COLUMN ED0611T_TBL.SONOTA_SHISETSU_NAIYO IS 'その他施設内容'
/
COMMENT ON COLUMN ED0611T_TBL.SONOTA_SHISETSU_AMT IS 'その他施設金額'
/
COMMENT ON COLUMN ED0611T_TBL.GOOGLE_MAP_HYOJIARI_FLG IS 'グーグルマップ表示有フラグ'
/
COMMENT ON COLUMN ED0611T_TBL.KOTEISA_KBN IS '高低差区分'
/
COMMENT ON COLUMN ED0611T_TBL.SODENSENARI_FLG IS '送電線有フラグ'
/
COMMENT ON COLUMN ED0611T_TBL.SONOTA_SHOGAIARI_FLG IS 'その他障害有フラグ'
/
COMMENT ON COLUMN ED0611T_TBL.SONOTA_SHOGAI_NAIYO IS 'その他障害内容'
/
COMMENT ON COLUMN ED0611T_TBL.RIHATCHAKUJO_SHOYU_FLG IS '離発着場所有フラグ'
/
COMMENT ON COLUMN ED0611T_TBL.KINRIN_HIKOJOARI_FLG IS '近隣飛行場有フラグ'
/
COMMENT ON COLUMN ED0611T_TBL.RINSETSU_MINKAARI_FLG IS '隣接民家有フラグ'
/
COMMENT ON COLUMN ED0611T_TBL.SHUHEN_KANKYO_KBN IS '周辺環境区分'
/
COMMENT ON COLUMN ED0611T_TBL.SONOTA_SHUHEN_KANKYO_NAIYO IS 'その他周辺環境内容'
/
COMMENT ON COLUMN ED0611T_TBL.SONOTA_CHUITEN_NAIYO IS 'その他注意点内容'
/
COMMENT ON COLUMN ED0611T_TBL.ALSOK_KUSATSU_SERVICE_BIKO IS 'ＡＬＳＯＫ空撮サービス備考'
/
COMMENT ON COLUMN ED0611T_TBL.SETCHI_KIKI_SURYO IS '設置機器数量'
/
COMMENT ON COLUMN ED0611T_TBL.SETCHI_BASHO_NM IS '設置場所名称'
/
COMMENT ON COLUMN ED0611T_TBL.HIJO_HOSO_SETSUBIARI_FLG IS '非常放送設備有フラグ'
/
COMMENT ON COLUMN ED0611T_TBL.KATASHIKI_NM IS '型式名称'
/
COMMENT ON COLUMN ED0611T_TBL.DENGENARI_FLG IS '電源有フラグ'
/
COMMENT ON COLUMN ED0611T_TBL.SETTEN_SHUTSURYOKU_FLG IS '接点出力フラグ'
/
COMMENT ON COLUMN ED0611T_TBL.ALSOK_KOJIARI_FLG IS 'ＡＬＳＯＫ工事有フラグ'
/
COMMENT ON COLUMN ED0611T_TBL.KOJI_NAIYO IS '工事内容'
/
COMMENT ON COLUMN ED0611T_TBL.HYOJI_SOFT_YO_FLG IS '表示ソフト要フラグ'
/
COMMENT ON COLUMN ED0611T_TBL.PERSONAL_COMPUTER_DAISU IS 'パソコン台数'
/
COMMENT ON COLUMN ED0611T_TBL.ALSOK_TAMMATSU_SETUP_ARI_FLG IS 'ＡＬＳＯＫ端末セットアップ有フラグ'
/
COMMENT ON COLUMN ED0611T_TBL.HYOJI_TAMMATSUYO_FLG IS '表示端末要フラグ'
/
COMMENT ON COLUMN ED0611T_TBL.HYOJI_TAMMATSU_DAISU IS '表示端末台数'
/
COMMENT ON COLUMN ED0611T_TBL.JSN_ZFKRT_SNST_SERVICE_AR_FLG IS '地震増幅率算出サービス有フラグ'
/
COMMENT ON COLUMN ED0611T_TBL.KAISEN_SERVICE_KBN IS '回線サービス区分'
/
COMMENT ON COLUMN ED0611T_TBL.KAISEN_SERVICE_NM_1 IS '回線サービス名称１'
/
COMMENT ON COLUMN ED0611T_TBL.KAISEN_SERVICE_NM_2 IS '回線サービス名称２'
/
COMMENT ON COLUMN ED0611T_TBL.KAISEN_SERVICE_NM_3 IS '回線サービス名称３'
/
COMMENT ON COLUMN ED0611T_TBL.SONOTA_KAISEN_SERVICE_NM IS 'その他回線サービス名称'
/
COMMENT ON COLUMN ED0611T_TBL.KAITSU_YOTEI_YMD IS '開通予定年月日'
/
COMMENT ON COLUMN ED0611T_TBL.KAISEN_KAITSU_YOTEI_TM_H IS '回線開通予定時刻時'
/
COMMENT ON COLUMN ED0611T_TBL.KNKY_JSHN_SKH_SYSTEM_BIKO IS '緊急地震速報システム備考'
/
COMMENT ON COLUMN ED0611T_TBL.SONOTA_SHIKAKU_YOBO_NAIYO IS 'その他資格要望内容'
/
COMMENT ON COLUMN ED0611T_TBL.MEGA_SOLAR_SETSUBI_M_W IS 'メガソーラー設備メガワット'
/
COMMENT ON COLUMN ED0611T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0611T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0611T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0611T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0611T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0611T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0611T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0611T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0611T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0611T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0611T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0611T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
