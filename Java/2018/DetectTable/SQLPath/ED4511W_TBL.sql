﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4511W_TBL.sql
-- 物理名：ED4511W_TBL
-- 論理名：入出金機両替機マスタＣＳＶファイルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4511W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4511W_TBL (
	 SEKISAN_RECORD_SOSA_KBN  CHAR(1) --「積算レコード操作区分」
	,WK_SKSN_RECORD_SOSA_KBN_NM  VARCHAR2(60) --「ワーク用積算レコード操作区分名称」
	,NYUSHUKKINKI_RYOGAEKI_KISHU_CD  CHAR(8) NOT NULL --「入出金機両替機機種コード」
	,TOKUBETSU_NEBIKI_NAIYO_KBN  CHAR(1) NOT NULL --「特別値引内容区分」
	,WK_TOKUBETSU_NBK_NAIYO_KBN_NM  VARCHAR2(60) --「ワーク用特別値引内容区分名称」
	,TKTI_KIYKSK_NBK_TRHKSK_CD  CHAR(9) NOT NULL --「特定契約先値引取引先コード」
	,WK_TKTI_KIYKSK_NBK_TRHKSK_NM  VARCHAR2(40) --「ワーク用特定契約先値引取引先名称」
	,NYUSHUKKINKI_RYOGAEKI_KBN  CHAR(1) NOT NULL --「入出金機両替機区分」
	,WK_NYUSHUKKINKI_RYGK_KBN_NM  VARCHAR2(60) --「ワーク用入出金機両替機区分名称」
	,HIMMEI_CD  CHAR(8) --「品名コード」
	,WK_HIMMEI_NM  VARCHAR2(60) --「ワーク用品名名称」
	,KISHU_NM  VARCHAR2(30) --「機種名称」
	,LEASE_KEIYAKU_NENSU  NUMBER(9,0) --「リース契約年数」
	,HYOJI_JUN  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順」
	,LEASE_HIN_KISHU_NM  VARCHAR2(30) --「リース品機種名称」
	,MITSUMORISHOYO_KISHU_NM  VARCHAR2(30) --「見積書用機種名称」
	,MAKER_TORIHIKISAKI_CD  CHAR(9) --「メーカ取引先コード」
	,WK_MAKER_TORIHIKISAKI_NM  VARCHAR2(40) --「ワーク用メーカ取引先名称」
	,SHIMPIN_KBN  CHAR(1) NOT NULL --「新品区分」
	,WK_SHIMPIN_KBN_NM  VARCHAR2(60) --「ワーク用新品区分名称」
	,NYSHKKNK_TNYY_CARD_HMMI_CD  CHAR(8) --「入出金機投入用カード品名コード」
	,WK_NYSHKKNK_TNYY_CARD_HMMI_NM  VARCHAR2(60) --「ワーク用入出金機投入用カード品名名称」
	,NYSHKKNK_TNYY_CARD_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「入出金機投入用カード数量」
	,NYSHKKNK_SHMY_CARD_HMMI_CD  CHAR(8) --「入出金機締め用カード品名コード」
	,WK_NYSHKKNK_SHMY_CARD_HMMI_NM  VARCHAR2(60) --「ワーク用入出金機締め用カード品名名称」
	,NYSHKKNK_SHMY_CARD_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「入出金機締め用カード数量」
	,NYSHKKNK_KISHY_CARD_HMMI_CD  CHAR(8) --「入出金機回収用カード品名コード」
	,WK_NYSHKKNK_KSHY_CARD_HMMI_NM  VARCHAR2(60) --「ワーク用入出金機回収用カード品名名称」
	,NYSHKKNK_KISHY_CARD_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「入出金機回収用カード数量」
	,SHIHEI_SAIDAI_KAKUNO_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「紙幣最大格納枚数」
	,KOKA_SAIDAI_KAKUNO_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「硬貨最大格納枚数」
	,TONYU_GENDO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「投入限度金額」
	,SECURITY_PLATE_SENTAKUKA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「セキュリティプレート選択可フラグ」
	,WK_SECURITY_PLAT_SNTKK_FLG_NM  VARCHAR2(60) --「ワーク用セキュリティプレート選択可フラグ名称」
	,ANCHOR_KOTEI_SENTAKUKA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「アンカー固定選択可フラグ」
	,WK_ANCHOR_KOTEI_SNTKK_FLG_NM  VARCHAR2(60) --「ワーク用アンカー固定選択可フラグ名称」
	,RYOMEN_SENTAKUKA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「両面テープ選択可フラグ」
	,WK_RYOMEN_SENTAKUKA_FLG_NM  VARCHAR2(60) --「ワーク用両面テープ選択可フラグ名称」
	,NYUSHUKKINKI_HOKAN_ARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「入出金機保管庫有フラグ」
	,WK_NYSHKKNK_HOKAN_ARI_FLG_NM  VARCHAR2(60) --「ワーク用入出金機保管庫有フラグ名称」
	,KIKI_LEASE_GETSUGAKU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「機器リース月額金額」
	,HAIKI_LEASE_GETSUGAKU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「廃棄リース月額金額」
	,KANRIHI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「管理費金額」
	,HOSHU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「保守金額」
	,SHOKEIHI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「諸経費金額」
	,KASAN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「加算金額」
	,TOKUBETSU_KASAN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「特別加算金額」
	,TSUJO_KEISO_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「通常警送料金金額」
	,OGUCHI_KEISO_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「大口警送料金金額」
	,CHOOGUCHI_KEISO_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「超大口警送料金金額」
	,TSUIKA_KEISO_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「追加警送料金金額」
	,HAIKIN_KEISO_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「配金警送料金金額」
	,SHHI_5_SENEN_KKN_SAIDAI_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「紙幣５千円格納最大枚数」
	,SHHI_1_SENEN_KKN_SAIDAI_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「紙幣千円格納最大枚数」
	,KK_500_EN_KKN_SAIDAI_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「硬貨５００円格納最大枚数」
	,KK_100_EN_KKN_SAIDAI_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「硬貨１００円格納最大枚数」
	,KK_KKN_SIDI_BOKIN_GOKEI_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「硬貨格納最大棒金合計数量」
	,SHIHEI_URIAGE_SEISARYO_TNK_AMT  NUMBER(15,2) DEFAULT '0' NOT NULL --「紙幣売上精査料単価金額」
	,KOKA_URIAGE_SEISARYO_TNK_AMT  NUMBER(15,2) DEFAULT '0' NOT NULL --「硬貨売上精査料単価金額」
	,URIAGE_SEISARYO_KASAN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「売上精査料加算金額」
	,SHIHEI_TSURISEN_SKSIRY_TNK_AMT  NUMBER(15,2) DEFAULT '0' NOT NULL --「紙幣釣銭作成料単価金額」
	,KOKA_TSURISEN_SKSIRY_TNK_AMT  NUMBER(15,2) DEFAULT '0' NOT NULL --「硬貨釣銭作成料単価金額」
	,BOKIN_TSURISEN_SKSIRY_TNK_AMT  NUMBER(15,2) DEFAULT '0' NOT NULL --「棒金釣銭作成料単価金額」
	,TSURISEN_SKSIRY_KASAN_TNK_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「釣銭作成料加算金額」
	,HIJTS_URAGKNKISH_SHTSDRYKN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「平日売上金回収出動料金金額」
	,KYJTS_URAGKNKISH_SHTSDRYKN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「休日売上金回収出動料金金額」
	,NIDAI_URAGKNKISH_SHTSDRYKN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「二台売上金回収出動料金金額」
	,KOSHO_SHTSDRYKN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「故障出動料金金額」
	,KOJI_HYOJUN_1_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「工事標準１台目金額」
	,KOJI_HYOJUN_2_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「工事標準２台目金額」
	,KOJI_HYOJUN_3_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「工事標準３台目金額」
	,KOJI_HYOJUN_4_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「工事標準４台目金額」
	,KOJI_HYOJUN_5_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「工事標準５台目金額」
	,KOJI_HYOJUN_6_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「工事標準６台目金額」
	,KOJI_HYOJUN_7_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「工事標準７台目金額」
	,KOJI_HYOJUN_8_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「工事標準８台目金額」
	,KOJI_GENKA_1_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「工事原価１台目金額」
	,KOJI_GENKA_2_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「工事原価２台目金額」
	,KOJI_GENKA_3_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「工事原価３台目金額」
	,KOJI_GENKA_4_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「工事原価４台目金額」
	,KOJI_GENKA_5_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「工事原価５台目金額」
	,KOJI_GENKA_6_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「工事原価６台目金額」
	,KOJI_GENKA_7_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「工事原価７台目金額」
	,KOJI_GENKA_8_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「工事原価８台目金額」
	,TANDOKU_KIBYRYO_1_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「単独警備料１台目金額」
	,TANDOKU_KIBYRYO_2_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「単独警備料２台目金額」
	,TANDOKU_KIBYRYO_3_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「単独警備料３台目金額」
	,TANDOKU_KIBYRYO_4_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「単独警備料４台目金額」
	,TANDOKU_KIBYRYO_5_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「単独警備料５台目金額」
	,TANDOKU_KIBYRYO_6_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「単独警備料６台目金額」
	,TANDOKU_KIBYRYO_7_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「単独警備料７台目金額」
	,TANDOKU_KIBYRYO_8_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「単独警備料８台目金額」
	,TMP_KMKM_KIBYRYO_1_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「店舗組込警備料１台目金額」
	,TMP_KMKM_KIBYRYO_2_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「店舗組込警備料２台目金額」
	,TMP_KMKM_KIBYRYO_3_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「店舗組込警備料３台目金額」
	,TMP_KMKM_KIBYRYO_4_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「店舗組込警備料４台目金額」
	,TMP_KMKM_KIBYRYO_5_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「店舗組込警備料５台目金額」
	,TMP_KMKM_KIBYRYO_6_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「店舗組込警備料６台目金額」
	,TMP_KMKM_KIBYRYO_7_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「店舗組込警備料７台目金額」
	,TMP_KMKM_KIBYRYO_8_DAIME_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「店舗組込警備料８台目金額」
	,KINKOBU_BAISHO_GENDO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「金庫部賠償限度金額」
	,TSRSN_HKNKB_BISH_GND_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「釣銭保管庫部賠償限度金額」
	,RIYO_FUKA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「利用不可フラグ」
	,WK_RIYO_FUKA_FLG_NM  VARCHAR2(60) --「ワーク用利用不可フラグ名称」
	,TANKI_PRIME_RATE_KEISU  NUMBER(12,3) DEFAULT '0' NOT NULL --「短期プライムレート係数」
	,KAIYAKUKIN_KIHONRYO_AMT  NUMBER(13,0) DEFAULT '0' --「解約金基本料金額」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,ZENKAI_TEKIYO_KAISHI_YMD  DATE --「前回適用開始年月日」
	,ZENKAI_TEKIYO_SHURYO_YMD  DATE --「前回適用終了年月日」
	,UPLOAD_TABLE_ID  CHAR(11) NOT NULL --「アップロードテーブルＩＤ」
	,TH_NYUSHUKKINKI_RYGK_KSH_CD  CHAR(8) --「退避用入出金機両替機機種コード」
	,TH_TOKUBETSU_NEBIKI_NAIYO_KBN  CHAR(1) --「退避用特別値引内容区分」
	,TH_TKTI_KIYKSK_NBK_TRHKSK_CD  CHAR(9) --「退避用特定契約先値引取引先コード」
	,IKKATSU_TORIKOMIYO_TS  TIMESTAMP --「一括取込用タイムスタンプ」
	,IKKATSU_TORIKOMIYO_KAISHA_CD  CHAR(5) --「一括取込用会社コード」
	,IKKATSU_TORIKOMIYO_SOSHIKI_CD  VARCHAR2(6) --「一括取込用組織コード」
	,IKKATSU_TORIKOMIYO_SHAIN_NO  VARCHAR2(8) --「一括取込用社員番号」
	,CSV_WK_GYO_NO  CHAR(7) --「ＣＳＶワーク行番号」
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
	,CONSTRAINT ED4511W_PK PRIMARY KEY(
	 NYUSHUKKINKI_RYOGAEKI_KISHU_CD
	,  TOKUBETSU_NEBIKI_NAIYO_KBN
	,  TKTI_KIYKSK_NBK_TRHKSK_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4511W_TBL IS '入出金機両替機マスタＣＳＶファイルワーク'
/

COMMENT ON COLUMN ED4511W_TBL.SEKISAN_RECORD_SOSA_KBN IS '積算レコード操作区分'
/
COMMENT ON COLUMN ED4511W_TBL.WK_SKSN_RECORD_SOSA_KBN_NM IS 'ワーク用積算レコード操作区分名称'
/
COMMENT ON COLUMN ED4511W_TBL.NYUSHUKKINKI_RYOGAEKI_KISHU_CD IS '入出金機両替機機種コード'
/
COMMENT ON COLUMN ED4511W_TBL.TOKUBETSU_NEBIKI_NAIYO_KBN IS '特別値引内容区分'
/
COMMENT ON COLUMN ED4511W_TBL.WK_TOKUBETSU_NBK_NAIYO_KBN_NM IS 'ワーク用特別値引内容区分名称'
/
COMMENT ON COLUMN ED4511W_TBL.TKTI_KIYKSK_NBK_TRHKSK_CD IS '特定契約先値引取引先コード'
/
COMMENT ON COLUMN ED4511W_TBL.WK_TKTI_KIYKSK_NBK_TRHKSK_NM IS 'ワーク用特定契約先値引取引先名称'
/
COMMENT ON COLUMN ED4511W_TBL.NYUSHUKKINKI_RYOGAEKI_KBN IS '入出金機両替機区分'
/
COMMENT ON COLUMN ED4511W_TBL.WK_NYUSHUKKINKI_RYGK_KBN_NM IS 'ワーク用入出金機両替機区分名称'
/
COMMENT ON COLUMN ED4511W_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED4511W_TBL.WK_HIMMEI_NM IS 'ワーク用品名名称'
/
COMMENT ON COLUMN ED4511W_TBL.KISHU_NM IS '機種名称'
/
COMMENT ON COLUMN ED4511W_TBL.LEASE_KEIYAKU_NENSU IS 'リース契約年数'
/
COMMENT ON COLUMN ED4511W_TBL.HYOJI_JUN IS '表示順'
/
COMMENT ON COLUMN ED4511W_TBL.LEASE_HIN_KISHU_NM IS 'リース品機種名称'
/
COMMENT ON COLUMN ED4511W_TBL.MITSUMORISHOYO_KISHU_NM IS '見積書用機種名称'
/
COMMENT ON COLUMN ED4511W_TBL.MAKER_TORIHIKISAKI_CD IS 'メーカ取引先コード'
/
COMMENT ON COLUMN ED4511W_TBL.WK_MAKER_TORIHIKISAKI_NM IS 'ワーク用メーカ取引先名称'
/
COMMENT ON COLUMN ED4511W_TBL.SHIMPIN_KBN IS '新品区分'
/
COMMENT ON COLUMN ED4511W_TBL.WK_SHIMPIN_KBN_NM IS 'ワーク用新品区分名称'
/
COMMENT ON COLUMN ED4511W_TBL.NYSHKKNK_TNYY_CARD_HMMI_CD IS '入出金機投入用カード品名コード'
/
COMMENT ON COLUMN ED4511W_TBL.WK_NYSHKKNK_TNYY_CARD_HMMI_NM IS 'ワーク用入出金機投入用カード品名名称'
/
COMMENT ON COLUMN ED4511W_TBL.NYSHKKNK_TNYY_CARD_SURYO IS '入出金機投入用カード数量'
/
COMMENT ON COLUMN ED4511W_TBL.NYSHKKNK_SHMY_CARD_HMMI_CD IS '入出金機締め用カード品名コード'
/
COMMENT ON COLUMN ED4511W_TBL.WK_NYSHKKNK_SHMY_CARD_HMMI_NM IS 'ワーク用入出金機締め用カード品名名称'
/
COMMENT ON COLUMN ED4511W_TBL.NYSHKKNK_SHMY_CARD_SURYO IS '入出金機締め用カード数量'
/
COMMENT ON COLUMN ED4511W_TBL.NYSHKKNK_KISHY_CARD_HMMI_CD IS '入出金機回収用カード品名コード'
/
COMMENT ON COLUMN ED4511W_TBL.WK_NYSHKKNK_KSHY_CARD_HMMI_NM IS 'ワーク用入出金機回収用カード品名名称'
/
COMMENT ON COLUMN ED4511W_TBL.NYSHKKNK_KISHY_CARD_SURYO IS '入出金機回収用カード数量'
/
COMMENT ON COLUMN ED4511W_TBL.SHIHEI_SAIDAI_KAKUNO_MAISU IS '紙幣最大格納枚数'
/
COMMENT ON COLUMN ED4511W_TBL.KOKA_SAIDAI_KAKUNO_MAISU IS '硬貨最大格納枚数'
/
COMMENT ON COLUMN ED4511W_TBL.TONYU_GENDO_AMT IS '投入限度金額'
/
COMMENT ON COLUMN ED4511W_TBL.SECURITY_PLATE_SENTAKUKA_FLG IS 'セキュリティプレート選択可フラグ'
/
COMMENT ON COLUMN ED4511W_TBL.WK_SECURITY_PLAT_SNTKK_FLG_NM IS 'ワーク用セキュリティプレート選択可フラグ名称'
/
COMMENT ON COLUMN ED4511W_TBL.ANCHOR_KOTEI_SENTAKUKA_FLG IS 'アンカー固定選択可フラグ'
/
COMMENT ON COLUMN ED4511W_TBL.WK_ANCHOR_KOTEI_SNTKK_FLG_NM IS 'ワーク用アンカー固定選択可フラグ名称'
/
COMMENT ON COLUMN ED4511W_TBL.RYOMEN_SENTAKUKA_FLG IS '両面テープ選択可フラグ'
/
COMMENT ON COLUMN ED4511W_TBL.WK_RYOMEN_SENTAKUKA_FLG_NM IS 'ワーク用両面テープ選択可フラグ名称'
/
COMMENT ON COLUMN ED4511W_TBL.NYUSHUKKINKI_HOKAN_ARI_FLG IS '入出金機保管庫有フラグ'
/
COMMENT ON COLUMN ED4511W_TBL.WK_NYSHKKNK_HOKAN_ARI_FLG_NM IS 'ワーク用入出金機保管庫有フラグ名称'
/
COMMENT ON COLUMN ED4511W_TBL.KIKI_LEASE_GETSUGAKU_AMT IS '機器リース月額金額'
/
COMMENT ON COLUMN ED4511W_TBL.HAIKI_LEASE_GETSUGAKU_AMT IS '廃棄リース月額金額'
/
COMMENT ON COLUMN ED4511W_TBL.KANRIHI_AMT IS '管理費金額'
/
COMMENT ON COLUMN ED4511W_TBL.HOSHU_AMT IS '保守金額'
/
COMMENT ON COLUMN ED4511W_TBL.SHOKEIHI_AMT IS '諸経費金額'
/
COMMENT ON COLUMN ED4511W_TBL.KASAN_AMT IS '加算金額'
/
COMMENT ON COLUMN ED4511W_TBL.TOKUBETSU_KASAN_AMT IS '特別加算金額'
/
COMMENT ON COLUMN ED4511W_TBL.TSUJO_KEISO_RYOKIN_AMT IS '通常警送料金金額'
/
COMMENT ON COLUMN ED4511W_TBL.OGUCHI_KEISO_RYOKIN_AMT IS '大口警送料金金額'
/
COMMENT ON COLUMN ED4511W_TBL.CHOOGUCHI_KEISO_RYOKIN_AMT IS '超大口警送料金金額'
/
COMMENT ON COLUMN ED4511W_TBL.TSUIKA_KEISO_RYOKIN_AMT IS '追加警送料金金額'
/
COMMENT ON COLUMN ED4511W_TBL.HAIKIN_KEISO_RYOKIN_AMT IS '配金警送料金金額'
/
COMMENT ON COLUMN ED4511W_TBL.SHHI_5_SENEN_KKN_SAIDAI_MAISU IS '紙幣５千円格納最大枚数'
/
COMMENT ON COLUMN ED4511W_TBL.SHHI_1_SENEN_KKN_SAIDAI_MAISU IS '紙幣千円格納最大枚数'
/
COMMENT ON COLUMN ED4511W_TBL.KK_500_EN_KKN_SAIDAI_MAISU IS '硬貨５００円格納最大枚数'
/
COMMENT ON COLUMN ED4511W_TBL.KK_100_EN_KKN_SAIDAI_MAISU IS '硬貨１００円格納最大枚数'
/
COMMENT ON COLUMN ED4511W_TBL.KK_KKN_SIDI_BOKIN_GOKEI_SURYO IS '硬貨格納最大棒金合計数量'
/
COMMENT ON COLUMN ED4511W_TBL.SHIHEI_URIAGE_SEISARYO_TNK_AMT IS '紙幣売上精査料単価金額'
/
COMMENT ON COLUMN ED4511W_TBL.KOKA_URIAGE_SEISARYO_TNK_AMT IS '硬貨売上精査料単価金額'
/
COMMENT ON COLUMN ED4511W_TBL.URIAGE_SEISARYO_KASAN_AMT IS '売上精査料加算金額'
/
COMMENT ON COLUMN ED4511W_TBL.SHIHEI_TSURISEN_SKSIRY_TNK_AMT IS '紙幣釣銭作成料単価金額'
/
COMMENT ON COLUMN ED4511W_TBL.KOKA_TSURISEN_SKSIRY_TNK_AMT IS '硬貨釣銭作成料単価金額'
/
COMMENT ON COLUMN ED4511W_TBL.BOKIN_TSURISEN_SKSIRY_TNK_AMT IS '棒金釣銭作成料単価金額'
/
COMMENT ON COLUMN ED4511W_TBL.TSURISEN_SKSIRY_KASAN_TNK_AMT IS '釣銭作成料加算金額'
/
COMMENT ON COLUMN ED4511W_TBL.HIJTS_URAGKNKISH_SHTSDRYKN_AMT IS '平日売上金回収出動料金金額'
/
COMMENT ON COLUMN ED4511W_TBL.KYJTS_URAGKNKISH_SHTSDRYKN_AMT IS '休日売上金回収出動料金金額'
/
COMMENT ON COLUMN ED4511W_TBL.NIDAI_URAGKNKISH_SHTSDRYKN_AMT IS '二台売上金回収出動料金金額'
/
COMMENT ON COLUMN ED4511W_TBL.KOSHO_SHTSDRYKN_AMT IS '故障出動料金金額'
/
COMMENT ON COLUMN ED4511W_TBL.KOJI_HYOJUN_1_DAIME_AMT IS '工事標準１台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.KOJI_HYOJUN_2_DAIME_AMT IS '工事標準２台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.KOJI_HYOJUN_3_DAIME_AMT IS '工事標準３台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.KOJI_HYOJUN_4_DAIME_AMT IS '工事標準４台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.KOJI_HYOJUN_5_DAIME_AMT IS '工事標準５台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.KOJI_HYOJUN_6_DAIME_AMT IS '工事標準６台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.KOJI_HYOJUN_7_DAIME_AMT IS '工事標準７台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.KOJI_HYOJUN_8_DAIME_AMT IS '工事標準８台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.KOJI_GENKA_1_DAIME_AMT IS '工事原価１台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.KOJI_GENKA_2_DAIME_AMT IS '工事原価２台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.KOJI_GENKA_3_DAIME_AMT IS '工事原価３台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.KOJI_GENKA_4_DAIME_AMT IS '工事原価４台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.KOJI_GENKA_5_DAIME_AMT IS '工事原価５台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.KOJI_GENKA_6_DAIME_AMT IS '工事原価６台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.KOJI_GENKA_7_DAIME_AMT IS '工事原価７台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.KOJI_GENKA_8_DAIME_AMT IS '工事原価８台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.TANDOKU_KIBYRYO_1_DAIME_AMT IS '単独警備料１台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.TANDOKU_KIBYRYO_2_DAIME_AMT IS '単独警備料２台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.TANDOKU_KIBYRYO_3_DAIME_AMT IS '単独警備料３台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.TANDOKU_KIBYRYO_4_DAIME_AMT IS '単独警備料４台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.TANDOKU_KIBYRYO_5_DAIME_AMT IS '単独警備料５台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.TANDOKU_KIBYRYO_6_DAIME_AMT IS '単独警備料６台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.TANDOKU_KIBYRYO_7_DAIME_AMT IS '単独警備料７台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.TANDOKU_KIBYRYO_8_DAIME_AMT IS '単独警備料８台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.TMP_KMKM_KIBYRYO_1_DAIME_AMT IS '店舗組込警備料１台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.TMP_KMKM_KIBYRYO_2_DAIME_AMT IS '店舗組込警備料２台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.TMP_KMKM_KIBYRYO_3_DAIME_AMT IS '店舗組込警備料３台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.TMP_KMKM_KIBYRYO_4_DAIME_AMT IS '店舗組込警備料４台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.TMP_KMKM_KIBYRYO_5_DAIME_AMT IS '店舗組込警備料５台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.TMP_KMKM_KIBYRYO_6_DAIME_AMT IS '店舗組込警備料６台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.TMP_KMKM_KIBYRYO_7_DAIME_AMT IS '店舗組込警備料７台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.TMP_KMKM_KIBYRYO_8_DAIME_AMT IS '店舗組込警備料８台目金額'
/
COMMENT ON COLUMN ED4511W_TBL.KINKOBU_BAISHO_GENDO_AMT IS '金庫部賠償限度金額'
/
COMMENT ON COLUMN ED4511W_TBL.TSRSN_HKNKB_BISH_GND_AMT IS '釣銭保管庫部賠償限度金額'
/
COMMENT ON COLUMN ED4511W_TBL.RIYO_FUKA_FLG IS '利用不可フラグ'
/
COMMENT ON COLUMN ED4511W_TBL.WK_RIYO_FUKA_FLG_NM IS 'ワーク用利用不可フラグ名称'
/
COMMENT ON COLUMN ED4511W_TBL.TANKI_PRIME_RATE_KEISU IS '短期プライムレート係数'
/
COMMENT ON COLUMN ED4511W_TBL.KAIYAKUKIN_KIHONRYO_AMT IS '解約金基本料金額'
/
COMMENT ON COLUMN ED4511W_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4511W_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4511W_TBL.ZENKAI_TEKIYO_KAISHI_YMD IS '前回適用開始年月日'
/
COMMENT ON COLUMN ED4511W_TBL.ZENKAI_TEKIYO_SHURYO_YMD IS '前回適用終了年月日'
/
COMMENT ON COLUMN ED4511W_TBL.UPLOAD_TABLE_ID IS 'アップロードテーブルＩＤ'
/
COMMENT ON COLUMN ED4511W_TBL.TH_NYUSHUKKINKI_RYGK_KSH_CD IS '退避用入出金機両替機機種コード'
/
COMMENT ON COLUMN ED4511W_TBL.TH_TOKUBETSU_NEBIKI_NAIYO_KBN IS '退避用特別値引内容区分'
/
COMMENT ON COLUMN ED4511W_TBL.TH_TKTI_KIYKSK_NBK_TRHKSK_CD IS '退避用特定契約先値引取引先コード'
/
COMMENT ON COLUMN ED4511W_TBL.IKKATSU_TORIKOMIYO_TS IS '一括取込用タイムスタンプ'
/
COMMENT ON COLUMN ED4511W_TBL.IKKATSU_TORIKOMIYO_KAISHA_CD IS '一括取込用会社コード'
/
COMMENT ON COLUMN ED4511W_TBL.IKKATSU_TORIKOMIYO_SOSHIKI_CD IS '一括取込用組織コード'
/
COMMENT ON COLUMN ED4511W_TBL.IKKATSU_TORIKOMIYO_SHAIN_NO IS '一括取込用社員番号'
/
COMMENT ON COLUMN ED4511W_TBL.CSV_WK_GYO_NO IS 'ＣＳＶワーク行番号'
/
COMMENT ON COLUMN ED4511W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4511W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4511W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4511W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4511W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4511W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4511W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4511W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4511W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4511W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4511W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4511W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
