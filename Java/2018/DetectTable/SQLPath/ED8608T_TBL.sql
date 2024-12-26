﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED8608T_TBL.sql
-- 物理名：ED8608T_TBL
-- 論理名：仕訳元売上情報前日分テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED8608T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED8608T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,HASSEIMOTO_GYOMU_KBN  CHAR(3) NOT NULL --「発生元業務区分」
	,HASSEIMOTO_KINO_ID  CHAR(15) NOT NULL --「発生元機能ＩＤ」
	,SHIWAKE_SHIKIBETSU_CD  CHAR(8) NOT NULL --「仕訳識別コード」
	,SHIWAKEMOTO_DEMPYO_NO  CHAR(20) NOT NULL --「仕訳元伝票番号」
	,SHIWAKEMOTO_DEMPYO_NO_BN  CHAR(20) NOT NULL --「仕訳元伝票番号枝番」
	,SHWKMT_DMPY_MISIGY_NO  CHAR(20) NOT NULL --「仕訳元伝票明細行番号」
	,SHWKMT_DMPY_MISIGY_NO_BN  CHAR(20) NOT NULL --「仕訳元伝票明細行番号枝番」
	,JUCHU_KANRI_NO_KBN  CHAR(1) NOT NULL --「受注管理番号区分」
	,KEIYAKU_CHOKI_RINJI_KBN  CHAR(1) NOT NULL --「契約長期臨時区分」
	,JUCHU_KEIYAKU_NO  CHAR(15) --「受注契約番号」
	,SEIKYU_SHIHARAI_CD  CHAR(3) --「請求支払コード」
	,ZEIKOMI_SHIWAKE_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「税込仕訳金額」
	,ZEINUKI_SHIWAKE_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「税抜仕訳金額」
	,SHOHIZEI_KBN  CHAR(1) NOT NULL --「消費税区分」
	,SHOHI_ZEIRITSU_CD  CHAR(2) NOT NULL --「消費税率コード」
	,SHIWAKE_SHOHIZEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「仕訳消費税金額」
	,JUCHU_JIGYOSHO_CD  CHAR(6) --「受注事業所コード」
	,JISSHI_JIGYOSHO_CD  CHAR(6) --「実施事業所コード」
	,SEIKYU_KANRI_JIGYOSHO_CD  CHAR(6) --「請求管理事業所コード」
	,KRKT_FTN_BMN_SSHK_CD  CHAR(6) --「借方負担部門組織コード」
	,KARIKATA_KANJO_KAMOKU_CD  VARCHAR2(12) --「借方勘定科目コード」
	,KARIKATA_HOJO_KAMOKU_CD  VARCHAR2(12) --「借方補助科目コード」
	,KSHKT_FTN_BMN_SSHK_CD  CHAR(6) --「貸方負担部門組織コード」
	,KASHIKATA_KANJO_KAMOKU_CD  VARCHAR2(12) --「貸方勘定科目コード」
	,KASHIKATA_HOJO_KAMOKU_CD  VARCHAR2(12) --「貸方補助科目コード」
	,GLOVIA_SHWK_DMPY_MISI_TEKIYO  VARCHAR2(64) --「ＧＬＯＶＩＡ仕訳伝票明細摘要」
	,KAIKEI_SHORI_YMD  DATE --「会計処理年月日」
	,KEIYAKU_JIGYO_SEGMENT_CD  CHAR(3) --「契約事業セグメントコード」
	,HIMMEI_JIGYO_SEGMENT_CD  CHAR(3) --「品名事業セグメントコード」
	,SHOHIN_SERVICE_BUNRUI_CD  CHAR(6) --「商品サービス分類コード」
	,UNYO_COURSE_CD  CHAR(9) --「運用コースコード」
	,KEIYAKUSAKI_TORIHIKISAKI_CD  CHAR(9) --「契約先取引先コード」
	,SHIHARAISAKI_TORIHIKISAKI_CD  CHAR(9) --「支払先取引先コード」
	,TAISHOSAKI_CD  CHAR(9) --「対象先コード」
	,HIMMEI_CD  CHAR(8) --「品名コード」
	,SEIKYUSAKI_TORIHIKISAKI_CD  CHAR(9) --「請求先取引先コード」
	,KEIJO_YMD  DATE NOT NULL --「計上年月日」
	,SHIWAKEMOTO_DEMPYO_JIGYOSHO_CD  CHAR(6) --「仕訳元伝票事業所コード」
	,SHIWAKEMOTO_DEMPYO_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「仕訳元伝票数量」
	,SHIWAKEMOTO_DEMPYO_TANKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「仕訳元伝票単価金額」
	,SHIWAKE_SHORI_KBN  CHAR(1) DEFAULT '0' NOT NULL --「仕訳処理区分」
	,SHIWAKE_TORIKESHI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「仕訳取消フラグ」
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
	,CONSTRAINT ED8608T_PK PRIMARY KEY(
	 HASSEIMOTO_GYOMU_KBN
	,  KAISHA_CD
	,  HASSEIMOTO_KINO_ID
	,  SHIWAKE_SHIKIBETSU_CD
	,  SHIWAKEMOTO_DEMPYO_NO
	,  SHIWAKEMOTO_DEMPYO_NO_BN
	,  SHWKMT_DMPY_MISIGY_NO
	,  SHWKMT_DMPY_MISIGY_NO_BN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED8608T_TBL IS '仕訳元売上情報前日分テーブル'
/

COMMENT ON COLUMN ED8608T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED8608T_TBL.HASSEIMOTO_GYOMU_KBN IS '発生元業務区分'
/
COMMENT ON COLUMN ED8608T_TBL.HASSEIMOTO_KINO_ID IS '発生元機能ＩＤ'
/
COMMENT ON COLUMN ED8608T_TBL.SHIWAKE_SHIKIBETSU_CD IS '仕訳識別コード'
/
COMMENT ON COLUMN ED8608T_TBL.SHIWAKEMOTO_DEMPYO_NO IS '仕訳元伝票番号'
/
COMMENT ON COLUMN ED8608T_TBL.SHIWAKEMOTO_DEMPYO_NO_BN IS '仕訳元伝票番号枝番'
/
COMMENT ON COLUMN ED8608T_TBL.SHWKMT_DMPY_MISIGY_NO IS '仕訳元伝票明細行番号'
/
COMMENT ON COLUMN ED8608T_TBL.SHWKMT_DMPY_MISIGY_NO_BN IS '仕訳元伝票明細行番号枝番'
/
COMMENT ON COLUMN ED8608T_TBL.JUCHU_KANRI_NO_KBN IS '受注管理番号区分'
/
COMMENT ON COLUMN ED8608T_TBL.KEIYAKU_CHOKI_RINJI_KBN IS '契約長期臨時区分'
/
COMMENT ON COLUMN ED8608T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED8608T_TBL.SEIKYU_SHIHARAI_CD IS '請求支払コード'
/
COMMENT ON COLUMN ED8608T_TBL.ZEIKOMI_SHIWAKE_AMT IS '税込仕訳金額'
/
COMMENT ON COLUMN ED8608T_TBL.ZEINUKI_SHIWAKE_AMT IS '税抜仕訳金額'
/
COMMENT ON COLUMN ED8608T_TBL.SHOHIZEI_KBN IS '消費税区分'
/
COMMENT ON COLUMN ED8608T_TBL.SHOHI_ZEIRITSU_CD IS '消費税率コード'
/
COMMENT ON COLUMN ED8608T_TBL.SHIWAKE_SHOHIZEI_AMT IS '仕訳消費税金額'
/
COMMENT ON COLUMN ED8608T_TBL.JUCHU_JIGYOSHO_CD IS '受注事業所コード'
/
COMMENT ON COLUMN ED8608T_TBL.JISSHI_JIGYOSHO_CD IS '実施事業所コード'
/
COMMENT ON COLUMN ED8608T_TBL.SEIKYU_KANRI_JIGYOSHO_CD IS '請求管理事業所コード'
/
COMMENT ON COLUMN ED8608T_TBL.KRKT_FTN_BMN_SSHK_CD IS '借方負担部門組織コード'
/
COMMENT ON COLUMN ED8608T_TBL.KARIKATA_KANJO_KAMOKU_CD IS '借方勘定科目コード'
/
COMMENT ON COLUMN ED8608T_TBL.KARIKATA_HOJO_KAMOKU_CD IS '借方補助科目コード'
/
COMMENT ON COLUMN ED8608T_TBL.KSHKT_FTN_BMN_SSHK_CD IS '貸方負担部門組織コード'
/
COMMENT ON COLUMN ED8608T_TBL.KASHIKATA_KANJO_KAMOKU_CD IS '貸方勘定科目コード'
/
COMMENT ON COLUMN ED8608T_TBL.KASHIKATA_HOJO_KAMOKU_CD IS '貸方補助科目コード'
/
COMMENT ON COLUMN ED8608T_TBL.GLOVIA_SHWK_DMPY_MISI_TEKIYO IS 'ＧＬＯＶＩＡ仕訳伝票明細摘要'
/
COMMENT ON COLUMN ED8608T_TBL.KAIKEI_SHORI_YMD IS '会計処理年月日'
/
COMMENT ON COLUMN ED8608T_TBL.KEIYAKU_JIGYO_SEGMENT_CD IS '契約事業セグメントコード'
/
COMMENT ON COLUMN ED8608T_TBL.HIMMEI_JIGYO_SEGMENT_CD IS '品名事業セグメントコード'
/
COMMENT ON COLUMN ED8608T_TBL.SHOHIN_SERVICE_BUNRUI_CD IS '商品サービス分類コード'
/
COMMENT ON COLUMN ED8608T_TBL.UNYO_COURSE_CD IS '運用コースコード'
/
COMMENT ON COLUMN ED8608T_TBL.KEIYAKUSAKI_TORIHIKISAKI_CD IS '契約先取引先コード'
/
COMMENT ON COLUMN ED8608T_TBL.SHIHARAISAKI_TORIHIKISAKI_CD IS '支払先取引先コード'
/
COMMENT ON COLUMN ED8608T_TBL.TAISHOSAKI_CD IS '対象先コード'
/
COMMENT ON COLUMN ED8608T_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED8608T_TBL.SEIKYUSAKI_TORIHIKISAKI_CD IS '請求先取引先コード'
/
COMMENT ON COLUMN ED8608T_TBL.KEIJO_YMD IS '計上年月日'
/
COMMENT ON COLUMN ED8608T_TBL.SHIWAKEMOTO_DEMPYO_JIGYOSHO_CD IS '仕訳元伝票事業所コード'
/
COMMENT ON COLUMN ED8608T_TBL.SHIWAKEMOTO_DEMPYO_SURYO IS '仕訳元伝票数量'
/
COMMENT ON COLUMN ED8608T_TBL.SHIWAKEMOTO_DEMPYO_TANKA_AMT IS '仕訳元伝票単価金額'
/
COMMENT ON COLUMN ED8608T_TBL.SHIWAKE_SHORI_KBN IS '仕訳処理区分'
/
COMMENT ON COLUMN ED8608T_TBL.SHIWAKE_TORIKESHI_FLG IS '仕訳取消フラグ'
/
COMMENT ON COLUMN ED8608T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED8608T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED8608T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED8608T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED8608T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED8608T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED8608T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED8608T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED8608T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED8608T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED8608T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED8608T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
