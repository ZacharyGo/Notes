﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3623W_TBL.sql
-- 物理名：ED3623W_TBL
-- 論理名：ＦＢ入出金取引明細ワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3623W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3623W_TBL (
	 FB_NYUSHUKKIN_MEISAI_SN  CHAR(14) NOT NULL --「ＦＢ＿入出金明細連番」
	,KAISHA_CD  CHAR(5) --「会社コード」
	,FB_DATA_HEADER_KBN  CHAR(1) --「ＦＢ＿データヘッダ区分」
	,FB_SHUBETSU_CD  VARCHAR2(10) --「ＦＢ＿種別コード」
	,FB_CD_KBN  CHAR(1) --「ＦＢ＿コード区分」
	,FB_SAKUSEI_YMD  DATE --「ＦＢ＿作成年月日」
	,FB_KANJO_KAISHI_YMD  DATE --「ＦＢ＿勘定開始年月日」
	,FB_KANJO_SHURYO_YMD  DATE --「ＦＢ＿勘定終了年月日」
	,FB_TORIHIKI_GINKO_CD  CHAR(4) --「ＦＢ＿取引銀行コード」
	,FB_TORIHIKI_GINKO_NM  VARCHAR2(30) --「ＦＢ＿取引銀行名称」
	,FB_TORIHIKI_SHITEN_CD  CHAR(3) --「ＦＢ＿取引支店コード」
	,FB_TORIHIKI_SHITEN_NM  VARCHAR2(30) --「ＦＢ＿取引支店名称」
	,FB_DUMMY_3  VARCHAR2(10) --「ＦＢ＿ダミー３」
	,FB_YOKIN_SHUMOKU_KBN  CHAR(1) --「ＦＢ＿預金種目区分」
	,FB_KOZA_NO  CHAR(7) --「ＦＢ＿口座番号」
	,FB_KOZAMEI  VARCHAR2(60) --「ＦＢ＿口座名」
	,FB_KASHIKOSHI_HEADER_KBN  CHAR(1) --「ＦＢ＿貸越ヘッダ区分」
	,FB_TSUCHO_SHOSHO_KBN  CHAR(1) --「ＦＢ＿通帳証書区分」
	,FB_TORIHIKIMAE_ZANDAKA  NUMBER(14,0) --「ＦＢ＿取引前残高」
	,FB_DUMMY_71  VARCHAR2(80) --「ＦＢ＿ダミー７１」
	,FB_DATA_KBN_MEISAI  CHAR(1) --「ＦＢ＿データ区分明細」
	,FB_SHOKAI_NO  VARCHAR2(10) --「ＦＢ＿照会番号」
	,FB_KANJO_D  DATE --「ＦＢ＿勘定日」
	,FB_AZUKEIRE_HARAIDASHI_YMD  DATE --「ＦＢ＿預入払出年月日」
	,FB_IRIBARAI_KBN  CHAR(1) --「ＦＢ＿入払区分」
	,FB_TORIHIKI_KBN  CHAR(2) --「ＦＢ＿取引区分」
	,FB_NYUKIN_AMT  NUMBER(13,0) --「ＦＢ＿入金金額」
	,FB_UCHI_TATENKEN_AMT  NUMBER(13,0) --「ＦＢ＿うち他店券金額」
	,FB_KOKAN_TEIJI_D  DATE --「ＦＢ＿交換提示日」
	,FB_FUWATARI_HENKAN_D  DATE --「ＦＢ＿不渡返還日」
	,FB_TEGATA_KOGITTE_KBN  CHAR(1) --「ＦＢ＿手形小切手区分」
	,FB_TEGATA_KOGITTE_NO  CHAR(10) --「ＦＢ＿手形小切手番号」
	,FB_RYOTEN_NO  VARCHAR2(10) --「ＦＢ＿僚店番号」
	,FB_FURIKOMI_IRAININ_CD  VARCHAR2(10) --「ＦＢ＿振込依頼人コード」
	,FB_FURIKOMI_IRAININ_NM  VARCHAR2(50) --「ＦＢ＿振込依頼人名称」
	,FB_SHIMUKE_GINKO_NM  VARCHAR2(20) --「ＦＢ＿仕向銀行名称」
	,FB_SHIMUKETEN_NM  VARCHAR2(20) --「ＦＢ＿仕向店名称」
	,FB_TEKIYO_NAIYO  VARCHAR2(20) --「ＦＢ＿摘要内容」
	,FB_EDI_JOHO_CMNT  VARCHAR2(20) --「ＦＢ＿ＥＤＩ情報コメント」
	,FB_DUMMY_1  VARCHAR2(10) --「ＦＢ＿ダミー１」
	,FB_DATA_TRAILER_KBN  CHAR(1) --「ＦＢ＿データトレーラ区分」
	,FB_NYUKIN_GOKEI_KENSU  NUMBER(9,0) --「ＦＢ＿入金合計件数」
	,FB_NYUKIN_GOKEI_AMT  NUMBER(13,0) --「ＦＢ＿入金合計金額」
	,FB_SHUKKIN_GOKEI_KENSU  NUMBER(9,0) --「ＦＢ＿出金合計件数」
	,FB_SHUKKIN_GOKEI_AMT  NUMBER(13,0) --「ＦＢ＿出金合計金額」
	,FB_KASHIKOSHI_TRAILER_KBN  CHAR(1) --「ＦＢ＿貸越トレーラ区分」
	,FB_TORIHIKIGO_ZANDAKA_AMT  NUMBER(14,0) --「ＦＢ＿取引後残高金額」
	,FB_DATA_KENSU  NUMBER(9,0) --「ＦＢ＿データ件数」
	,FB_DUMMY_139  VARCHAR2(150) --「ＦＢ＿ダミー１３９」
	,FB_DATA_END_KBN  CHAR(1) --「ＦＢ＿データエンド区分」
	,FB_RECORD_SOSU  NUMBER(9,0) --「ＦＢ＿レコード総数」
	,FB_KOZA_KENSU  NUMBER(9,0) --「ＦＢ＿口座件数」
	,FB_DUMMY_184  VARCHAR2(200) --「ＦＢ＿ダミー１８４」
	,FB_FILE_HASH_KEY  VARCHAR2(50) --「ＦＢ＿ファイルハッシュキー」
	,FB_SHORIZUMI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「ＦＢ＿処理済フラグ」
	,FB_NYSHKKN_MISI_SKSI_YMD  DATE --「ＦＢ＿入出金明細作成年月日」
	,FB_NYSHKKN_MISI_KSHN_YMD  DATE --「ＦＢ＿入出金明細更新年月日」
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
	,CONSTRAINT ED3623W_PK PRIMARY KEY(
	 FB_NYUSHUKKIN_MEISAI_SN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3623W_TBL IS 'ＦＢ入出金取引明細ワーク'
/

COMMENT ON COLUMN ED3623W_TBL.FB_NYUSHUKKIN_MEISAI_SN IS 'ＦＢ＿入出金明細連番'
/
COMMENT ON COLUMN ED3623W_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3623W_TBL.FB_DATA_HEADER_KBN IS 'ＦＢ＿データヘッダ区分'
/
COMMENT ON COLUMN ED3623W_TBL.FB_SHUBETSU_CD IS 'ＦＢ＿種別コード'
/
COMMENT ON COLUMN ED3623W_TBL.FB_CD_KBN IS 'ＦＢ＿コード区分'
/
COMMENT ON COLUMN ED3623W_TBL.FB_SAKUSEI_YMD IS 'ＦＢ＿作成年月日'
/
COMMENT ON COLUMN ED3623W_TBL.FB_KANJO_KAISHI_YMD IS 'ＦＢ＿勘定開始年月日'
/
COMMENT ON COLUMN ED3623W_TBL.FB_KANJO_SHURYO_YMD IS 'ＦＢ＿勘定終了年月日'
/
COMMENT ON COLUMN ED3623W_TBL.FB_TORIHIKI_GINKO_CD IS 'ＦＢ＿取引銀行コード'
/
COMMENT ON COLUMN ED3623W_TBL.FB_TORIHIKI_GINKO_NM IS 'ＦＢ＿取引銀行名称'
/
COMMENT ON COLUMN ED3623W_TBL.FB_TORIHIKI_SHITEN_CD IS 'ＦＢ＿取引支店コード'
/
COMMENT ON COLUMN ED3623W_TBL.FB_TORIHIKI_SHITEN_NM IS 'ＦＢ＿取引支店名称'
/
COMMENT ON COLUMN ED3623W_TBL.FB_DUMMY_3 IS 'ＦＢ＿ダミー３'
/
COMMENT ON COLUMN ED3623W_TBL.FB_YOKIN_SHUMOKU_KBN IS 'ＦＢ＿預金種目区分'
/
COMMENT ON COLUMN ED3623W_TBL.FB_KOZA_NO IS 'ＦＢ＿口座番号'
/
COMMENT ON COLUMN ED3623W_TBL.FB_KOZAMEI IS 'ＦＢ＿口座名'
/
COMMENT ON COLUMN ED3623W_TBL.FB_KASHIKOSHI_HEADER_KBN IS 'ＦＢ＿貸越ヘッダ区分'
/
COMMENT ON COLUMN ED3623W_TBL.FB_TSUCHO_SHOSHO_KBN IS 'ＦＢ＿通帳証書区分'
/
COMMENT ON COLUMN ED3623W_TBL.FB_TORIHIKIMAE_ZANDAKA IS 'ＦＢ＿取引前残高'
/
COMMENT ON COLUMN ED3623W_TBL.FB_DUMMY_71 IS 'ＦＢ＿ダミー７１'
/
COMMENT ON COLUMN ED3623W_TBL.FB_DATA_KBN_MEISAI IS 'ＦＢ＿データ区分明細'
/
COMMENT ON COLUMN ED3623W_TBL.FB_SHOKAI_NO IS 'ＦＢ＿照会番号'
/
COMMENT ON COLUMN ED3623W_TBL.FB_KANJO_D IS 'ＦＢ＿勘定日'
/
COMMENT ON COLUMN ED3623W_TBL.FB_AZUKEIRE_HARAIDASHI_YMD IS 'ＦＢ＿預入払出年月日'
/
COMMENT ON COLUMN ED3623W_TBL.FB_IRIBARAI_KBN IS 'ＦＢ＿入払区分'
/
COMMENT ON COLUMN ED3623W_TBL.FB_TORIHIKI_KBN IS 'ＦＢ＿取引区分'
/
COMMENT ON COLUMN ED3623W_TBL.FB_NYUKIN_AMT IS 'ＦＢ＿入金金額'
/
COMMENT ON COLUMN ED3623W_TBL.FB_UCHI_TATENKEN_AMT IS 'ＦＢ＿うち他店券金額'
/
COMMENT ON COLUMN ED3623W_TBL.FB_KOKAN_TEIJI_D IS 'ＦＢ＿交換提示日'
/
COMMENT ON COLUMN ED3623W_TBL.FB_FUWATARI_HENKAN_D IS 'ＦＢ＿不渡返還日'
/
COMMENT ON COLUMN ED3623W_TBL.FB_TEGATA_KOGITTE_KBN IS 'ＦＢ＿手形小切手区分'
/
COMMENT ON COLUMN ED3623W_TBL.FB_TEGATA_KOGITTE_NO IS 'ＦＢ＿手形小切手番号'
/
COMMENT ON COLUMN ED3623W_TBL.FB_RYOTEN_NO IS 'ＦＢ＿僚店番号'
/
COMMENT ON COLUMN ED3623W_TBL.FB_FURIKOMI_IRAININ_CD IS 'ＦＢ＿振込依頼人コード'
/
COMMENT ON COLUMN ED3623W_TBL.FB_FURIKOMI_IRAININ_NM IS 'ＦＢ＿振込依頼人名称'
/
COMMENT ON COLUMN ED3623W_TBL.FB_SHIMUKE_GINKO_NM IS 'ＦＢ＿仕向銀行名称'
/
COMMENT ON COLUMN ED3623W_TBL.FB_SHIMUKETEN_NM IS 'ＦＢ＿仕向店名称'
/
COMMENT ON COLUMN ED3623W_TBL.FB_TEKIYO_NAIYO IS 'ＦＢ＿摘要内容'
/
COMMENT ON COLUMN ED3623W_TBL.FB_EDI_JOHO_CMNT IS 'ＦＢ＿ＥＤＩ情報コメント'
/
COMMENT ON COLUMN ED3623W_TBL.FB_DUMMY_1 IS 'ＦＢ＿ダミー１'
/
COMMENT ON COLUMN ED3623W_TBL.FB_DATA_TRAILER_KBN IS 'ＦＢ＿データトレーラ区分'
/
COMMENT ON COLUMN ED3623W_TBL.FB_NYUKIN_GOKEI_KENSU IS 'ＦＢ＿入金合計件数'
/
COMMENT ON COLUMN ED3623W_TBL.FB_NYUKIN_GOKEI_AMT IS 'ＦＢ＿入金合計金額'
/
COMMENT ON COLUMN ED3623W_TBL.FB_SHUKKIN_GOKEI_KENSU IS 'ＦＢ＿出金合計件数'
/
COMMENT ON COLUMN ED3623W_TBL.FB_SHUKKIN_GOKEI_AMT IS 'ＦＢ＿出金合計金額'
/
COMMENT ON COLUMN ED3623W_TBL.FB_KASHIKOSHI_TRAILER_KBN IS 'ＦＢ＿貸越トレーラ区分'
/
COMMENT ON COLUMN ED3623W_TBL.FB_TORIHIKIGO_ZANDAKA_AMT IS 'ＦＢ＿取引後残高金額'
/
COMMENT ON COLUMN ED3623W_TBL.FB_DATA_KENSU IS 'ＦＢ＿データ件数'
/
COMMENT ON COLUMN ED3623W_TBL.FB_DUMMY_139 IS 'ＦＢ＿ダミー１３９'
/
COMMENT ON COLUMN ED3623W_TBL.FB_DATA_END_KBN IS 'ＦＢ＿データエンド区分'
/
COMMENT ON COLUMN ED3623W_TBL.FB_RECORD_SOSU IS 'ＦＢ＿レコード総数'
/
COMMENT ON COLUMN ED3623W_TBL.FB_KOZA_KENSU IS 'ＦＢ＿口座件数'
/
COMMENT ON COLUMN ED3623W_TBL.FB_DUMMY_184 IS 'ＦＢ＿ダミー１８４'
/
COMMENT ON COLUMN ED3623W_TBL.FB_FILE_HASH_KEY IS 'ＦＢ＿ファイルハッシュキー'
/
COMMENT ON COLUMN ED3623W_TBL.FB_SHORIZUMI_FLG IS 'ＦＢ＿処理済フラグ'
/
COMMENT ON COLUMN ED3623W_TBL.FB_NYSHKKN_MISI_SKSI_YMD IS 'ＦＢ＿入出金明細作成年月日'
/
COMMENT ON COLUMN ED3623W_TBL.FB_NYSHKKN_MISI_KSHN_YMD IS 'ＦＢ＿入出金明細更新年月日'
/
COMMENT ON COLUMN ED3623W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3623W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3623W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3623W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3623W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3623W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3623W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3623W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3623W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3623W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3623W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3623W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/