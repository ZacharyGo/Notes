﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3009T_TBL.sql
-- 物理名：ED3009T_TBL
-- 論理名：保全結果テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3009T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3009T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,HOZEN_DEMPYO_NO  CHAR(15) NOT NULL --「保全伝票番号」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,KEIYAKU_STATUS_KBN  CHAR(1) NOT NULL --「契約ステータス区分」
	,HZN_DMPY_SKNNSH_KKNNZM_FLG  CHAR(1) DEFAULT '0' NOT NULL --「保全伝票責任者確認済フラグ」
	,SGY_HKKSH_DNSH_SIGN_JRYZM_KBN  CHAR(1) NOT NULL --「作業報告書電子サイン受領区分」
	,KEIBI_UNYO_JISSEKI_RENKEI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「警備運用実績連携フラグ」
	,TENKENSU_TAISHOGAI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「点検数対象外フラグ」
	,GC_GOKI_NO  VARCHAR2(11) --「ＧＣ号機番号」
	,TAISHOSAKI_CD  CHAR(9) --「対象先コード」
	,TAISHOSAKI_NM  VARCHAR2(40) --「対象先名称」
	,HOZEN_TAISHOSAKI_KETSUGO_JUSHO  VARCHAR2(200) --「保全対象先結合住所」
	,HZN_TISHSK_KTSG_TTMN_NM  VARCHAR2(300) --「保全対象先結合建物名称」
	,KEIYAKUSAKI_TORIHIKISAKI_CD  CHAR(9) --「契約先取引先コード」
	,KIYKSK_TRHKSK_SISHK_NM  VARCHAR2(50) --「契約先取引先正式名称」
	,SHOHIN_SERVICE_CD  CHAR(3) --「商品サービスコード」
	,SHOHIN_SERVICE_NM  VARCHAR2(60) --「商品サービス名称」
	,TENKEN_SHURUI_KBN_1  CHAR(1) NOT NULL --「点検種類区分１」
	,TENKEN_SHURUI_KBN_2  CHAR(1) NOT NULL --「点検種類区分２」
	,TENKEN_SHURUI_KBN_3  CHAR(1) NOT NULL --「点検種類区分３」
	,HOZEN_JISSHI_YMD  DATE --「保全実施年月日」
	,SAGYO_KAISHI_TM  CHAR(4) --「作業開始時刻」
	,HOZEN_JISSHI_SHURYO_YMD  DATE --「保全実施終了年月日」
	,SAGYO_SHURYO_TM  CHAR(4) --「作業終了時刻」
	,RINJI_HOZEN_IRAI_KANRI_NO  CHAR(10) --「臨時保全依頼管理番号」
	,SOKO_CD  CHAR(6) --「倉庫コード」
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
	,CONSTRAINT ED3009T_PK PRIMARY KEY(
	 HOZEN_DEMPYO_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3009T_TBL IS '保全結果テーブル'
/

COMMENT ON COLUMN ED3009T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3009T_TBL.HOZEN_DEMPYO_NO IS '保全伝票番号'
/
COMMENT ON COLUMN ED3009T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED3009T_TBL.KEIYAKU_STATUS_KBN IS '契約ステータス区分'
/
COMMENT ON COLUMN ED3009T_TBL.HZN_DMPY_SKNNSH_KKNNZM_FLG IS '保全伝票責任者確認済フラグ'
/
COMMENT ON COLUMN ED3009T_TBL.SGY_HKKSH_DNSH_SIGN_JRYZM_KBN IS '作業報告書電子サイン受領区分'
/
COMMENT ON COLUMN ED3009T_TBL.KEIBI_UNYO_JISSEKI_RENKEI_FLG IS '警備運用実績連携フラグ'
/
COMMENT ON COLUMN ED3009T_TBL.TENKENSU_TAISHOGAI_FLG IS '点検数対象外フラグ'
/
COMMENT ON COLUMN ED3009T_TBL.GC_GOKI_NO IS 'ＧＣ号機番号'
/
COMMENT ON COLUMN ED3009T_TBL.TAISHOSAKI_CD IS '対象先コード'
/
COMMENT ON COLUMN ED3009T_TBL.TAISHOSAKI_NM IS '対象先名称'
/
COMMENT ON COLUMN ED3009T_TBL.HOZEN_TAISHOSAKI_KETSUGO_JUSHO IS '保全対象先結合住所'
/
COMMENT ON COLUMN ED3009T_TBL.HZN_TISHSK_KTSG_TTMN_NM IS '保全対象先結合建物名称'
/
COMMENT ON COLUMN ED3009T_TBL.KEIYAKUSAKI_TORIHIKISAKI_CD IS '契約先取引先コード'
/
COMMENT ON COLUMN ED3009T_TBL.KIYKSK_TRHKSK_SISHK_NM IS '契約先取引先正式名称'
/
COMMENT ON COLUMN ED3009T_TBL.SHOHIN_SERVICE_CD IS '商品サービスコード'
/
COMMENT ON COLUMN ED3009T_TBL.SHOHIN_SERVICE_NM IS '商品サービス名称'
/
COMMENT ON COLUMN ED3009T_TBL.TENKEN_SHURUI_KBN_1 IS '点検種類区分１'
/
COMMENT ON COLUMN ED3009T_TBL.TENKEN_SHURUI_KBN_2 IS '点検種類区分２'
/
COMMENT ON COLUMN ED3009T_TBL.TENKEN_SHURUI_KBN_3 IS '点検種類区分３'
/
COMMENT ON COLUMN ED3009T_TBL.HOZEN_JISSHI_YMD IS '保全実施年月日'
/
COMMENT ON COLUMN ED3009T_TBL.SAGYO_KAISHI_TM IS '作業開始時刻'
/
COMMENT ON COLUMN ED3009T_TBL.HOZEN_JISSHI_SHURYO_YMD IS '保全実施終了年月日'
/
COMMENT ON COLUMN ED3009T_TBL.SAGYO_SHURYO_TM IS '作業終了時刻'
/
COMMENT ON COLUMN ED3009T_TBL.RINJI_HOZEN_IRAI_KANRI_NO IS '臨時保全依頼管理番号'
/
COMMENT ON COLUMN ED3009T_TBL.SOKO_CD IS '倉庫コード'
/
COMMENT ON COLUMN ED3009T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3009T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3009T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3009T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3009T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3009T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3009T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3009T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3009T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3009T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3009T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3009T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
