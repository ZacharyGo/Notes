﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9037M_TBL.sql
-- 物理名：ED9037M_TBL
-- 論理名：企業マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9037M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9037M_TBL (
	 TDB_KIGYO_CD  CHAR(9) NOT NULL --「ＴＤＢ企業コード」
	,HOJIN_NO  CHAR(13) --「法人番号」
	,HOJINKAKU_KBN  CHAR(2) NOT NULL --「法人格区分」
	,KENSAKUYO_HKN_TN  VARCHAR2(20) --「検索用半角カナ商号」
	,KENSAKUYO_KN_TN  VARCHAR2(20) --「検索用カナ商号」
	,KENSAKUYO_KANJI_TN  VARCHAR2(10) --「検索用漢字商号」
	,KANJI_TN  VARCHAR2(30) --「漢字商号」
	,YUBIN_NO  CHAR(7) --「郵便番号」
	,BARCODE_NO  VARCHAR2(23) --「バーコード番号」
	,TDB_JUSHO_CD  CHAR(10) --「ＴＤＢ住所コード」
	,JUSHO_CD  CHAR(11) --「住所コード」
	,TDB_KANJI_SHOZAICHI_JUSHO  VARCHAR2(50) --「ＴＤＢ漢字所在地住所」
	,DENWA_NO  VARCHAR2(20) --「電話番号」
	,TDB_SANGYO_BUNRUI_CD_1  CHAR(5) --「ＴＤＢ産業分類コード１」
	,GYOSHU_CD  CHAR(4) --「業種コード」
	,TDB_SANGYO_BUNRUI_NM_1  VARCHAR2(9) --「ＴＤＢ産業分類名称１」
	,TDB_SANGYO_BUNRUI_CD_2  CHAR(5) --「ＴＤＢ産業分類コード２」
	,TDB_SANGYO_BUNRUI_NM_2  VARCHAR2(9) --「ＴＤＢ産業分類名称２」
	,SHIHON_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「資本金額」
	,JUGYOIN_NINZU  NUMBER(9,0) DEFAULT '0' NOT NULL --「従業員人数」
	,SOGYO_YM  CHAR(6) --「創業年月」
	,SETSURITSU_YM  CHAR(6) --「設立年月」
	,JIGYOSHO_DATA_ARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「事業所データ有フラグ」
	,JIGYOSHO_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「事業所件数」
	,KESSAN_M  CHAR(2) --「決算月」
	,ZENKOKU_KAISHA_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「全国会社件数」
	,ZENKOKU_URIAGE_RANKING_JUN  NUMBER(9,0) DEFAULT '0' NOT NULL --「全国売上ランキング順」
	,TODOFUKEMBETSU_KAISHA_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「都道府県別会社件数」
	,TDFKMBTS_URAG_RANKING_JUN  NUMBER(9,0) DEFAULT '0' NOT NULL --「都道府県別売上ランキング順」
	,DAIHYOSHA_YAKUSHOKU_NM  VARCHAR2(200) --「代表者役職名称」
	,DAIHYOSHA_HKN_NM  VARCHAR2(90) --「代表者半角カナ氏名」
	,DAIHYOSHA_KN_NM  VARCHAR2(90) --「代表者カナ氏名」
	,DAIHYOSHA_NM  VARCHAR2(60) --「代表者氏名」
	,TDB_TORIHIKI_GINKO_CD_1  CHAR(7) --「ＴＤＢ取引銀行コード１」
	,TDB_TORIHIKI_GINKO_NM_1  VARCHAR2(15) --「ＴＤＢ取引銀行名称１」
	,TDB_TORIHIKI_GINKO_CD_2  CHAR(7) --「ＴＤＢ取引銀行コード２」
	,TDB_TORIHIKI_GINKO_NM_2  VARCHAR2(15) --「ＴＤＢ取引銀行名称２」
	,TDB_TORIHIKI_GINKO_CD_3  CHAR(7) --「ＴＤＢ取引銀行コード３」
	,TDB_TORIHIKI_GINKO_NM_3  VARCHAR2(15) --「ＴＤＢ取引銀行名称３」
	,TDB_TORIHIKI_GINKO_CD_4  CHAR(7) --「ＴＤＢ取引銀行コード４」
	,TDB_TORIHIKI_GINKO_NM_4  VARCHAR2(15) --「ＴＤＢ取引銀行名称４」
	,TDB_TORIHIKI_GINKO_CD_5  CHAR(7) --「ＴＤＢ取引銀行コード５」
	,TDB_TORIHIKI_GINKO_NM_5  VARCHAR2(15) --「ＴＤＢ取引銀行名称５」
	,TDB_TORIHIKI_GINKO_CD_6  CHAR(7) --「ＴＤＢ取引銀行コード６」
	,TDB_TORIHIKI_GINKO_NM_6  VARCHAR2(15) --「ＴＤＢ取引銀行名称６」
	,TDB_TORIHIKI_GINKO_CD_7  CHAR(7) --「ＴＤＢ取引銀行コード７」
	,TDB_TORIHIKI_GINKO_NM_7  VARCHAR2(15) --「ＴＤＢ取引銀行名称７」
	,TDB_TORIHIKI_GINKO_CD_8  CHAR(7) --「ＴＤＢ取引銀行コード８」
	,TDB_TORIHIKI_GINKO_NM_8  VARCHAR2(15) --「ＴＤＢ取引銀行名称８」
	,TDB_TORIHIKI_GINKO_CD_9  CHAR(7) --「ＴＤＢ取引銀行コード９」
	,TDB_TORIHIKI_GINKO_NM_9  VARCHAR2(15) --「ＴＤＢ取引銀行名称９」
	,TDB_TORIHIKI_GINKO_CD_10  CHAR(7) --「ＴＤＢ取引銀行コード１０」
	,TDB_TORIHIKI_GINKO_NM_10  VARCHAR2(15) --「ＴＤＢ取引銀行名称１０」
	,TDB_SHY_SHIRSK_KISH_NM_1  VARCHAR2(15) --「ＴＤＢ主要仕入先会社名称１」
	,TDB_SHY_SHIRSK_KISH_NM_2  VARCHAR2(15) --「ＴＤＢ主要仕入先会社名称２」
	,TDB_SHY_SHIRSK_KISH_NM_3  VARCHAR2(15) --「ＴＤＢ主要仕入先会社名称３」
	,TDB_SHY_SHIRSK_KISH_NM_4  VARCHAR2(15) --「ＴＤＢ主要仕入先会社名称４」
	,TDB_SHY_SHIRSK_KISH_NM_5  VARCHAR2(15) --「ＴＤＢ主要仕入先会社名称５」
	,TDB_SHY_HMBISK_KISH_NM_1  VARCHAR2(15) --「ＴＤＢ主要販売先会社名称１」
	,TDB_SHY_HMBISK_KISH_NM_2  VARCHAR2(15) --「ＴＤＢ主要販売先会社名称２」
	,TDB_SHY_HMBISK_KISH_NM_3  VARCHAR2(15) --「ＴＤＢ主要販売先会社名称３」
	,TDB_SHY_HMBISK_KISH_NM_4  VARCHAR2(15) --「ＴＤＢ主要販売先会社名称４」
	,TDB_SHY_HMBISK_KISH_NM_5  VARCHAR2(15) --「ＴＤＢ主要販売先会社名称５」
	,TDB_OYAGAISHA_NM  VARCHAR2(15) --「ＴＤＢ親会社名称」
	,TDB_SHUPPAMBUTSU_KEISAIARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「ＴＤＢ出版物掲載有フラグ」
	,KABUSHIKI_JOJO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「株式上場フラグ」
	,SHOKEN_CD  CHAR(4) --「証券コード」
	,EDINET_JIGYO_NAIYO  VARCHAR2(300) --「ＥＤＩＮＥＴ事業内容」
	,ZENSHA_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「全社件数」
	,KOGAISHA_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「子会社件数」
	,KANREN_KAISHA_KENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「関連会社件数」
	,TDB_SAKUJO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「ＴＤＢ削除フラグ」
	,SAISHINKI_URIAGEDAKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「最新期売上高金額」
	,SAISHINKI_ZEIBIKIGO_RIEKI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「最新期税引後利益金額」
	,ZENKI_URIAGEDAKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「前期売上高金額」
	,ZENKI_ZEIBIKIGO_RIEKI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「前期税引後利益金額」
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
	,CONSTRAINT ED9037M_PK PRIMARY KEY(
	 TDB_KIGYO_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9037M_TBL IS '企業マスタ'
/

COMMENT ON COLUMN ED9037M_TBL.TDB_KIGYO_CD IS 'ＴＤＢ企業コード'
/
COMMENT ON COLUMN ED9037M_TBL.HOJIN_NO IS '法人番号'
/
COMMENT ON COLUMN ED9037M_TBL.HOJINKAKU_KBN IS '法人格区分'
/
COMMENT ON COLUMN ED9037M_TBL.KENSAKUYO_HKN_TN IS '検索用半角カナ商号'
/
COMMENT ON COLUMN ED9037M_TBL.KENSAKUYO_KN_TN IS '検索用カナ商号'
/
COMMENT ON COLUMN ED9037M_TBL.KENSAKUYO_KANJI_TN IS '検索用漢字商号'
/
COMMENT ON COLUMN ED9037M_TBL.KANJI_TN IS '漢字商号'
/
COMMENT ON COLUMN ED9037M_TBL.YUBIN_NO IS '郵便番号'
/
COMMENT ON COLUMN ED9037M_TBL.BARCODE_NO IS 'バーコード番号'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_JUSHO_CD IS 'ＴＤＢ住所コード'
/
COMMENT ON COLUMN ED9037M_TBL.JUSHO_CD IS '住所コード'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_KANJI_SHOZAICHI_JUSHO IS 'ＴＤＢ漢字所在地住所'
/
COMMENT ON COLUMN ED9037M_TBL.DENWA_NO IS '電話番号'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_SANGYO_BUNRUI_CD_1 IS 'ＴＤＢ産業分類コード１'
/
COMMENT ON COLUMN ED9037M_TBL.GYOSHU_CD IS '業種コード'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_SANGYO_BUNRUI_NM_1 IS 'ＴＤＢ産業分類名称１'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_SANGYO_BUNRUI_CD_2 IS 'ＴＤＢ産業分類コード２'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_SANGYO_BUNRUI_NM_2 IS 'ＴＤＢ産業分類名称２'
/
COMMENT ON COLUMN ED9037M_TBL.SHIHON_AMT IS '資本金額'
/
COMMENT ON COLUMN ED9037M_TBL.JUGYOIN_NINZU IS '従業員人数'
/
COMMENT ON COLUMN ED9037M_TBL.SOGYO_YM IS '創業年月'
/
COMMENT ON COLUMN ED9037M_TBL.SETSURITSU_YM IS '設立年月'
/
COMMENT ON COLUMN ED9037M_TBL.JIGYOSHO_DATA_ARI_FLG IS '事業所データ有フラグ'
/
COMMENT ON COLUMN ED9037M_TBL.JIGYOSHO_KENSU IS '事業所件数'
/
COMMENT ON COLUMN ED9037M_TBL.KESSAN_M IS '決算月'
/
COMMENT ON COLUMN ED9037M_TBL.ZENKOKU_KAISHA_KENSU IS '全国会社件数'
/
COMMENT ON COLUMN ED9037M_TBL.ZENKOKU_URIAGE_RANKING_JUN IS '全国売上ランキング順'
/
COMMENT ON COLUMN ED9037M_TBL.TODOFUKEMBETSU_KAISHA_KENSU IS '都道府県別会社件数'
/
COMMENT ON COLUMN ED9037M_TBL.TDFKMBTS_URAG_RANKING_JUN IS '都道府県別売上ランキング順'
/
COMMENT ON COLUMN ED9037M_TBL.DAIHYOSHA_YAKUSHOKU_NM IS '代表者役職名称'
/
COMMENT ON COLUMN ED9037M_TBL.DAIHYOSHA_HKN_NM IS '代表者半角カナ氏名'
/
COMMENT ON COLUMN ED9037M_TBL.DAIHYOSHA_KN_NM IS '代表者カナ氏名'
/
COMMENT ON COLUMN ED9037M_TBL.DAIHYOSHA_NM IS '代表者氏名'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_TORIHIKI_GINKO_CD_1 IS 'ＴＤＢ取引銀行コード１'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_TORIHIKI_GINKO_NM_1 IS 'ＴＤＢ取引銀行名称１'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_TORIHIKI_GINKO_CD_2 IS 'ＴＤＢ取引銀行コード２'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_TORIHIKI_GINKO_NM_2 IS 'ＴＤＢ取引銀行名称２'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_TORIHIKI_GINKO_CD_3 IS 'ＴＤＢ取引銀行コード３'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_TORIHIKI_GINKO_NM_3 IS 'ＴＤＢ取引銀行名称３'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_TORIHIKI_GINKO_CD_4 IS 'ＴＤＢ取引銀行コード４'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_TORIHIKI_GINKO_NM_4 IS 'ＴＤＢ取引銀行名称４'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_TORIHIKI_GINKO_CD_5 IS 'ＴＤＢ取引銀行コード５'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_TORIHIKI_GINKO_NM_5 IS 'ＴＤＢ取引銀行名称５'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_TORIHIKI_GINKO_CD_6 IS 'ＴＤＢ取引銀行コード６'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_TORIHIKI_GINKO_NM_6 IS 'ＴＤＢ取引銀行名称６'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_TORIHIKI_GINKO_CD_7 IS 'ＴＤＢ取引銀行コード７'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_TORIHIKI_GINKO_NM_7 IS 'ＴＤＢ取引銀行名称７'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_TORIHIKI_GINKO_CD_8 IS 'ＴＤＢ取引銀行コード８'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_TORIHIKI_GINKO_NM_8 IS 'ＴＤＢ取引銀行名称８'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_TORIHIKI_GINKO_CD_9 IS 'ＴＤＢ取引銀行コード９'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_TORIHIKI_GINKO_NM_9 IS 'ＴＤＢ取引銀行名称９'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_TORIHIKI_GINKO_CD_10 IS 'ＴＤＢ取引銀行コード１０'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_TORIHIKI_GINKO_NM_10 IS 'ＴＤＢ取引銀行名称１０'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_SHY_SHIRSK_KISH_NM_1 IS 'ＴＤＢ主要仕入先会社名称１'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_SHY_SHIRSK_KISH_NM_2 IS 'ＴＤＢ主要仕入先会社名称２'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_SHY_SHIRSK_KISH_NM_3 IS 'ＴＤＢ主要仕入先会社名称３'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_SHY_SHIRSK_KISH_NM_4 IS 'ＴＤＢ主要仕入先会社名称４'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_SHY_SHIRSK_KISH_NM_5 IS 'ＴＤＢ主要仕入先会社名称５'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_SHY_HMBISK_KISH_NM_1 IS 'ＴＤＢ主要販売先会社名称１'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_SHY_HMBISK_KISH_NM_2 IS 'ＴＤＢ主要販売先会社名称２'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_SHY_HMBISK_KISH_NM_3 IS 'ＴＤＢ主要販売先会社名称３'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_SHY_HMBISK_KISH_NM_4 IS 'ＴＤＢ主要販売先会社名称４'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_SHY_HMBISK_KISH_NM_5 IS 'ＴＤＢ主要販売先会社名称５'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_OYAGAISHA_NM IS 'ＴＤＢ親会社名称'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_SHUPPAMBUTSU_KEISAIARI_FLG IS 'ＴＤＢ出版物掲載有フラグ'
/
COMMENT ON COLUMN ED9037M_TBL.KABUSHIKI_JOJO_FLG IS '株式上場フラグ'
/
COMMENT ON COLUMN ED9037M_TBL.SHOKEN_CD IS '証券コード'
/
COMMENT ON COLUMN ED9037M_TBL.EDINET_JIGYO_NAIYO IS 'ＥＤＩＮＥＴ事業内容'
/
COMMENT ON COLUMN ED9037M_TBL.ZENSHA_KENSU IS '全社件数'
/
COMMENT ON COLUMN ED9037M_TBL.KOGAISHA_KENSU IS '子会社件数'
/
COMMENT ON COLUMN ED9037M_TBL.KANREN_KAISHA_KENSU IS '関連会社件数'
/
COMMENT ON COLUMN ED9037M_TBL.TDB_SAKUJO_FLG IS 'ＴＤＢ削除フラグ'
/
COMMENT ON COLUMN ED9037M_TBL.SAISHINKI_URIAGEDAKA_AMT IS '最新期売上高金額'
/
COMMENT ON COLUMN ED9037M_TBL.SAISHINKI_ZEIBIKIGO_RIEKI_AMT IS '最新期税引後利益金額'
/
COMMENT ON COLUMN ED9037M_TBL.ZENKI_URIAGEDAKA_AMT IS '前期売上高金額'
/
COMMENT ON COLUMN ED9037M_TBL.ZENKI_ZEIBIKIGO_RIEKI_AMT IS '前期税引後利益金額'
/
COMMENT ON COLUMN ED9037M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9037M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9037M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9037M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9037M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9037M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9037M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9037M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9037M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9037M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9037M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9037M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
