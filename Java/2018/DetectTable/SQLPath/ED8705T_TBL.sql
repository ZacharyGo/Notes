﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED8705T_TBL.sql
-- 物理名：ED8705T_TBL
-- 論理名：建仮未成台帳テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED8705T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED8705T_TBL (
	 KENKARI_MISEI_DAICHO_SN  CHAR(14) NOT NULL --「建仮未成台帳連番」
	,KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,EIGYO_KANRI_YM  CHAR(6) NOT NULL --「営業管理年月」
	,JIGYOSHO_CD  CHAR(6) NOT NULL --「事業所コード」
	,KANJO_KAMOKU_CD  VARCHAR2(12) NOT NULL --「勘定科目コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) --「受注契約番号」
	,SHOHIN_SERVICE_BUNRUI_CD  CHAR(6) --「商品サービス分類コード」
	,KEIYAKUSAKI_TORIHIKISAKI_CD  CHAR(9) --「契約先取引先コード」
	,HIMMEI_CD  CHAR(8) --「品名コード」
	,TAISHOSAKI_CD  CHAR(9) --「対象先コード」
	,JIGYOSHO_NM  VARCHAR2(200) --「事業所名称」
	,JIGYOSHO_KETSUGO_NM  VARCHAR2(400) --「事業所結合名称」
	,KANJO_KAMOKU_NM  VARCHAR2(64) --「勘定科目名称」
	,JIGYO_SEGMENT_CD  CHAR(3) --「事業セグメントコード」
	,JIGYO_SEGMENT_NM  VARCHAR2(64) --「事業セグメント名称」
	,KEIYAKUSAKI_TORIHIKISAKI_NM  VARCHAR2(40) --「契約先取引先名称」
	,KIYKSK_TRHKSK_SISHK_NM  VARCHAR2(50) --「契約先取引先正式名称」
	,HIMMEI_NM  VARCHAR2(60) --「品名名称」
	,TAISHOSAKI_NM  VARCHAR2(40) --「対象先名称」
	,SHOHIN_SERVICE_BUNRUI_NM  VARCHAR2(80) --「商品サービス分類名称」
	,JISSHI_JIGYOSHO_CD  CHAR(6) --「実施事業所コード」
	,JISSHI_JIGYOSHO_NM  VARCHAR2(200) --「実施事業所名称」
	,JISSHI_JIGYOSHO_KETSUGO_NM  VARCHAR2(400) --「実施事業所結合名称」
	,JUCHU_JIGYOSHO_CD  CHAR(6) --「受注事業所コード」
	,JUCHU_JIGYOSHO_NM  VARCHAR2(200) --「受注事業所名称」
	,JUCHU_JIGYOSHO_KETSUGO_NM  VARCHAR2(400) --「受注事業所結合名称」
	,KENKARI_AMT_SHURUI_KBN  CHAR(1) --「建仮金額種類区分」
	,SHUKKA_KBN  CHAR(1) --「出荷区分」
	,KOJI_KBN  CHAR(1) --「工事区分」
	,KAIKEIYO_KOJI_KBN_NM  VARCHAR2(60) --「会計用工事区分名称」
	,GAICHU_KBN  CHAR(1) --「外注区分」
	,KAIKEIYO_GAICHU_KBN_NM  VARCHAR2(60) --「会計用外注区分名称」
	,KIKIHI_KURIKOSHI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「機器費繰越金額」
	,KIKIHI_TOGETSU_SHUKKABUN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「機器費当月出荷分金額」
	,KIKIHI_ZANDAKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「機器費残高金額」
	,KOJIHI_KURIKOSHI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「工事費繰越金額」
	,KOJIHI_TOGETSU_KANRYOBUN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「工事費当月完了分金額」
	,KOJIHI_ZANDAKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「工事費残高金額」
	,GOKEI_KURIKOSHI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「合計繰越金額」
	,GOKEI_TOGETSU_KEIJOBUN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「合計当月計上分金額」
	,GOKEI_ZANDAKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「合計残高金額」
	,NOHIN_YMD  DATE --「納品年月日」
	,KOJI_KANRYO_YMD  DATE --「工事完了年月日」
	,GYOMU_KAISHI_YMD  DATE --「業務開始年月日」
	,KENKARI_FURIKAE_YMD  DATE --「建仮振替年月日」
	,KOJIHI_FURIKAE_YMD  DATE --「工事費振替年月日」
	,KIKIHI_FURIKAE_YMD  DATE --「機器費振替年月日」
	,SHOKAI_KEIJO_YMD  DATE --「初回計上年月日」
	,KEIJO_YMD  DATE NOT NULL --「計上年月日」
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
	,CONSTRAINT ED8705T_PK PRIMARY KEY(
	 KENKARI_MISEI_DAICHO_SN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED8705T_TBL IS '建仮未成台帳テーブル'
/

COMMENT ON COLUMN ED8705T_TBL.KENKARI_MISEI_DAICHO_SN IS '建仮未成台帳連番'
/
COMMENT ON COLUMN ED8705T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED8705T_TBL.EIGYO_KANRI_YM IS '営業管理年月'
/
COMMENT ON COLUMN ED8705T_TBL.JIGYOSHO_CD IS '事業所コード'
/
COMMENT ON COLUMN ED8705T_TBL.KANJO_KAMOKU_CD IS '勘定科目コード'
/
COMMENT ON COLUMN ED8705T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED8705T_TBL.SHOHIN_SERVICE_BUNRUI_CD IS '商品サービス分類コード'
/
COMMENT ON COLUMN ED8705T_TBL.KEIYAKUSAKI_TORIHIKISAKI_CD IS '契約先取引先コード'
/
COMMENT ON COLUMN ED8705T_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED8705T_TBL.TAISHOSAKI_CD IS '対象先コード'
/
COMMENT ON COLUMN ED8705T_TBL.JIGYOSHO_NM IS '事業所名称'
/
COMMENT ON COLUMN ED8705T_TBL.JIGYOSHO_KETSUGO_NM IS '事業所結合名称'
/
COMMENT ON COLUMN ED8705T_TBL.KANJO_KAMOKU_NM IS '勘定科目名称'
/
COMMENT ON COLUMN ED8705T_TBL.JIGYO_SEGMENT_CD IS '事業セグメントコード'
/
COMMENT ON COLUMN ED8705T_TBL.JIGYO_SEGMENT_NM IS '事業セグメント名称'
/
COMMENT ON COLUMN ED8705T_TBL.KEIYAKUSAKI_TORIHIKISAKI_NM IS '契約先取引先名称'
/
COMMENT ON COLUMN ED8705T_TBL.KIYKSK_TRHKSK_SISHK_NM IS '契約先取引先正式名称'
/
COMMENT ON COLUMN ED8705T_TBL.HIMMEI_NM IS '品名名称'
/
COMMENT ON COLUMN ED8705T_TBL.TAISHOSAKI_NM IS '対象先名称'
/
COMMENT ON COLUMN ED8705T_TBL.SHOHIN_SERVICE_BUNRUI_NM IS '商品サービス分類名称'
/
COMMENT ON COLUMN ED8705T_TBL.JISSHI_JIGYOSHO_CD IS '実施事業所コード'
/
COMMENT ON COLUMN ED8705T_TBL.JISSHI_JIGYOSHO_NM IS '実施事業所名称'
/
COMMENT ON COLUMN ED8705T_TBL.JISSHI_JIGYOSHO_KETSUGO_NM IS '実施事業所結合名称'
/
COMMENT ON COLUMN ED8705T_TBL.JUCHU_JIGYOSHO_CD IS '受注事業所コード'
/
COMMENT ON COLUMN ED8705T_TBL.JUCHU_JIGYOSHO_NM IS '受注事業所名称'
/
COMMENT ON COLUMN ED8705T_TBL.JUCHU_JIGYOSHO_KETSUGO_NM IS '受注事業所結合名称'
/
COMMENT ON COLUMN ED8705T_TBL.KENKARI_AMT_SHURUI_KBN IS '建仮金額種類区分'
/
COMMENT ON COLUMN ED8705T_TBL.SHUKKA_KBN IS '出荷区分'
/
COMMENT ON COLUMN ED8705T_TBL.KOJI_KBN IS '工事区分'
/
COMMENT ON COLUMN ED8705T_TBL.KAIKEIYO_KOJI_KBN_NM IS '会計用工事区分名称'
/
COMMENT ON COLUMN ED8705T_TBL.GAICHU_KBN IS '外注区分'
/
COMMENT ON COLUMN ED8705T_TBL.KAIKEIYO_GAICHU_KBN_NM IS '会計用外注区分名称'
/
COMMENT ON COLUMN ED8705T_TBL.KIKIHI_KURIKOSHI_AMT IS '機器費繰越金額'
/
COMMENT ON COLUMN ED8705T_TBL.KIKIHI_TOGETSU_SHUKKABUN_AMT IS '機器費当月出荷分金額'
/
COMMENT ON COLUMN ED8705T_TBL.KIKIHI_ZANDAKA_AMT IS '機器費残高金額'
/
COMMENT ON COLUMN ED8705T_TBL.KOJIHI_KURIKOSHI_AMT IS '工事費繰越金額'
/
COMMENT ON COLUMN ED8705T_TBL.KOJIHI_TOGETSU_KANRYOBUN_AMT IS '工事費当月完了分金額'
/
COMMENT ON COLUMN ED8705T_TBL.KOJIHI_ZANDAKA_AMT IS '工事費残高金額'
/
COMMENT ON COLUMN ED8705T_TBL.GOKEI_KURIKOSHI_AMT IS '合計繰越金額'
/
COMMENT ON COLUMN ED8705T_TBL.GOKEI_TOGETSU_KEIJOBUN_AMT IS '合計当月計上分金額'
/
COMMENT ON COLUMN ED8705T_TBL.GOKEI_ZANDAKA_AMT IS '合計残高金額'
/
COMMENT ON COLUMN ED8705T_TBL.NOHIN_YMD IS '納品年月日'
/
COMMENT ON COLUMN ED8705T_TBL.KOJI_KANRYO_YMD IS '工事完了年月日'
/
COMMENT ON COLUMN ED8705T_TBL.GYOMU_KAISHI_YMD IS '業務開始年月日'
/
COMMENT ON COLUMN ED8705T_TBL.KENKARI_FURIKAE_YMD IS '建仮振替年月日'
/
COMMENT ON COLUMN ED8705T_TBL.KOJIHI_FURIKAE_YMD IS '工事費振替年月日'
/
COMMENT ON COLUMN ED8705T_TBL.KIKIHI_FURIKAE_YMD IS '機器費振替年月日'
/
COMMENT ON COLUMN ED8705T_TBL.SHOKAI_KEIJO_YMD IS '初回計上年月日'
/
COMMENT ON COLUMN ED8705T_TBL.KEIJO_YMD IS '計上年月日'
/
COMMENT ON COLUMN ED8705T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED8705T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED8705T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED8705T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED8705T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED8705T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED8705T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED8705T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED8705T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED8705T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED8705T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED8705T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
