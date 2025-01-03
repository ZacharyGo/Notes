﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0618T_TBL.sql
-- 物理名：ED0618T_TBL
-- 論理名：受注運行情報テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0618T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0618T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) NOT NULL --「受注契約変更番号」
	,UNYO_SHUBETSU_KBN  CHAR(2) NOT NULL --「運用種別区分」
	,UNYO_COURSE_NM  VARCHAR2(40) --「運用コース名称」
	,UNKO_NISSU_KBN  CHAR(1) NOT NULL --「運行日数区分」
	,UNKO_NINZU  NUMBER(9,0) DEFAULT '0' NOT NULL --「運行人数」
	,IDO_JIKAN  NUMBER(12,3) DEFAULT '0' NOT NULL --「移動時間」
	,SAGYO_JIKAN  NUMBER(12,3) DEFAULT '0' NOT NULL --「作業時間」
	,JITSUDO_JIKAN  NUMBER(12,3) DEFAULT '0' NOT NULL --「実働時間」
	,UNK_JH_JISSHI_JIKANTAI_KBN  CHAR(1) NOT NULL --「運行情報実施時間帯区分」
	,TACHIYORI_TEMPOSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「立寄り店舗数」
	,SOKO_KYORI_KM  NUMBER(12,3) DEFAULT '0' NOT NULL --「走行距離キロメートル」
	,SHARYO_MAINTENANCE_KBN  CHAR(1) NOT NULL --「車両メンテナンス区分」
	,CHUSHAJO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「駐車場金額」
	,KOSOKU_RYOKIN_TSUSHINHI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「高速料金通信費金額」
	,KOTSUHI_SHUKUHAKUHI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「交通費宿泊費金額」
	,SONOTA_SHOKI_HIYO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「その他初期費用金額」
	,GNS_KIS_YSHN_GNKNAR_FLG  CHAR(1) DEFAULT '0' NOT NULL --「現送警送輸送品現金有フラグ」
	,GNS_KIS_YSHN_YK_SHKNAR_FLG  CHAR(1) DEFAULT '0' NOT NULL --「現送警送輸送品有価証券有フラグ」
	,GNS_KIS_YSHN_DNSN_SHRYAR_FLG  CHAR(1) DEFAULT '0' NOT NULL --「現送警送輸送品電算資料有フラグ」
	,GNS_KIS_YSHN_KNKNAR_FLG  CHAR(1) DEFAULT '0' NOT NULL --「現送警送輸送品金券有フラグ」
	,GNS_KIS_YSHN_KKNZKAR_FLG  CHAR(1) DEFAULT '0' NOT NULL --「現送警送輸送品貴金属有フラグ」
	,SNT_GNS_KIS_YSHNAR_FLG  CHAR(1) DEFAULT '0' NOT NULL --「その他現送警送輸送品有フラグ」
	,SONOTA_GENSO_KEISO_YUSOHIN_NM  VARCHAR2(10) --「その他現送警送輸送品名称」
	,RYOGAEKI_DAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「両替機台数」
	,SOSHORI_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「総処理数量」
	,SHIYO_SHARYO_KBN  CHAR(1) NOT NULL --「使用車両区分」
	,SHIYO_SHARYO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「使用車両金額」
	,TSUIKA_KEISO_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「追加警送料金金額」
	,SONOTA_HIYO_UNKO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「その他費用運行金額」
	,SONOTA_UNKO_KAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「その他運行回数」
	,TSIK_KIS_RYO_TMP_KAN_IDO_JIKAN  NUMBER(12,3) DEFAULT '0' NOT NULL --「追加警送料店舗間移動時間」
	,TSIK_KIS_RYO_UNKO_NISSU_KBN  CHAR(1) NOT NULL --「追加警送料運行日数区分」
	,SNT_GNSKISYSHN_SHKNYSH_ARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「現送警送輸送品試験用紙有フラグ」
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
	,CONSTRAINT ED0618T_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  JUCHU_KEIYAKU_HENKO_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0618T_TBL IS '受注運行情報テーブル'
/

COMMENT ON COLUMN ED0618T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0618T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED0618T_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED0618T_TBL.UNYO_SHUBETSU_KBN IS '運用種別区分'
/
COMMENT ON COLUMN ED0618T_TBL.UNYO_COURSE_NM IS '運用コース名称'
/
COMMENT ON COLUMN ED0618T_TBL.UNKO_NISSU_KBN IS '運行日数区分'
/
COMMENT ON COLUMN ED0618T_TBL.UNKO_NINZU IS '運行人数'
/
COMMENT ON COLUMN ED0618T_TBL.IDO_JIKAN IS '移動時間'
/
COMMENT ON COLUMN ED0618T_TBL.SAGYO_JIKAN IS '作業時間'
/
COMMENT ON COLUMN ED0618T_TBL.JITSUDO_JIKAN IS '実働時間'
/
COMMENT ON COLUMN ED0618T_TBL.UNK_JH_JISSHI_JIKANTAI_KBN IS '運行情報実施時間帯区分'
/
COMMENT ON COLUMN ED0618T_TBL.TACHIYORI_TEMPOSU IS '立寄り店舗数'
/
COMMENT ON COLUMN ED0618T_TBL.SOKO_KYORI_KM IS '走行距離キロメートル'
/
COMMENT ON COLUMN ED0618T_TBL.SHARYO_MAINTENANCE_KBN IS '車両メンテナンス区分'
/
COMMENT ON COLUMN ED0618T_TBL.CHUSHAJO_AMT IS '駐車場金額'
/
COMMENT ON COLUMN ED0618T_TBL.KOSOKU_RYOKIN_TSUSHINHI_AMT IS '高速料金通信費金額'
/
COMMENT ON COLUMN ED0618T_TBL.KOTSUHI_SHUKUHAKUHI_AMT IS '交通費宿泊費金額'
/
COMMENT ON COLUMN ED0618T_TBL.SONOTA_SHOKI_HIYO_AMT IS 'その他初期費用金額'
/
COMMENT ON COLUMN ED0618T_TBL.GNS_KIS_YSHN_GNKNAR_FLG IS '現送警送輸送品現金有フラグ'
/
COMMENT ON COLUMN ED0618T_TBL.GNS_KIS_YSHN_YK_SHKNAR_FLG IS '現送警送輸送品有価証券有フラグ'
/
COMMENT ON COLUMN ED0618T_TBL.GNS_KIS_YSHN_DNSN_SHRYAR_FLG IS '現送警送輸送品電算資料有フラグ'
/
COMMENT ON COLUMN ED0618T_TBL.GNS_KIS_YSHN_KNKNAR_FLG IS '現送警送輸送品金券有フラグ'
/
COMMENT ON COLUMN ED0618T_TBL.GNS_KIS_YSHN_KKNZKAR_FLG IS '現送警送輸送品貴金属有フラグ'
/
COMMENT ON COLUMN ED0618T_TBL.SNT_GNS_KIS_YSHNAR_FLG IS 'その他現送警送輸送品有フラグ'
/
COMMENT ON COLUMN ED0618T_TBL.SONOTA_GENSO_KEISO_YUSOHIN_NM IS 'その他現送警送輸送品名称'
/
COMMENT ON COLUMN ED0618T_TBL.RYOGAEKI_DAISU IS '両替機台数'
/
COMMENT ON COLUMN ED0618T_TBL.SOSHORI_SURYO IS '総処理数量'
/
COMMENT ON COLUMN ED0618T_TBL.SHIYO_SHARYO_KBN IS '使用車両区分'
/
COMMENT ON COLUMN ED0618T_TBL.SHIYO_SHARYO_AMT IS '使用車両金額'
/
COMMENT ON COLUMN ED0618T_TBL.TSUIKA_KEISO_RYOKIN_AMT IS '追加警送料金金額'
/
COMMENT ON COLUMN ED0618T_TBL.SONOTA_HIYO_UNKO_AMT IS 'その他費用運行金額'
/
COMMENT ON COLUMN ED0618T_TBL.SONOTA_UNKO_KAISU IS 'その他運行回数'
/
COMMENT ON COLUMN ED0618T_TBL.TSIK_KIS_RYO_TMP_KAN_IDO_JIKAN IS '追加警送料店舗間移動時間'
/
COMMENT ON COLUMN ED0618T_TBL.TSIK_KIS_RYO_UNKO_NISSU_KBN IS '追加警送料運行日数区分'
/
COMMENT ON COLUMN ED0618T_TBL.SNT_GNSKISYSHN_SHKNYSH_ARI_FLG IS '現送警送輸送品試験用紙有フラグ'
/
COMMENT ON COLUMN ED0618T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0618T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0618T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0618T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0618T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0618T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0618T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0618T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0618T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0618T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0618T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0618T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
