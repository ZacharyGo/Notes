﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED8502M_TBL.sql
-- 物理名：ED8502M_TBL
-- 論理名：仕訳パターンマスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED8502M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED8502M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SHIWAKE_PATTERN_ID  CHAR(4) NOT NULL --「仕訳パターンＩＤ」
	,SHIWAKE_SHIKIBETSU_CD  CHAR(8) NOT NULL --「仕訳識別コード」
	,GLOVIA_ZEMPO_TEKIYO  VARCHAR2(10) --「ＧＬＯＶＩＡ前方摘要」
	,JUCHU_KANRI_NO_KBN  CHAR(1) NOT NULL --「受注管理番号区分」
	,KEIYAKU_CHOKI_RINJI_KBN  CHAR(1) NOT NULL --「契約長期臨時区分」
	,CHUMON_KBN  CHAR(1) NOT NULL --「注文区分」
	,SHIZAI_SOBI_KBN  CHAR(1) NOT NULL --「資材装備区分」
	,SHUKKA_KBN  CHAR(1) NOT NULL --「出荷区分」
	,KOJI_KBN  CHAR(1) NOT NULL --「工事区分」
	,HIMMOKU_KBN  CHAR(1) NOT NULL --「品目区分」
	,HATCHUSAKI_KBN  CHAR(1) NOT NULL --「発注先区分」
	,TANAOROSHI_ZOGEN_KBN  CHAR(1) NOT NULL --「棚卸増減区分」
	,SOSAI_KBN  CHAR(1) NOT NULL --「相殺区分」
	,CHOZOHIN_KBN  CHAR(2) NOT NULL --「貯蔵品区分」
	,KEIYAKU_JIGYO_SEGMENT_CD  CHAR(3) --「契約事業セグメントコード」
	,HIMMEI_JIGYO_SEGMENT_CD  CHAR(3) --「品名事業セグメントコード」
	,SHOHIN_SERVICE_BUNRUI_CD  CHAR(6) --「商品サービス分類コード」
	,ZAIKO_HIMMOKU_KBN  CHAR(1) NOT NULL --「在庫品目区分」
	,SEIKYU_SHIHARAI_CD  CHAR(3) --「請求支払コード」
	,HENKIN_KBN  CHAR(1) --「返金区分」
	,SHWK_PATTERN_HJ_MASTER_RY_FLG  CHAR(1) DEFAULT '0' NOT NULL --「仕訳パターン補助マスタ利用フラグ」
	,GENKA_HANKAN_KBN  CHAR(1) NOT NULL --「原価販管区分」
	,KRKT_KNJ_KMK_STTI_KBN  CHAR(1) NOT NULL --「借方勘定科目設定区分」
	,KARIKATA_KANJO_KAMOKU_CD  VARCHAR2(12) --「借方勘定科目コード」
	,KRKT_HJ_KMK_STTI_KBN  CHAR(1) NOT NULL --「借方補助科目設定区分」
	,KARIKATA_HOJO_KAMOKU_CD  VARCHAR2(12) --「借方補助科目コード」
	,KRKT_FTN_BMN_SSHK_STTI_KBN  CHAR(2) NOT NULL --「借方負担部門組織設定区分」
	,KRKT_FTN_BMN_SSHK_CD  CHAR(6) --「借方負担部門組織コード」
	,KRKT_JGY_SEGMENT_STTI_KBN  CHAR(1) NOT NULL --「借方事業セグメント設定区分」
	,KARIKATA_JIGYO_SEGMENT_CD  CHAR(3) --「借方事業セグメントコード」
	,KRKT_SHN_SERVICE_BNRI_STTI_KBN  CHAR(1) NOT NULL --「借方商品サービス分類設定区分」
	,KRKT_SHHN_SERVICE_BNRI_CD  CHAR(6) --「借方商品サービス分類コード」
	,KRKT_UNY_COURSE_STTI_KBN  CHAR(1) NOT NULL --「借方運用コース設定区分」
	,KARIKATA_UNYO_COURSE_CD  CHAR(9) --「借方運用コースコード」
	,KRKT_AITSK_TRHKSK_STTI_KBN  CHAR(1) NOT NULL --「借方相手先取引先設定区分」
	,KRKT_AITSK_TRHKSK_CD  CHAR(9) --「借方相手先取引先コード」
	,KRKT_JCH_KIYK_NO_STTI_KBN  CHAR(1) NOT NULL --「借方受注契約番号設定区分」
	,KARIKATA_JUCHU_KEIYAKU_NO  CHAR(15) --「借方受注契約番号」
	,KRKT_SHHZI_SHWK_SKSI_KBN  CHAR(1) NOT NULL --「借方消費税仕訳作成区分」
	,KSHKT_KNJ_KMK_STTI_KBN  CHAR(1) NOT NULL --「貸方勘定科目設定区分」
	,KASHIKATA_KANJO_KAMOKU_CD  VARCHAR2(12) --「貸方勘定科目コード」
	,KSHKT_HJ_KMK_STTI_KBN  CHAR(1) NOT NULL --「貸方補助科目設定区分」
	,KASHIKATA_HOJO_KAMOKU_CD  VARCHAR2(12) --「貸方補助科目コード」
	,KSHKT_FTN_BMN_SSHK_STTI_KBN  CHAR(2) NOT NULL --「貸方負担部門組織設定区分」
	,KSHKT_FTN_BMN_SSHK_CD  CHAR(6) --「貸方負担部門組織コード」
	,KSHKT_JGY_SEGMENT_STTI_KBN  CHAR(1) NOT NULL --「貸方事業セグメント設定区分」
	,KASHIKATA_JIGYO_SEGMENT_CD  CHAR(3) --「貸方事業セグメントコード」
	,KSKT_SHN_SERVICE_BNRI_STTI_KBN  CHAR(1) NOT NULL --「貸方商品サービス分類設定区分」
	,KSHKT_SHHN_SERVICE_BNRI_CD  CHAR(6) --「貸方商品サービス分類コード」
	,KSHKT_UNY_COURSE_STTI_KBN  CHAR(1) NOT NULL --「貸方運用コース設定区分」
	,KASHIKATA_UNYO_COURSE_CD  CHAR(9) --「貸方運用コースコード」
	,KSHKT_AITSK_TRHKSK_STTI_KBN  CHAR(1) NOT NULL --「貸方相手先取引先設定区分」
	,KSHKT_AITSK_TRHKSK_CD  CHAR(9) --「貸方相手先取引先コード」
	,KSHKT_JCH_KIYK_NO_STTI_KBN  CHAR(1) NOT NULL --「貸方受注契約番号設定区分」
	,KASHIKATA_JUCHU_KEIYAKU_NO  CHAR(15) --「貸方受注契約番号」
	,KSHKT_SHHZI_SHWK_SKSI_KBN  CHAR(1) NOT NULL --「貸方消費税仕訳作成区分」
	,KENKARI_AMT_SHURUI_KBN  CHAR(1) --「建仮金額種類区分」
	,SHISAN_HANTEI_KEKKA_KBN  CHAR(1) NOT NULL --「資産判定結果区分」
	,KENKARI_SHISAN_IF_KBN  CHAR(1) NOT NULL --「建仮資産ＩＦ区分」
	,RONRI_SAKUJO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「論理削除フラグ」
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
	,CONSTRAINT ED8502M_PK PRIMARY KEY(
	 SHIWAKE_PATTERN_ID
	,  SHIWAKE_SHIKIBETSU_CD
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED8502M_TBL IS '仕訳パターンマスタ'
/

COMMENT ON COLUMN ED8502M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED8502M_TBL.SHIWAKE_PATTERN_ID IS '仕訳パターンＩＤ'
/
COMMENT ON COLUMN ED8502M_TBL.SHIWAKE_SHIKIBETSU_CD IS '仕訳識別コード'
/
COMMENT ON COLUMN ED8502M_TBL.GLOVIA_ZEMPO_TEKIYO IS 'ＧＬＯＶＩＡ前方摘要'
/
COMMENT ON COLUMN ED8502M_TBL.JUCHU_KANRI_NO_KBN IS '受注管理番号区分'
/
COMMENT ON COLUMN ED8502M_TBL.KEIYAKU_CHOKI_RINJI_KBN IS '契約長期臨時区分'
/
COMMENT ON COLUMN ED8502M_TBL.CHUMON_KBN IS '注文区分'
/
COMMENT ON COLUMN ED8502M_TBL.SHIZAI_SOBI_KBN IS '資材装備区分'
/
COMMENT ON COLUMN ED8502M_TBL.SHUKKA_KBN IS '出荷区分'
/
COMMENT ON COLUMN ED8502M_TBL.KOJI_KBN IS '工事区分'
/
COMMENT ON COLUMN ED8502M_TBL.HIMMOKU_KBN IS '品目区分'
/
COMMENT ON COLUMN ED8502M_TBL.HATCHUSAKI_KBN IS '発注先区分'
/
COMMENT ON COLUMN ED8502M_TBL.TANAOROSHI_ZOGEN_KBN IS '棚卸増減区分'
/
COMMENT ON COLUMN ED8502M_TBL.SOSAI_KBN IS '相殺区分'
/
COMMENT ON COLUMN ED8502M_TBL.CHOZOHIN_KBN IS '貯蔵品区分'
/
COMMENT ON COLUMN ED8502M_TBL.KEIYAKU_JIGYO_SEGMENT_CD IS '契約事業セグメントコード'
/
COMMENT ON COLUMN ED8502M_TBL.HIMMEI_JIGYO_SEGMENT_CD IS '品名事業セグメントコード'
/
COMMENT ON COLUMN ED8502M_TBL.SHOHIN_SERVICE_BUNRUI_CD IS '商品サービス分類コード'
/
COMMENT ON COLUMN ED8502M_TBL.ZAIKO_HIMMOKU_KBN IS '在庫品目区分'
/
COMMENT ON COLUMN ED8502M_TBL.SEIKYU_SHIHARAI_CD IS '請求支払コード'
/
COMMENT ON COLUMN ED8502M_TBL.HENKIN_KBN IS '返金区分'
/
COMMENT ON COLUMN ED8502M_TBL.SHWK_PATTERN_HJ_MASTER_RY_FLG IS '仕訳パターン補助マスタ利用フラグ'
/
COMMENT ON COLUMN ED8502M_TBL.GENKA_HANKAN_KBN IS '原価販管区分'
/
COMMENT ON COLUMN ED8502M_TBL.KRKT_KNJ_KMK_STTI_KBN IS '借方勘定科目設定区分'
/
COMMENT ON COLUMN ED8502M_TBL.KARIKATA_KANJO_KAMOKU_CD IS '借方勘定科目コード'
/
COMMENT ON COLUMN ED8502M_TBL.KRKT_HJ_KMK_STTI_KBN IS '借方補助科目設定区分'
/
COMMENT ON COLUMN ED8502M_TBL.KARIKATA_HOJO_KAMOKU_CD IS '借方補助科目コード'
/
COMMENT ON COLUMN ED8502M_TBL.KRKT_FTN_BMN_SSHK_STTI_KBN IS '借方負担部門組織設定区分'
/
COMMENT ON COLUMN ED8502M_TBL.KRKT_FTN_BMN_SSHK_CD IS '借方負担部門組織コード'
/
COMMENT ON COLUMN ED8502M_TBL.KRKT_JGY_SEGMENT_STTI_KBN IS '借方事業セグメント設定区分'
/
COMMENT ON COLUMN ED8502M_TBL.KARIKATA_JIGYO_SEGMENT_CD IS '借方事業セグメントコード'
/
COMMENT ON COLUMN ED8502M_TBL.KRKT_SHN_SERVICE_BNRI_STTI_KBN IS '借方商品サービス分類設定区分'
/
COMMENT ON COLUMN ED8502M_TBL.KRKT_SHHN_SERVICE_BNRI_CD IS '借方商品サービス分類コード'
/
COMMENT ON COLUMN ED8502M_TBL.KRKT_UNY_COURSE_STTI_KBN IS '借方運用コース設定区分'
/
COMMENT ON COLUMN ED8502M_TBL.KARIKATA_UNYO_COURSE_CD IS '借方運用コースコード'
/
COMMENT ON COLUMN ED8502M_TBL.KRKT_AITSK_TRHKSK_STTI_KBN IS '借方相手先取引先設定区分'
/
COMMENT ON COLUMN ED8502M_TBL.KRKT_AITSK_TRHKSK_CD IS '借方相手先取引先コード'
/
COMMENT ON COLUMN ED8502M_TBL.KRKT_JCH_KIYK_NO_STTI_KBN IS '借方受注契約番号設定区分'
/
COMMENT ON COLUMN ED8502M_TBL.KARIKATA_JUCHU_KEIYAKU_NO IS '借方受注契約番号'
/
COMMENT ON COLUMN ED8502M_TBL.KRKT_SHHZI_SHWK_SKSI_KBN IS '借方消費税仕訳作成区分'
/
COMMENT ON COLUMN ED8502M_TBL.KSHKT_KNJ_KMK_STTI_KBN IS '貸方勘定科目設定区分'
/
COMMENT ON COLUMN ED8502M_TBL.KASHIKATA_KANJO_KAMOKU_CD IS '貸方勘定科目コード'
/
COMMENT ON COLUMN ED8502M_TBL.KSHKT_HJ_KMK_STTI_KBN IS '貸方補助科目設定区分'
/
COMMENT ON COLUMN ED8502M_TBL.KASHIKATA_HOJO_KAMOKU_CD IS '貸方補助科目コード'
/
COMMENT ON COLUMN ED8502M_TBL.KSHKT_FTN_BMN_SSHK_STTI_KBN IS '貸方負担部門組織設定区分'
/
COMMENT ON COLUMN ED8502M_TBL.KSHKT_FTN_BMN_SSHK_CD IS '貸方負担部門組織コード'
/
COMMENT ON COLUMN ED8502M_TBL.KSHKT_JGY_SEGMENT_STTI_KBN IS '貸方事業セグメント設定区分'
/
COMMENT ON COLUMN ED8502M_TBL.KASHIKATA_JIGYO_SEGMENT_CD IS '貸方事業セグメントコード'
/
COMMENT ON COLUMN ED8502M_TBL.KSKT_SHN_SERVICE_BNRI_STTI_KBN IS '貸方商品サービス分類設定区分'
/
COMMENT ON COLUMN ED8502M_TBL.KSHKT_SHHN_SERVICE_BNRI_CD IS '貸方商品サービス分類コード'
/
COMMENT ON COLUMN ED8502M_TBL.KSHKT_UNY_COURSE_STTI_KBN IS '貸方運用コース設定区分'
/
COMMENT ON COLUMN ED8502M_TBL.KASHIKATA_UNYO_COURSE_CD IS '貸方運用コースコード'
/
COMMENT ON COLUMN ED8502M_TBL.KSHKT_AITSK_TRHKSK_STTI_KBN IS '貸方相手先取引先設定区分'
/
COMMENT ON COLUMN ED8502M_TBL.KSHKT_AITSK_TRHKSK_CD IS '貸方相手先取引先コード'
/
COMMENT ON COLUMN ED8502M_TBL.KSHKT_JCH_KIYK_NO_STTI_KBN IS '貸方受注契約番号設定区分'
/
COMMENT ON COLUMN ED8502M_TBL.KASHIKATA_JUCHU_KEIYAKU_NO IS '貸方受注契約番号'
/
COMMENT ON COLUMN ED8502M_TBL.KSHKT_SHHZI_SHWK_SKSI_KBN IS '貸方消費税仕訳作成区分'
/
COMMENT ON COLUMN ED8502M_TBL.KENKARI_AMT_SHURUI_KBN IS '建仮金額種類区分'
/
COMMENT ON COLUMN ED8502M_TBL.SHISAN_HANTEI_KEKKA_KBN IS '資産判定結果区分'
/
COMMENT ON COLUMN ED8502M_TBL.KENKARI_SHISAN_IF_KBN IS '建仮資産ＩＦ区分'
/
COMMENT ON COLUMN ED8502M_TBL.RONRI_SAKUJO_FLG IS '論理削除フラグ'
/
COMMENT ON COLUMN ED8502M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED8502M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED8502M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED8502M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED8502M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED8502M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED8502M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED8502M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED8502M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED8502M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED8502M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED8502M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
