﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4310T_TBL.sql
-- 物理名：ED4310T_TBL
-- 論理名：協調依頼テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4310T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4310T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KYOCHO_IRAI_NO  CHAR(24) NOT NULL --「協調依頼番号」
	,SHINSEI_SHONIN_NO  CHAR(14) --「申請承認番号」
	,TAISHOSAKI_TANTOSHA_BUSHO_NM  VARCHAR2(40) --「対象先担当者部署名称」
	,TAISHOSAKI_TANTOSHA_NM  VARCHAR2(60) --「対象先担当者氏名」
	,TATEMONO_KOJI_SHUBETSU_KBN  CHAR(1) NOT NULL --「建物工事種別区分」
	,TATEMONO_KOZO_KBN  CHAR(1) NOT NULL --「建物構造区分」
	,GENKEIBI_JOKYO_NAIYO  VARCHAR2(30) --「現警備状況内容」
	,TATEMONO_JOKYO_KBN  CHAR(1) NOT NULL --「建物状況区分」
	,CHIJO_KAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「地上階数」
	,CHIKA_KAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「地下階数」
	,NOBEYUKA_MENSEKI  NUMBER(12,3) DEFAULT '0' NOT NULL --「延べ床面積」
	,KYCH_EIGYSK_UKTSK_YMD_1  DATE --「協調営業先受付年月日１」
	,KYOCHO_EIGYO_IRAISAKI_KBN  CHAR(1) NOT NULL --「協調営業依頼先区分」
	,KYCH_EIGYSK_KAISHA_CD  CHAR(5) --「協調営業先会社コード」
	,KYCH_EIGYSK_TRHKSK_CD_1  CHAR(9) --「協調営業先取引先コード１」
	,KYCH_EIGYSK_TRHKSK_BSH_CD_1  CHAR(4) --「協調営業先取引先部署コード１」
	,KYCH_EIGYSK_JIGYOSHO_CD_1  CHAR(6) --「協調営業先事業所コード１」
	,KYCH_EIGYSK_TANTOSHA_SHIN_NO_1  VARCHAR2(8) --「協調営業先担当者社員番号１」
	,KYCH_EIGYSK_TNTSH_NM_1  VARCHAR2(60) --「協調営業先担当者氏名１」
	,SHIENSAKI_UKETSUKE_YMD  DATE --「支援先受付年月日」
	,SHIEN_IRAISAKI_KBN  CHAR(1) NOT NULL --「支援依頼先区分」
	,SHIENSAKI_KAISHA_CD  CHAR(5) --「支援先会社コード」
	,SHIENSAKI_TORIHIKISAKI_CD  CHAR(9) --「支援先取引先コード」
	,SHIENSAKI_JIGYOSHO_CD  CHAR(6) --「支援先事業所コード」
	,SHIENSAKI_TANTOSHA_SHAIN_NO  VARCHAR2(8) --「支援先担当者社員番号」
	,IRAI_YMD  DATE NOT NULL --「依頼年月日」
	,KYOCHO_EIGYO_IRAIMOTO_KBN  CHAR(1) NOT NULL --「協調営業依頼元区分」
	,IRAIMOTO_KAISHA_CD  CHAR(5) --「依頼元会社コード」
	,IRAIMOTO_TORIHIKISAKI_CD  CHAR(9) --「依頼元取引先コード」
	,IRIMT_TORIHIKISAKI_BUSHO_CD  CHAR(4) --「依頼元取引先部署コード」
	,IRAISHA_JIGYOSHO_CD  CHAR(6) --「依頼者事業所コード」
	,IRAISHA_SHAIN_NO  VARCHAR2(8) --「依頼者社員番号」
	,KYCH_EIGY_IRI_MOTO_TNTSH_NM  VARCHAR2(60) --「協調営業依頼元担当者氏名」
	,IRAISHA_DENWA_NO  VARCHAR2(20) --「依頼者電話番号」
	,IRAISHA_MAIL_ADDRESS  VARCHAR2(200) --「依頼者メールアドレス」
	,IRAISHA_NAISEN_NO  VARCHAR2(20) --「依頼者内線番号」
	,SHINSEISHA_KAISHA_CD  CHAR(5) --「申請者会社コード」
	,SHINSEISHA_SHAIN_NO  VARCHAR2(8) --「申請者社員番号」
	,SHINSEISHA_NAISEN_NO  VARCHAR2(20) --「申請者内線番号」
	,IRAI_JOHO_RANK_KBN  CHAR(1) NOT NULL --「依頼情報ランク区分」
	,MITSUMORI_ANKEN_KBN  CHAR(1) NOT NULL --「見積案件区分」
	,KYOCHO_EIGYO_IRAI_NAIYO_KBN  CHAR(1) NOT NULL --「協調営業依頼内容区分」
	,KYCHEIGYIRINIY_KBN_SNT_NAIYO  VARCHAR2(200) --「協調営業依頼内容区分その他内容」
	,KIBO_YMD  DATE NOT NULL --「希望年月日」
	,KAITO_HOHO_KBN  CHAR(1) NOT NULL --「回答方法区分」
	,KAITO_KIGEN_YMD  DATE NOT NULL --「回答期限年月日」
	,TORIHIKI_JOKYO_KBN  CHAR(1) NOT NULL --「取引状況区分」
	,KSN_TRHKSK_TRHK_NAIYO  VARCHAR2(150) --「既存取引先取引内容」
	,SSSH_IRI_SHHN_SERVICE_CD_1  CHAR(3) --「折衝依頼商品サービスコード１」
	,SSSH_IRI_SHHN_SERVICE_CD_2  CHAR(3) --「折衝依頼商品サービスコード２」
	,SNT_SSSH_IRI_SHHN_SERVICE_NM  VARCHAR2(60) --「その他折衝依頼商品サービス名称」
	,MITSUMORI_DONYU_JIKI_KBN  CHAR(2) NOT NULL --「見積導入時期区分」
	,MITSUMORI_SENTEI_HOHO_KBN  CHAR(1) NOT NULL --「見積選定方法区分」
	,SNT_MTSMR_SNTI_HH_NAIYO  VARCHAR2(100) --「その他見積選定方法内容」
	,KUNI_CHIIKI_KBN  CHAR(3) NOT NULL --「国地域区分」
	,KIGI_TNTSH_SHKI_KBN  CHAR(4) NOT NULL --「海外担当者紹介区分」
	,KYOCHO_EIGYO_SHOSAI_IRAI_NAIYO  VARCHAR2(500) --「協調営業詳細依頼内容」
	,SHINSEI_SHONIN_CMNT  VARCHAR2(200) --「申請承認コメント」
	,SHODAN_KEKKA_TOROKU_ZUMI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「商談結果登録済フラグ」
	,SHODAN_KEKKA_KBN  CHAR(1) NOT NULL --「商談結果区分」
	,SHODAN_KEKKA_JOHO_RANK_KBN  CHAR(1) NOT NULL --「商談結果情報ランク区分」
	,JUCHU_KEIYAKU_NO  CHAR(15) --「受注契約番号」
	,JUCHU_SHITCHU_YMD  DATE --「受注失注年月日」
	,GYOMU_KAISHI_YMD  DATE --「業務開始年月日」
	,CHOKI_URIAGE_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「長期売上金額」
	,KYCH_EIGY_CHOKI_URAG_SHBTS_KBN  CHAR(1) NOT NULL --「協調営業長期売上種別区分」
	,RINJI_URIAGE_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「臨時売上金額」
	,GYOMU_ITAKU_GENKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「業務委託原価金額」
	,ARARIEKI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「粗利益金額」
	,GYM_ITKSK_TRHKSK_NM  VARCHAR2(40) --「業務委託先取引先名称」
	,EIGYO_KEISU  NUMBER(12,3) DEFAULT '0' NOT NULL --「営業係数」
	,JININ_TANKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「人員単価金額」
	,SHOKAI_TESURYO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「紹介手数料金額」
	,SHDN_KEKKA_GOKEI_SHIHARAI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「商談結果合計支払金額」
	,GETSUGAKU_HOKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「月額邦貨金額」
	,GENCHI_CHINGIN_TSUKA_NM  VARCHAR2(20) --「現地貨金通貨名称」
	,GETSUGAKU_GENCHIKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「月額現地貨金額」
	,ITAKU_RYOKIN_HOKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「委託料金邦貨金額」
	,ITAKU_RYOKIN_GENCHIKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「委託料金現地貨金額」
	,JIGYO_KAISHI_YMD  DATE --「事業開始年月日」
	,CHOKI_JIGYO_SEGMENT_NM  VARCHAR2(64) --「長期事業セグメント名称」
	,CHK_KIGI_ANKN_SHDN_KEKKA_NAIYO  VARCHAR2(100) --「長期海外案件商談結果内容」
	,RINJI_URIAGE_GENCHIKA_AMT  NUMBER(15,2) DEFAULT '0' NOT NULL --「臨時売上現地貨金額」
	,RINJI_URIAGE_HOKA_AMT  NUMBER(15,2) DEFAULT '0' NOT NULL --「臨時売上邦貨金額」
	,RINJI_GENKA_GENCHIKA_AMT  NUMBER(15,2) DEFAULT '0' NOT NULL --「臨時原価現地貨金額」
	,RINJI_GENKA_HOKA_AMT  NUMBER(15,2) DEFAULT '0' NOT NULL --「臨時原価邦貨金額」
	,RINJI_NOHIN_YMD  DATE --「臨時納品年月日」
	,RINJI_JIGYO_SEGMENT_NM  VARCHAR2(64) --「臨時事業セグメント名称」
	,TNK_KIGI_ANKN_SHDN_KEKKA_NAIYO  VARCHAR2(100) --「臨時海外案件商談結果内容」
	,KOJI_GENCHIKA_AMT  NUMBER(15,2) DEFAULT '0' NOT NULL --「工事現地貨金額」
	,KOJI_HOKA_AMT  NUMBER(15,2) DEFAULT '0' NOT NULL --「工事邦貨金額」
	,KOJI_GENKA_GENCHIKA_AMT  NUMBER(15,2) DEFAULT '0' NOT NULL --「工事原価現地貨金額」
	,KOJI_GENKA_HOKA_AMT  NUMBER(15,2) DEFAULT '0' NOT NULL --「工事原価邦貨金額」
	,HOSHOKIN_GENCHIKA_AMT  NUMBER(15,2) DEFAULT '0' NOT NULL --「保証金現地貨金額」
	,HOSHOKIN_HOKA_AMT  NUMBER(15,2) DEFAULT '0' NOT NULL --「保証金邦貨金額」
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
	,CONSTRAINT ED4310T_PK PRIMARY KEY(
	 KYOCHO_IRAI_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4310T_TBL IS '協調依頼テーブル'
/

COMMENT ON COLUMN ED4310T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED4310T_TBL.KYOCHO_IRAI_NO IS '協調依頼番号'
/
COMMENT ON COLUMN ED4310T_TBL.SHINSEI_SHONIN_NO IS '申請承認番号'
/
COMMENT ON COLUMN ED4310T_TBL.TAISHOSAKI_TANTOSHA_BUSHO_NM IS '対象先担当者部署名称'
/
COMMENT ON COLUMN ED4310T_TBL.TAISHOSAKI_TANTOSHA_NM IS '対象先担当者氏名'
/
COMMENT ON COLUMN ED4310T_TBL.TATEMONO_KOJI_SHUBETSU_KBN IS '建物工事種別区分'
/
COMMENT ON COLUMN ED4310T_TBL.TATEMONO_KOZO_KBN IS '建物構造区分'
/
COMMENT ON COLUMN ED4310T_TBL.GENKEIBI_JOKYO_NAIYO IS '現警備状況内容'
/
COMMENT ON COLUMN ED4310T_TBL.TATEMONO_JOKYO_KBN IS '建物状況区分'
/
COMMENT ON COLUMN ED4310T_TBL.CHIJO_KAISU IS '地上階数'
/
COMMENT ON COLUMN ED4310T_TBL.CHIKA_KAISU IS '地下階数'
/
COMMENT ON COLUMN ED4310T_TBL.NOBEYUKA_MENSEKI IS '延べ床面積'
/
COMMENT ON COLUMN ED4310T_TBL.KYCH_EIGYSK_UKTSK_YMD_1 IS '協調営業先受付年月日１'
/
COMMENT ON COLUMN ED4310T_TBL.KYOCHO_EIGYO_IRAISAKI_KBN IS '協調営業依頼先区分'
/
COMMENT ON COLUMN ED4310T_TBL.KYCH_EIGYSK_KAISHA_CD IS '協調営業先会社コード'
/
COMMENT ON COLUMN ED4310T_TBL.KYCH_EIGYSK_TRHKSK_CD_1 IS '協調営業先取引先コード１'
/
COMMENT ON COLUMN ED4310T_TBL.KYCH_EIGYSK_TRHKSK_BSH_CD_1 IS '協調営業先取引先部署コード１'
/
COMMENT ON COLUMN ED4310T_TBL.KYCH_EIGYSK_JIGYOSHO_CD_1 IS '協調営業先事業所コード１'
/
COMMENT ON COLUMN ED4310T_TBL.KYCH_EIGYSK_TANTOSHA_SHIN_NO_1 IS '協調営業先担当者社員番号１'
/
COMMENT ON COLUMN ED4310T_TBL.KYCH_EIGYSK_TNTSH_NM_1 IS '協調営業先担当者氏名１'
/
COMMENT ON COLUMN ED4310T_TBL.SHIENSAKI_UKETSUKE_YMD IS '支援先受付年月日'
/
COMMENT ON COLUMN ED4310T_TBL.SHIEN_IRAISAKI_KBN IS '支援依頼先区分'
/
COMMENT ON COLUMN ED4310T_TBL.SHIENSAKI_KAISHA_CD IS '支援先会社コード'
/
COMMENT ON COLUMN ED4310T_TBL.SHIENSAKI_TORIHIKISAKI_CD IS '支援先取引先コード'
/
COMMENT ON COLUMN ED4310T_TBL.SHIENSAKI_JIGYOSHO_CD IS '支援先事業所コード'
/
COMMENT ON COLUMN ED4310T_TBL.SHIENSAKI_TANTOSHA_SHAIN_NO IS '支援先担当者社員番号'
/
COMMENT ON COLUMN ED4310T_TBL.IRAI_YMD IS '依頼年月日'
/
COMMENT ON COLUMN ED4310T_TBL.KYOCHO_EIGYO_IRAIMOTO_KBN IS '協調営業依頼元区分'
/
COMMENT ON COLUMN ED4310T_TBL.IRAIMOTO_KAISHA_CD IS '依頼元会社コード'
/
COMMENT ON COLUMN ED4310T_TBL.IRAIMOTO_TORIHIKISAKI_CD IS '依頼元取引先コード'
/
COMMENT ON COLUMN ED4310T_TBL.IRIMT_TORIHIKISAKI_BUSHO_CD IS '依頼元取引先部署コード'
/
COMMENT ON COLUMN ED4310T_TBL.IRAISHA_JIGYOSHO_CD IS '依頼者事業所コード'
/
COMMENT ON COLUMN ED4310T_TBL.IRAISHA_SHAIN_NO IS '依頼者社員番号'
/
COMMENT ON COLUMN ED4310T_TBL.KYCH_EIGY_IRI_MOTO_TNTSH_NM IS '協調営業依頼元担当者氏名'
/
COMMENT ON COLUMN ED4310T_TBL.IRAISHA_DENWA_NO IS '依頼者電話番号'
/
COMMENT ON COLUMN ED4310T_TBL.IRAISHA_MAIL_ADDRESS IS '依頼者メールアドレス'
/
COMMENT ON COLUMN ED4310T_TBL.IRAISHA_NAISEN_NO IS '依頼者内線番号'
/
COMMENT ON COLUMN ED4310T_TBL.SHINSEISHA_KAISHA_CD IS '申請者会社コード'
/
COMMENT ON COLUMN ED4310T_TBL.SHINSEISHA_SHAIN_NO IS '申請者社員番号'
/
COMMENT ON COLUMN ED4310T_TBL.SHINSEISHA_NAISEN_NO IS '申請者内線番号'
/
COMMENT ON COLUMN ED4310T_TBL.IRAI_JOHO_RANK_KBN IS '依頼情報ランク区分'
/
COMMENT ON COLUMN ED4310T_TBL.MITSUMORI_ANKEN_KBN IS '見積案件区分'
/
COMMENT ON COLUMN ED4310T_TBL.KYOCHO_EIGYO_IRAI_NAIYO_KBN IS '協調営業依頼内容区分'
/
COMMENT ON COLUMN ED4310T_TBL.KYCHEIGYIRINIY_KBN_SNT_NAIYO IS '協調営業依頼内容区分その他内容'
/
COMMENT ON COLUMN ED4310T_TBL.KIBO_YMD IS '希望年月日'
/
COMMENT ON COLUMN ED4310T_TBL.KAITO_HOHO_KBN IS '回答方法区分'
/
COMMENT ON COLUMN ED4310T_TBL.KAITO_KIGEN_YMD IS '回答期限年月日'
/
COMMENT ON COLUMN ED4310T_TBL.TORIHIKI_JOKYO_KBN IS '取引状況区分'
/
COMMENT ON COLUMN ED4310T_TBL.KSN_TRHKSK_TRHK_NAIYO IS '既存取引先取引内容'
/
COMMENT ON COLUMN ED4310T_TBL.SSSH_IRI_SHHN_SERVICE_CD_1 IS '折衝依頼商品サービスコード１'
/
COMMENT ON COLUMN ED4310T_TBL.SSSH_IRI_SHHN_SERVICE_CD_2 IS '折衝依頼商品サービスコード２'
/
COMMENT ON COLUMN ED4310T_TBL.SNT_SSSH_IRI_SHHN_SERVICE_NM IS 'その他折衝依頼商品サービス名称'
/
COMMENT ON COLUMN ED4310T_TBL.MITSUMORI_DONYU_JIKI_KBN IS '見積導入時期区分'
/
COMMENT ON COLUMN ED4310T_TBL.MITSUMORI_SENTEI_HOHO_KBN IS '見積選定方法区分'
/
COMMENT ON COLUMN ED4310T_TBL.SNT_MTSMR_SNTI_HH_NAIYO IS 'その他見積選定方法内容'
/
COMMENT ON COLUMN ED4310T_TBL.KUNI_CHIIKI_KBN IS '国地域区分'
/
COMMENT ON COLUMN ED4310T_TBL.KIGI_TNTSH_SHKI_KBN IS '海外担当者紹介区分'
/
COMMENT ON COLUMN ED4310T_TBL.KYOCHO_EIGYO_SHOSAI_IRAI_NAIYO IS '協調営業詳細依頼内容'
/
COMMENT ON COLUMN ED4310T_TBL.SHINSEI_SHONIN_CMNT IS '申請承認コメント'
/
COMMENT ON COLUMN ED4310T_TBL.SHODAN_KEKKA_TOROKU_ZUMI_FLG IS '商談結果登録済フラグ'
/
COMMENT ON COLUMN ED4310T_TBL.SHODAN_KEKKA_KBN IS '商談結果区分'
/
COMMENT ON COLUMN ED4310T_TBL.SHODAN_KEKKA_JOHO_RANK_KBN IS '商談結果情報ランク区分'
/
COMMENT ON COLUMN ED4310T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED4310T_TBL.JUCHU_SHITCHU_YMD IS '受注失注年月日'
/
COMMENT ON COLUMN ED4310T_TBL.GYOMU_KAISHI_YMD IS '業務開始年月日'
/
COMMENT ON COLUMN ED4310T_TBL.CHOKI_URIAGE_AMT IS '長期売上金額'
/
COMMENT ON COLUMN ED4310T_TBL.KYCH_EIGY_CHOKI_URAG_SHBTS_KBN IS '協調営業長期売上種別区分'
/
COMMENT ON COLUMN ED4310T_TBL.RINJI_URIAGE_AMT IS '臨時売上金額'
/
COMMENT ON COLUMN ED4310T_TBL.GYOMU_ITAKU_GENKA_AMT IS '業務委託原価金額'
/
COMMENT ON COLUMN ED4310T_TBL.ARARIEKI_AMT IS '粗利益金額'
/
COMMENT ON COLUMN ED4310T_TBL.GYM_ITKSK_TRHKSK_NM IS '業務委託先取引先名称'
/
COMMENT ON COLUMN ED4310T_TBL.EIGYO_KEISU IS '営業係数'
/
COMMENT ON COLUMN ED4310T_TBL.JININ_TANKA_AMT IS '人員単価金額'
/
COMMENT ON COLUMN ED4310T_TBL.SHOKAI_TESURYO_AMT IS '紹介手数料金額'
/
COMMENT ON COLUMN ED4310T_TBL.SHDN_KEKKA_GOKEI_SHIHARAI_AMT IS '商談結果合計支払金額'
/
COMMENT ON COLUMN ED4310T_TBL.GETSUGAKU_HOKA_AMT IS '月額邦貨金額'
/
COMMENT ON COLUMN ED4310T_TBL.GENCHI_CHINGIN_TSUKA_NM IS '現地貨金通貨名称'
/
COMMENT ON COLUMN ED4310T_TBL.GETSUGAKU_GENCHIKA_AMT IS '月額現地貨金額'
/
COMMENT ON COLUMN ED4310T_TBL.ITAKU_RYOKIN_HOKA_AMT IS '委託料金邦貨金額'
/
COMMENT ON COLUMN ED4310T_TBL.ITAKU_RYOKIN_GENCHIKA_AMT IS '委託料金現地貨金額'
/
COMMENT ON COLUMN ED4310T_TBL.JIGYO_KAISHI_YMD IS '事業開始年月日'
/
COMMENT ON COLUMN ED4310T_TBL.CHOKI_JIGYO_SEGMENT_NM IS '長期事業セグメント名称'
/
COMMENT ON COLUMN ED4310T_TBL.CHK_KIGI_ANKN_SHDN_KEKKA_NAIYO IS '長期海外案件商談結果内容'
/
COMMENT ON COLUMN ED4310T_TBL.RINJI_URIAGE_GENCHIKA_AMT IS '臨時売上現地貨金額'
/
COMMENT ON COLUMN ED4310T_TBL.RINJI_URIAGE_HOKA_AMT IS '臨時売上邦貨金額'
/
COMMENT ON COLUMN ED4310T_TBL.RINJI_GENKA_GENCHIKA_AMT IS '臨時原価現地貨金額'
/
COMMENT ON COLUMN ED4310T_TBL.RINJI_GENKA_HOKA_AMT IS '臨時原価邦貨金額'
/
COMMENT ON COLUMN ED4310T_TBL.RINJI_NOHIN_YMD IS '臨時納品年月日'
/
COMMENT ON COLUMN ED4310T_TBL.RINJI_JIGYO_SEGMENT_NM IS '臨時事業セグメント名称'
/
COMMENT ON COLUMN ED4310T_TBL.TNK_KIGI_ANKN_SHDN_KEKKA_NAIYO IS '臨時海外案件商談結果内容'
/
COMMENT ON COLUMN ED4310T_TBL.KOJI_GENCHIKA_AMT IS '工事現地貨金額'
/
COMMENT ON COLUMN ED4310T_TBL.KOJI_HOKA_AMT IS '工事邦貨金額'
/
COMMENT ON COLUMN ED4310T_TBL.KOJI_GENKA_GENCHIKA_AMT IS '工事原価現地貨金額'
/
COMMENT ON COLUMN ED4310T_TBL.KOJI_GENKA_HOKA_AMT IS '工事原価邦貨金額'
/
COMMENT ON COLUMN ED4310T_TBL.HOSHOKIN_GENCHIKA_AMT IS '保証金現地貨金額'
/
COMMENT ON COLUMN ED4310T_TBL.HOSHOKIN_HOKA_AMT IS '保証金邦貨金額'
/
COMMENT ON COLUMN ED4310T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4310T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4310T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4310T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4310T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4310T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4310T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4310T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4310T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4310T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4310T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4310T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/