﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0568T_TBL.sql
-- 物理名：ED0568T_TBL
-- 論理名：受注警送テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0568T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0568T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) NOT NULL --「受注契約変更番号」
	,SEIGYO_SOCHI_HIMMEI_CD  CHAR(8) --「制御装置品名コード」
	,SOCHI_KYOYUARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「装置共有有フラグ」
	,SHUKAISEN_SHUBETSU_CD  CHAR(3) --「主回線種別コード」
	,SHUKAISEN_SHOYU_KBN  CHAR(1) NOT NULL --「主回線所有区分」
	,SHUKYOYU_KAISENARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「主共有回線有フラグ」
	,FUKUKAISEN_SHUBETSU_CD  CHAR(3) --「副回線種別コード」
	,FUKUKAISEN_SHOYU_KBN  CHAR(1) NOT NULL --「副回線所有区分」
	,FUKUKAISEN_KYOYUARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「副回線共有有フラグ」
	,SHUKAISEN_CHOSA_KEKKA_CD  CHAR(2) --「主回線調査結果コード」
	,SHUKAISEN_DEMPA_LEVEL_NAIYO  VARCHAR2(100) --「主回線電波レベル内容」
	,FUKUKAISEN_CHOSA_KEKKA_CD  CHAR(2) --「副回線調査結果コード」
	,FUKUKAISEN_DEMPA_LEVEL_NAIYO  VARCHAR2(100) --「副回線電波レベル内容」
	,NYSHKKNK_KISN_SHBTS_CD  CHAR(3) --「入出金機回線種別コード」
	,KAISEN_SHOYU_KBN  CHAR(1) NOT NULL --「回線所有区分」
	,MUSHO_SHUTSUDO_KAISU_KBN  CHAR(1) NOT NULL --「無償出動回数区分」
	,SUBETE_MUSHO_JOKEN_NAIYO  VARCHAR2(30) --「すべて無償条件内容」
	,GEKKAN_MUSHO_SHUTSUDO_KAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「月間無償出動回数」
	,SONOTA_MUSHO_JOKEN_NAIYO  VARCHAR2(30) --「その他無償条件内容」
	,YUSHO_SHUTSUDO_RYOKIN_KBN  CHAR(1) NOT NULL --「有償出動料金区分」
	,YUSHO_SHUTSUDO_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「有償出動料金金額」
	,SONOTA_YUSHO_JOKEN_NAIYO  VARCHAR2(30) --「その他有償条件内容」
	,KKN_SIKYSK_TRHKSK_CD  CHAR(9) --「課金請求先取引先コード」
	,SHUTSUDO_KAKIN_BIKO  VARCHAR2(100) --「出動課金備考」
	,HEIKIN_1_D_URIAGE_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「平均１日売上金額」
	,SHIHEI_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「紙幣枚数」
	,KOKA_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「硬貨枚数」
	,HAIKIN_1_D_GOKEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「配金１日合計金額」
	,RYGEKN_500_EMB_KMB_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「両替金５００円棒金棒数量」
	,SHIHEI_1_MAN_EN_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「紙幣１万円枚数」
	,RYGEKN_100_EMB_KMB_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「両替金１００円棒金棒数量」
	,SHIHEI_5_SEN_EN_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「紙幣５千円枚数」
	,RYOGAEKIN_50_EMBO_KANABO_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「両替金５０円棒金棒数量」
	,SHIHEI_SEN_EN_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「紙幣千円枚数」
	,RYOGAEKIN_10_EMBO_KANABO_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「両替金１０円棒金棒数量」
	,RYOGAEKIN_5_EMBO_KANABO_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「両替金５円棒金棒数量」
	,RYOGAEKIN_1_EMBO_KANABO_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「両替金１円棒金棒数量」
	,NYSHKKNK_FURIKOMI_D_SHITEI_CD  CHAR(3) --「入出金機振込日指定コード」
	,TSURISEN_HAIKINARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「釣銭配金有フラグ」
	,TSURISEN_HOKANKO_TOSAIARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「釣銭保管庫搭載有フラグ」
	,SHIKIN_CHOTATSU_HOHO_KBN  CHAR(1) NOT NULL --「資金調達方法区分」
	,TSURISEN_KOFU_HOHO_KBN  CHAR(1) NOT NULL --「釣銭交付方法区分」
	,HAIKIN_TSURISEN_AMT_JOGEN_KBN  CHAR(1) NOT NULL --「配金釣銭金額上限区分」
	,HAIKIN_TSURISEN_AMT_JOGEN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「配金釣銭金額上限金額」
	,SHUKAISEN_SHUBETSU_KBN  CHAR(1) NOT NULL --「主回線種別区分」
	,TSSHN_KISN_RYKN_FTNSH_KBN  CHAR(1) NOT NULL --「通信回線料金負担者区分」
	,JURYO_KAKIN_KEISAN_TANI_KBN  CHAR(1) NOT NULL --「従量課金計算単位区分」
	,KIKAI_KEIBI_SHUBETSU_KBN  CHAR(1) NOT NULL --「機械警備種別区分」
	,RYOGAEKI_KBN  CHAR(1) NOT NULL --「両替機区分」
	,RYOGAEKI_KISHU_CD  CHAR(8) --「両替機機種コード」
	,SIGY_SCH_OYJCH_KIYK_NO  CHAR(15) --「制御装置親受注契約番号」
	,KYY_SHKISN_OYJCH_KIYK_NO  CHAR(15) --「共有主回線親受注契約番号」
	,KYY_FKKISN_OYJCH_KIYK_NO  CHAR(15) --「共有副回線親受注契約番号」
	,BAISHO_GENDO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「賠償限度金額」
	,BAISHO_GENDOGAKU_KBN  CHAR(1) NOT NULL --「賠償限度額区分」
	,BISH_GNDGK_1_KIS_1_SHRY_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「賠償限度額１警送１車両金額」
	,BISH_GNDGK_1_TMP_1_JK_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「賠償限度額１店舗１事故金額」
	,TSURISEN_SAKUSEI_GYOMUARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「釣銭作成業務有フラグ」
	,URIAGEKIN_SEISA_GYOMUARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「売上金精査業務有フラグ」
	,MOCHIKOMI_KINYU_KIKAN_NM  VARCHAR2(30) --「持込金融機関名称」
	,YUSHO_SHUTSUDO_KAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「有償出動回数」
	,SONOTA_SHUKAISEN_SHUBETSU_NM  VARCHAR2(60) --「その他主回線種別名称」
	,SONOTA_FUKUKAISEN_SHUBETSU_NM  VARCHAR2(60) --「その他副回線種別名称」
	,SEIGYO_SOCHI_KYOYU_KBN  CHAR(1) NOT NULL --「制御装置共有区分」
	,SHIKIN_KANRIHI_GETSUGAKU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「資金管理費月額金額」
	,SHIKIN_KANRIHI_HIWARI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「資金管理費日割金額」
	,KINKOBU_BAISHO_GENDO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「金庫部賠償限度金額」
	,TSRSN_HKNKB_BISH_GND_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「釣銭保管庫部賠償限度金額」
	,SHKN_CHTTS_TSRY_SHHI_TNK_AMT  NUMBER(15,2) DEFAULT '0' NOT NULL --「資金調達手数料紙幣単価金額」
	,SHKN_CHTTS_TSRY_SHHI_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「資金調達手数料紙幣枚数」
	,SHKN_CHTTS_TSRY_SHHI_AMT  NUMBER(15,2) DEFAULT '0' NOT NULL --「資金調達手数料紙幣金額」
	,SHKN_CHTTS_TSRY_KK_TNK_AMT  NUMBER(15,2) DEFAULT '0' NOT NULL --「資金調達手数料硬貨単価金額」
	,SHKN_CHTTS_TSRY_KK_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「資金調達手数料硬貨枚数」
	,SHKN_CHTTS_TSRY_KK_AMT  NUMBER(15,2) DEFAULT '0' NOT NULL --「資金調達手数料硬貨金額」
	,SHKN_NYKN_TSRY_SHHI_TNK_AMT  NUMBER(15,2) DEFAULT '0' NOT NULL --「資金入金手数料紙幣単価金額」
	,SHKN_NYKN_TSRY_SHHI_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「資金入金手数料紙幣枚数」
	,SHKN_NYKN_TSRY_SHHI_AMT  NUMBER(15,2) DEFAULT '0' NOT NULL --「資金入金手数料紙幣金額」
	,SHKN_NYKN_TSRY_KK_TNK_AMT  NUMBER(15,2) DEFAULT '0' NOT NULL --「資金入金手数料硬貨単価金額」
	,SHKN_NYKN_TSRY_KK_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「資金入金手数料硬貨枚数」
	,SHIKIN_NYUKIN_TESURYO_KOKA_AMT  NUMBER(15,2) DEFAULT '0' NOT NULL --「資金入金手数料硬貨金額」
	,KTI_SHKN_CHTTS_TSRY_AMT  NUMBER(15,2) DEFAULT '0' NOT NULL --「固定資金調達手数料金額」
	,KTI_SHKN_NYKN_TSRY_AMT  NUMBER(15,2) DEFAULT '0' NOT NULL --「固定資金入金手数料金額」
	,SONOTA_HOKEN_KIBOARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「その他保険希望有フラグ」
	,RYOGAEKI_DAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「両替機台数」
	,KSJSJGS_KNKK_KBN  CHAR(1) NOT NULL --「警送実施事業所確認結果区分」
	,KSJSJGS_KNKK_JOKEN_NAIYO  VARCHAR2(30) --「警送実施事業所確認結果条件内容」
	,ENKKCH_RT_KKNN_KEKKA_KBN  CHAR(1) NOT NULL --「遠隔地離島確認結果区分」
	,ENKKCH_RT_UNYK_JKN_NAIYO  VARCHAR2(100) --「遠隔地離島運用可条件内容」
	,KIS_JSSH_JGYSH_KKNNSH_NM  VARCHAR2(60) --「警送実施事業所確認者氏名」
	,NYSHKKNK_DNGN_HISN_KJAR_FLG  CHAR(1) DEFAULT '0' NOT NULL --「入出金機電源配線工事有フラグ」
	,KOJI_KIBO_YOBI_KBN  CHAR(1) NOT NULL --「工事希望曜日区分」
	,KOJI_KIBO_JIKANTAI_KBN  CHAR(1) NOT NULL --「工事希望時間帯区分」
	,KEIBIYO_DENGEN_JOHO_KBN  CHAR(1) NOT NULL --「警備用電源情報区分」
	,KKI_KIB_DNGN_BNDMBN_AKNSH_FLG  CHAR(1) DEFAULT '0' NOT NULL --「機械警備電源分電盤空き無フラグ」
	,NYUSHUKKINKI_DENGEN_KBN  CHAR(1) NOT NULL --「入出金機電源区分」
	,NYSHKKNK_DNGN_BNDMBN_AKNSH_FLG  CHAR(1) DEFAULT '0' NOT NULL --「入出金機電源分電盤空き無フラグ」
	,SHUKAISEN_KYOYUARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「主回線共有有フラグ」
	,FUKUKAISEN_SHUBETSU_KBN  CHAR(1) NOT NULL --「副回線種別区分」
	,KOJI_TOJITSU_TACHIAIYO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「工事当日立会い要フラグ」
	,SHIKO_DONYUARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「試行導入有フラグ」
	,NYKNK_SHHN_STCH_HH_KBN  CHAR(1) NOT NULL --「入金機商品設置方法区分」
	,YUKAZAISHITSU_KBN  CHAR(1) NOT NULL --「床材質区分」
	,SONOTA_YUKAZAISHITSU_NAIYO  VARCHAR2(60) --「その他床材質内容」
	,ROUTER_KATASHIKI_NM  VARCHAR2(15) --「ルータ型式名称」
	,AKI_PORT_ARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「空きポート有フラグ」
	,NETWORK_KANRISHAARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「ネットワーク管理者有フラグ」
	,NETWORK_KANRISHA_NM  VARCHAR2(60) --「ネットワーク管理者氏名」
	,IP_ADDRESS_KBN  CHAR(1) NOT NULL --「ＩＰアドレス区分」
	,IP_ADDRESS  VARCHAR2(40) --「ＩＰアドレス」
	,DEFAULT_GATEWAY_ADDRESS  VARCHAR2(40) --「デフォルトゲートウェイアドレス」
	,SUB_NET_MASK_ADDRESS  VARCHAR2(40) --「サブネットマスクアドレス」
	,TSUSHIN_MODE_KBN  CHAR(1) NOT NULL --「通信モード区分」
	,TSUSHIN_SOKUDO_KBN  CHAR(1) NOT NULL --「通信速度区分」
	,DUPLEX_KBN  CHAR(1) NOT NULL --「デュプレックス区分」
	,BISH_GNDGK_1_KIS_1_JK_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「賠償限度額１警送１事故金額」
	,NYUSHUKKINKI_IP_ADDRESS_KBN  CHAR(1) NOT NULL --「入出金機ＩＰアドレス区分」
	,REPLACEARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「リプレース有フラグ」
	,REPLACE_PATTERN_KBN  CHAR(1) NOT NULL --「リプレースパターン区分」
	,NYKNK_URAGKN_KAISHU_KEISU_CD  CHAR(3) --「入金機売上金回収係数コード」
	,URIAGEKIN_KAISHU_HINDO_NAIYO  VARCHAR2(100) --「売上金回収頻度内容」
	,GYOSHU_CD  CHAR(4) --「業種コード」
	,KEISO_UNYO_JIGYOSHO_CD  CHAR(6) --「警送運用事業所コード」
	,GNKN_MCHKM_KNY_KKN_CD  CHAR(4) --「現金持込金融機関コード」
	,SHUYAKU_TEMPOSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「集約店舗数」
	,SHUKAISEN_KAITSU_JOKYO_KBN  CHAR(1) NOT NULL --「主回線開通状況区分」
	,SHUKAISEN_KAITSU_YOTEI_YMD  DATE --「主回線開通予定年月日」
	,FUKUKAISEN_KAITSU_JOKYO_KBN  CHAR(1) NOT NULL --「副回線開通状況区分」
	,FUKUKAISEN_KAITSU_YOTEI_YMD  DATE --「副回線開通予定年月日」
	,FURIKOMI_D_SHITEI_KBN  CHAR(1) NOT NULL --「振込日指定区分」
	,FURIKOMI_HOSHIKI_KBN  CHAR(1) NOT NULL --「振込方式区分」
	,MOCHIKOMI_TESURYO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「持込手数料金額」
	,TSURISEN_HAIKIN_HINDO_CD  CHAR(3) --「釣銭配金頻度コード」
	,MOCHIKOMI_TESURYO_KBN  CHAR(1) NOT NULL --「持込手数料区分」
	,ROUTER_STCH_BSH_ZMN_KSIAR_FLG  CHAR(1) DEFAULT '0' NOT NULL --「ルータ設置場所図面記載有フラグ」
	,RYOGAEKI_LEASE_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「両替機リース金額」
	,RYOGAEKI_HOSHU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「両替機保守金額」
	,KOJIHI_GTSGK_ANBN_ARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「工事費月額按分有フラグ」
	,TOKUBETSU_NEBIKI_NAIYO_KBN  CHAR(1) DEFAULT '0' NOT NULL --「特別値引内容区分」
	,TKBTS_NBK_KGN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「特別値引下限金額」
	,TKBTS_NBK_CMNT  VARCHAR2(500) --「特別値引コメント」
	,TKTI_KIYKSK_NBK_TRHKSK_CD  CHAR(9) --「特定契約先値引取引先コード」
	,TKTI_KIYKSK_NBK_KGN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「特定契約先値引下限金額」
	,TKTI_KIYKSK_NBK_CMNT  VARCHAR2(500) --「特定契約先値引コメント」
	,NYUSHUKKINKI_SETCHI_YOTEI_YMD  DATE --「入出金機設置予定年月日」
	,TSURISEN_KAISHU_HINDO_NISSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「釣銭回収頻度日数」
	,HAIKIN_KEISO_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「配金警送料金金額」
	,TSRSN_SKSI_RYKN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「釣銭作成料金金額」
	,TSRSN_TSRY_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「釣銭手数料金額」
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
	,CONSTRAINT ED0568T_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  JUCHU_KEIYAKU_HENKO_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0568T_TBL IS '受注警送テーブル'
/

COMMENT ON COLUMN ED0568T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0568T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED0568T_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED0568T_TBL.SEIGYO_SOCHI_HIMMEI_CD IS '制御装置品名コード'
/
COMMENT ON COLUMN ED0568T_TBL.SOCHI_KYOYUARI_FLG IS '装置共有有フラグ'
/
COMMENT ON COLUMN ED0568T_TBL.SHUKAISEN_SHUBETSU_CD IS '主回線種別コード'
/
COMMENT ON COLUMN ED0568T_TBL.SHUKAISEN_SHOYU_KBN IS '主回線所有区分'
/
COMMENT ON COLUMN ED0568T_TBL.SHUKYOYU_KAISENARI_FLG IS '主共有回線有フラグ'
/
COMMENT ON COLUMN ED0568T_TBL.FUKUKAISEN_SHUBETSU_CD IS '副回線種別コード'
/
COMMENT ON COLUMN ED0568T_TBL.FUKUKAISEN_SHOYU_KBN IS '副回線所有区分'
/
COMMENT ON COLUMN ED0568T_TBL.FUKUKAISEN_KYOYUARI_FLG IS '副回線共有有フラグ'
/
COMMENT ON COLUMN ED0568T_TBL.SHUKAISEN_CHOSA_KEKKA_CD IS '主回線調査結果コード'
/
COMMENT ON COLUMN ED0568T_TBL.SHUKAISEN_DEMPA_LEVEL_NAIYO IS '主回線電波レベル内容'
/
COMMENT ON COLUMN ED0568T_TBL.FUKUKAISEN_CHOSA_KEKKA_CD IS '副回線調査結果コード'
/
COMMENT ON COLUMN ED0568T_TBL.FUKUKAISEN_DEMPA_LEVEL_NAIYO IS '副回線電波レベル内容'
/
COMMENT ON COLUMN ED0568T_TBL.NYSHKKNK_KISN_SHBTS_CD IS '入出金機回線種別コード'
/
COMMENT ON COLUMN ED0568T_TBL.KAISEN_SHOYU_KBN IS '回線所有区分'
/
COMMENT ON COLUMN ED0568T_TBL.MUSHO_SHUTSUDO_KAISU_KBN IS '無償出動回数区分'
/
COMMENT ON COLUMN ED0568T_TBL.SUBETE_MUSHO_JOKEN_NAIYO IS 'すべて無償条件内容'
/
COMMENT ON COLUMN ED0568T_TBL.GEKKAN_MUSHO_SHUTSUDO_KAISU IS '月間無償出動回数'
/
COMMENT ON COLUMN ED0568T_TBL.SONOTA_MUSHO_JOKEN_NAIYO IS 'その他無償条件内容'
/
COMMENT ON COLUMN ED0568T_TBL.YUSHO_SHUTSUDO_RYOKIN_KBN IS '有償出動料金区分'
/
COMMENT ON COLUMN ED0568T_TBL.YUSHO_SHUTSUDO_RYOKIN_AMT IS '有償出動料金金額'
/
COMMENT ON COLUMN ED0568T_TBL.SONOTA_YUSHO_JOKEN_NAIYO IS 'その他有償条件内容'
/
COMMENT ON COLUMN ED0568T_TBL.KKN_SIKYSK_TRHKSK_CD IS '課金請求先取引先コード'
/
COMMENT ON COLUMN ED0568T_TBL.SHUTSUDO_KAKIN_BIKO IS '出動課金備考'
/
COMMENT ON COLUMN ED0568T_TBL.HEIKIN_1_D_URIAGE_AMT IS '平均１日売上金額'
/
COMMENT ON COLUMN ED0568T_TBL.SHIHEI_MAISU IS '紙幣枚数'
/
COMMENT ON COLUMN ED0568T_TBL.KOKA_MAISU IS '硬貨枚数'
/
COMMENT ON COLUMN ED0568T_TBL.HAIKIN_1_D_GOKEI_AMT IS '配金１日合計金額'
/
COMMENT ON COLUMN ED0568T_TBL.RYGEKN_500_EMB_KMB_SURYO IS '両替金５００円棒金棒数量'
/
COMMENT ON COLUMN ED0568T_TBL.SHIHEI_1_MAN_EN_MAISU IS '紙幣１万円枚数'
/
COMMENT ON COLUMN ED0568T_TBL.RYGEKN_100_EMB_KMB_SURYO IS '両替金１００円棒金棒数量'
/
COMMENT ON COLUMN ED0568T_TBL.SHIHEI_5_SEN_EN_MAISU IS '紙幣５千円枚数'
/
COMMENT ON COLUMN ED0568T_TBL.RYOGAEKIN_50_EMBO_KANABO_SURYO IS '両替金５０円棒金棒数量'
/
COMMENT ON COLUMN ED0568T_TBL.SHIHEI_SEN_EN_MAISU IS '紙幣千円枚数'
/
COMMENT ON COLUMN ED0568T_TBL.RYOGAEKIN_10_EMBO_KANABO_SURYO IS '両替金１０円棒金棒数量'
/
COMMENT ON COLUMN ED0568T_TBL.RYOGAEKIN_5_EMBO_KANABO_SURYO IS '両替金５円棒金棒数量'
/
COMMENT ON COLUMN ED0568T_TBL.RYOGAEKIN_1_EMBO_KANABO_SURYO IS '両替金１円棒金棒数量'
/
COMMENT ON COLUMN ED0568T_TBL.NYSHKKNK_FURIKOMI_D_SHITEI_CD IS '入出金機振込日指定コード'
/
COMMENT ON COLUMN ED0568T_TBL.TSURISEN_HAIKINARI_FLG IS '釣銭配金有フラグ'
/
COMMENT ON COLUMN ED0568T_TBL.TSURISEN_HOKANKO_TOSAIARI_FLG IS '釣銭保管庫搭載有フラグ'
/
COMMENT ON COLUMN ED0568T_TBL.SHIKIN_CHOTATSU_HOHO_KBN IS '資金調達方法区分'
/
COMMENT ON COLUMN ED0568T_TBL.TSURISEN_KOFU_HOHO_KBN IS '釣銭交付方法区分'
/
COMMENT ON COLUMN ED0568T_TBL.HAIKIN_TSURISEN_AMT_JOGEN_KBN IS '配金釣銭金額上限区分'
/
COMMENT ON COLUMN ED0568T_TBL.HAIKIN_TSURISEN_AMT_JOGEN_AMT IS '配金釣銭金額上限金額'
/
COMMENT ON COLUMN ED0568T_TBL.SHUKAISEN_SHUBETSU_KBN IS '主回線種別区分'
/
COMMENT ON COLUMN ED0568T_TBL.TSSHN_KISN_RYKN_FTNSH_KBN IS '通信回線料金負担者区分'
/
COMMENT ON COLUMN ED0568T_TBL.JURYO_KAKIN_KEISAN_TANI_KBN IS '従量課金計算単位区分'
/
COMMENT ON COLUMN ED0568T_TBL.KIKAI_KEIBI_SHUBETSU_KBN IS '機械警備種別区分'
/
COMMENT ON COLUMN ED0568T_TBL.RYOGAEKI_KBN IS '両替機区分'
/
COMMENT ON COLUMN ED0568T_TBL.RYOGAEKI_KISHU_CD IS '両替機機種コード'
/
COMMENT ON COLUMN ED0568T_TBL.SIGY_SCH_OYJCH_KIYK_NO IS '制御装置親受注契約番号'
/
COMMENT ON COLUMN ED0568T_TBL.KYY_SHKISN_OYJCH_KIYK_NO IS '共有主回線親受注契約番号'
/
COMMENT ON COLUMN ED0568T_TBL.KYY_FKKISN_OYJCH_KIYK_NO IS '共有副回線親受注契約番号'
/
COMMENT ON COLUMN ED0568T_TBL.BAISHO_GENDO_AMT IS '賠償限度金額'
/
COMMENT ON COLUMN ED0568T_TBL.BAISHO_GENDOGAKU_KBN IS '賠償限度額区分'
/
COMMENT ON COLUMN ED0568T_TBL.BISH_GNDGK_1_KIS_1_SHRY_AMT IS '賠償限度額１警送１車両金額'
/
COMMENT ON COLUMN ED0568T_TBL.BISH_GNDGK_1_TMP_1_JK_AMT IS '賠償限度額１店舗１事故金額'
/
COMMENT ON COLUMN ED0568T_TBL.TSURISEN_SAKUSEI_GYOMUARI_FLG IS '釣銭作成業務有フラグ'
/
COMMENT ON COLUMN ED0568T_TBL.URIAGEKIN_SEISA_GYOMUARI_FLG IS '売上金精査業務有フラグ'
/
COMMENT ON COLUMN ED0568T_TBL.MOCHIKOMI_KINYU_KIKAN_NM IS '持込金融機関名称'
/
COMMENT ON COLUMN ED0568T_TBL.YUSHO_SHUTSUDO_KAISU IS '有償出動回数'
/
COMMENT ON COLUMN ED0568T_TBL.SONOTA_SHUKAISEN_SHUBETSU_NM IS 'その他主回線種別名称'
/
COMMENT ON COLUMN ED0568T_TBL.SONOTA_FUKUKAISEN_SHUBETSU_NM IS 'その他副回線種別名称'
/
COMMENT ON COLUMN ED0568T_TBL.SEIGYO_SOCHI_KYOYU_KBN IS '制御装置共有区分'
/
COMMENT ON COLUMN ED0568T_TBL.SHIKIN_KANRIHI_GETSUGAKU_AMT IS '資金管理費月額金額'
/
COMMENT ON COLUMN ED0568T_TBL.SHIKIN_KANRIHI_HIWARI_AMT IS '資金管理費日割金額'
/
COMMENT ON COLUMN ED0568T_TBL.KINKOBU_BAISHO_GENDO_AMT IS '金庫部賠償限度金額'
/
COMMENT ON COLUMN ED0568T_TBL.TSRSN_HKNKB_BISH_GND_AMT IS '釣銭保管庫部賠償限度金額'
/
COMMENT ON COLUMN ED0568T_TBL.SHKN_CHTTS_TSRY_SHHI_TNK_AMT IS '資金調達手数料紙幣単価金額'
/
COMMENT ON COLUMN ED0568T_TBL.SHKN_CHTTS_TSRY_SHHI_MAISU IS '資金調達手数料紙幣枚数'
/
COMMENT ON COLUMN ED0568T_TBL.SHKN_CHTTS_TSRY_SHHI_AMT IS '資金調達手数料紙幣金額'
/
COMMENT ON COLUMN ED0568T_TBL.SHKN_CHTTS_TSRY_KK_TNK_AMT IS '資金調達手数料硬貨単価金額'
/
COMMENT ON COLUMN ED0568T_TBL.SHKN_CHTTS_TSRY_KK_MAISU IS '資金調達手数料硬貨枚数'
/
COMMENT ON COLUMN ED0568T_TBL.SHKN_CHTTS_TSRY_KK_AMT IS '資金調達手数料硬貨金額'
/
COMMENT ON COLUMN ED0568T_TBL.SHKN_NYKN_TSRY_SHHI_TNK_AMT IS '資金入金手数料紙幣単価金額'
/
COMMENT ON COLUMN ED0568T_TBL.SHKN_NYKN_TSRY_SHHI_MAISU IS '資金入金手数料紙幣枚数'
/
COMMENT ON COLUMN ED0568T_TBL.SHKN_NYKN_TSRY_SHHI_AMT IS '資金入金手数料紙幣金額'
/
COMMENT ON COLUMN ED0568T_TBL.SHKN_NYKN_TSRY_KK_TNK_AMT IS '資金入金手数料硬貨単価金額'
/
COMMENT ON COLUMN ED0568T_TBL.SHKN_NYKN_TSRY_KK_MAISU IS '資金入金手数料硬貨枚数'
/
COMMENT ON COLUMN ED0568T_TBL.SHIKIN_NYUKIN_TESURYO_KOKA_AMT IS '資金入金手数料硬貨金額'
/
COMMENT ON COLUMN ED0568T_TBL.KTI_SHKN_CHTTS_TSRY_AMT IS '固定資金調達手数料金額'
/
COMMENT ON COLUMN ED0568T_TBL.KTI_SHKN_NYKN_TSRY_AMT IS '固定資金入金手数料金額'
/
COMMENT ON COLUMN ED0568T_TBL.SONOTA_HOKEN_KIBOARI_FLG IS 'その他保険希望有フラグ'
/
COMMENT ON COLUMN ED0568T_TBL.RYOGAEKI_DAISU IS '両替機台数'
/
COMMENT ON COLUMN ED0568T_TBL.KSJSJGS_KNKK_KBN IS '警送実施事業所確認結果区分'
/
COMMENT ON COLUMN ED0568T_TBL.KSJSJGS_KNKK_JOKEN_NAIYO IS '警送実施事業所確認結果条件内容'
/
COMMENT ON COLUMN ED0568T_TBL.ENKKCH_RT_KKNN_KEKKA_KBN IS '遠隔地離島確認結果区分'
/
COMMENT ON COLUMN ED0568T_TBL.ENKKCH_RT_UNYK_JKN_NAIYO IS '遠隔地離島運用可条件内容'
/
COMMENT ON COLUMN ED0568T_TBL.KIS_JSSH_JGYSH_KKNNSH_NM IS '警送実施事業所確認者氏名'
/
COMMENT ON COLUMN ED0568T_TBL.NYSHKKNK_DNGN_HISN_KJAR_FLG IS '入出金機電源配線工事有フラグ'
/
COMMENT ON COLUMN ED0568T_TBL.KOJI_KIBO_YOBI_KBN IS '工事希望曜日区分'
/
COMMENT ON COLUMN ED0568T_TBL.KOJI_KIBO_JIKANTAI_KBN IS '工事希望時間帯区分'
/
COMMENT ON COLUMN ED0568T_TBL.KEIBIYO_DENGEN_JOHO_KBN IS '警備用電源情報区分'
/
COMMENT ON COLUMN ED0568T_TBL.KKI_KIB_DNGN_BNDMBN_AKNSH_FLG IS '機械警備電源分電盤空き無フラグ'
/
COMMENT ON COLUMN ED0568T_TBL.NYUSHUKKINKI_DENGEN_KBN IS '入出金機電源区分'
/
COMMENT ON COLUMN ED0568T_TBL.NYSHKKNK_DNGN_BNDMBN_AKNSH_FLG IS '入出金機電源分電盤空き無フラグ'
/
COMMENT ON COLUMN ED0568T_TBL.SHUKAISEN_KYOYUARI_FLG IS '主回線共有有フラグ'
/
COMMENT ON COLUMN ED0568T_TBL.FUKUKAISEN_SHUBETSU_KBN IS '副回線種別区分'
/
COMMENT ON COLUMN ED0568T_TBL.KOJI_TOJITSU_TACHIAIYO_FLG IS '工事当日立会い要フラグ'
/
COMMENT ON COLUMN ED0568T_TBL.SHIKO_DONYUARI_FLG IS '試行導入有フラグ'
/
COMMENT ON COLUMN ED0568T_TBL.NYKNK_SHHN_STCH_HH_KBN IS '入金機商品設置方法区分'
/
COMMENT ON COLUMN ED0568T_TBL.YUKAZAISHITSU_KBN IS '床材質区分'
/
COMMENT ON COLUMN ED0568T_TBL.SONOTA_YUKAZAISHITSU_NAIYO IS 'その他床材質内容'
/
COMMENT ON COLUMN ED0568T_TBL.ROUTER_KATASHIKI_NM IS 'ルータ型式名称'
/
COMMENT ON COLUMN ED0568T_TBL.AKI_PORT_ARI_FLG IS '空きポート有フラグ'
/
COMMENT ON COLUMN ED0568T_TBL.NETWORK_KANRISHAARI_FLG IS 'ネットワーク管理者有フラグ'
/
COMMENT ON COLUMN ED0568T_TBL.NETWORK_KANRISHA_NM IS 'ネットワーク管理者氏名'
/
COMMENT ON COLUMN ED0568T_TBL.IP_ADDRESS_KBN IS 'ＩＰアドレス区分'
/
COMMENT ON COLUMN ED0568T_TBL.IP_ADDRESS IS 'ＩＰアドレス'
/
COMMENT ON COLUMN ED0568T_TBL.DEFAULT_GATEWAY_ADDRESS IS 'デフォルトゲートウェイアドレス'
/
COMMENT ON COLUMN ED0568T_TBL.SUB_NET_MASK_ADDRESS IS 'サブネットマスクアドレス'
/
COMMENT ON COLUMN ED0568T_TBL.TSUSHIN_MODE_KBN IS '通信モード区分'
/
COMMENT ON COLUMN ED0568T_TBL.TSUSHIN_SOKUDO_KBN IS '通信速度区分'
/
COMMENT ON COLUMN ED0568T_TBL.DUPLEX_KBN IS 'デュプレックス区分'
/
COMMENT ON COLUMN ED0568T_TBL.BISH_GNDGK_1_KIS_1_JK_AMT IS '賠償限度額１警送１事故金額'
/
COMMENT ON COLUMN ED0568T_TBL.NYUSHUKKINKI_IP_ADDRESS_KBN IS '入出金機ＩＰアドレス区分'
/
COMMENT ON COLUMN ED0568T_TBL.REPLACEARI_FLG IS 'リプレース有フラグ'
/
COMMENT ON COLUMN ED0568T_TBL.REPLACE_PATTERN_KBN IS 'リプレースパターン区分'
/
COMMENT ON COLUMN ED0568T_TBL.NYKNK_URAGKN_KAISHU_KEISU_CD IS '入金機売上金回収係数コード'
/
COMMENT ON COLUMN ED0568T_TBL.URIAGEKIN_KAISHU_HINDO_NAIYO IS '売上金回収頻度内容'
/
COMMENT ON COLUMN ED0568T_TBL.GYOSHU_CD IS '業種コード'
/
COMMENT ON COLUMN ED0568T_TBL.KEISO_UNYO_JIGYOSHO_CD IS '警送運用事業所コード'
/
COMMENT ON COLUMN ED0568T_TBL.GNKN_MCHKM_KNY_KKN_CD IS '現金持込金融機関コード'
/
COMMENT ON COLUMN ED0568T_TBL.SHUYAKU_TEMPOSU IS '集約店舗数'
/
COMMENT ON COLUMN ED0568T_TBL.SHUKAISEN_KAITSU_JOKYO_KBN IS '主回線開通状況区分'
/
COMMENT ON COLUMN ED0568T_TBL.SHUKAISEN_KAITSU_YOTEI_YMD IS '主回線開通予定年月日'
/
COMMENT ON COLUMN ED0568T_TBL.FUKUKAISEN_KAITSU_JOKYO_KBN IS '副回線開通状況区分'
/
COMMENT ON COLUMN ED0568T_TBL.FUKUKAISEN_KAITSU_YOTEI_YMD IS '副回線開通予定年月日'
/
COMMENT ON COLUMN ED0568T_TBL.FURIKOMI_D_SHITEI_KBN IS '振込日指定区分'
/
COMMENT ON COLUMN ED0568T_TBL.FURIKOMI_HOSHIKI_KBN IS '振込方式区分'
/
COMMENT ON COLUMN ED0568T_TBL.MOCHIKOMI_TESURYO_AMT IS '持込手数料金額'
/
COMMENT ON COLUMN ED0568T_TBL.TSURISEN_HAIKIN_HINDO_CD IS '釣銭配金頻度コード'
/
COMMENT ON COLUMN ED0568T_TBL.MOCHIKOMI_TESURYO_KBN IS '持込手数料区分'
/
COMMENT ON COLUMN ED0568T_TBL.ROUTER_STCH_BSH_ZMN_KSIAR_FLG IS 'ルータ設置場所図面記載有フラグ'
/
COMMENT ON COLUMN ED0568T_TBL.RYOGAEKI_LEASE_AMT IS '両替機リース金額'
/
COMMENT ON COLUMN ED0568T_TBL.RYOGAEKI_HOSHU_AMT IS '両替機保守金額'
/
COMMENT ON COLUMN ED0568T_TBL.KOJIHI_GTSGK_ANBN_ARI_FLG IS '工事費月額按分有フラグ'
/
COMMENT ON COLUMN ED0568T_TBL.TOKUBETSU_NEBIKI_NAIYO_KBN IS '特別値引内容区分'
/
COMMENT ON COLUMN ED0568T_TBL.TKBTS_NBK_KGN_AMT IS '特別値引下限金額'
/
COMMENT ON COLUMN ED0568T_TBL.TKBTS_NBK_CMNT IS '特別値引コメント'
/
COMMENT ON COLUMN ED0568T_TBL.TKTI_KIYKSK_NBK_TRHKSK_CD IS '特定契約先値引取引先コード'
/
COMMENT ON COLUMN ED0568T_TBL.TKTI_KIYKSK_NBK_KGN_AMT IS '特定契約先値引下限金額'
/
COMMENT ON COLUMN ED0568T_TBL.TKTI_KIYKSK_NBK_CMNT IS '特定契約先値引コメント'
/
COMMENT ON COLUMN ED0568T_TBL.NYUSHUKKINKI_SETCHI_YOTEI_YMD IS '入出金機設置予定年月日'
/
COMMENT ON COLUMN ED0568T_TBL.TSURISEN_KAISHU_HINDO_NISSU IS '釣銭回収頻度日数'
/
COMMENT ON COLUMN ED0568T_TBL.HAIKIN_KEISO_RYOKIN_AMT IS '配金警送料金金額'
/
COMMENT ON COLUMN ED0568T_TBL.TSRSN_SKSI_RYKN_AMT IS '釣銭作成料金金額'
/
COMMENT ON COLUMN ED0568T_TBL.TSRSN_TSRY_AMT IS '釣銭手数料金額'
/
COMMENT ON COLUMN ED0568T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0568T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0568T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0568T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0568T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0568T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0568T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0568T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0568T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0568T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0568T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0568T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
