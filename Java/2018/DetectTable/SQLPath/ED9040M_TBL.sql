﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9040M_TBL.sql
-- 物理名：ED9040M_TBL
-- 論理名：企業事業所マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9040M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9040M_TBL (
	 TDB_KIGYO_CD  CHAR(9) NOT NULL --「ＴＤＢ企業コード」
	,TDB_JIGYOSHO_NO  CHAR(5) NOT NULL --「ＴＤＢ事業所番号」
	,JIGYOSHO_NM  VARCHAR2(200) --「事業所名称」
	,JIGYOSHO_HKN_NM  VARCHAR2(200) --「事業所半角カナ名称」
	,JIGYOSHO_KN_NM  VARCHAR2(200) --「事業所カナ名称」
	,YUBIN_NO  CHAR(7) --「郵便番号」
	,BARCODE_NO  VARCHAR2(23) --「バーコード番号」
	,TDB_JUSHO_CD  CHAR(10) --「ＴＤＢ住所コード」
	,JUSHO_CD  CHAR(11) --「住所コード」
	,TDB_KANJI_SHOZAICHI_JUSHO  VARCHAR2(50) --「ＴＤＢ漢字所在地住所」
	,DENWA_NO  VARCHAR2(20) --「電話番号」
	,TDB_SANGYO_BUNRUI_CD_1  CHAR(5) --「ＴＤＢ産業分類コード１」
	,GYOSHU_CD  CHAR(4) --「業種コード」
	,TDB_SANGYO_BUNRUI_NM_1  VARCHAR2(9) --「ＴＤＢ産業分類名称１」
	,JIGYOSHO_SOJUGYOIN_NINZU  NUMBER(9,0) DEFAULT '0' NOT NULL --「事業所総従業員人数」
	,JIGYOSHO_DANSEI_SHAIN_NINZU  NUMBER(9,0) DEFAULT '0' NOT NULL --「事業所男性社員人数」
	,JIGYOSHO_JOSEI_SHAIN_NINZU  NUMBER(9,0) DEFAULT '0' NOT NULL --「事業所女性社員人数」
	,TDB_JIGYOSHO_BUNRUI_KBN  CHAR(1) NOT NULL --「ＴＤＢ事業所分類区分」
	,SHOKEN_KOYUMEI_CD  CHAR(5) --「証券固有名コード」
	,TDB_JGYSH_SHRYK_SHHN_NM_1  VARCHAR2(15) --「ＴＤＢ事業所主力商品名称１」
	,TDB_JGYSH_SHRYK_SHHN_NM_2  VARCHAR2(15) --「ＴＤＢ事業所主力商品名称２」
	,TDB_JGYSH_SHRYK_SHHN_NM_3  VARCHAR2(15) --「ＴＤＢ事業所主力商品名称３」
	,JIGYOSHO_SEISHAIN_NINZU  NUMBER(9,0) DEFAULT '0' NOT NULL --「事業所正社員人数」
	,JIGYOSHO_PART_JUGYOIN_NINZU  NUMBER(9,0) DEFAULT '0' NOT NULL --「事業所パート従業員人数」
	,TDB_JIGYOSHO_SHOYU_KBN  CHAR(1) --「ＴＤＢ事業所所有区分」
	,YUKA_MENSEKI  NUMBER(12,3) DEFAULT '0' NOT NULL --「床面積」
	,TDB_JIGYOSHO_MOKUTEKI_KBN_1  CHAR(2) NOT NULL --「ＴＤＢ事業所目的区分１」
	,TDB_JIGYOSHO_MOKUTEKI_KBN_2  CHAR(2) --「ＴＤＢ事業所目的区分２」
	,JIGYOSHOCHO_KATAGAKI_NM  VARCHAR2(200) --「事業所長肩書名称」
	,JIGYOSHOCHO_NM  VARCHAR2(60) --「事業所長氏名」
	,JIGYOSHOCHO_HKN_NM  VARCHAR2(90) --「事業所長半角カナ氏名」
	,JIGYOSHOCHO_KN_NM  VARCHAR2(90) --「事業所長カナ氏名」
	,TDB_JGYSH_SHY_SHIRSK_NM  VARCHAR2(30) --「ＴＤＢ事業所主要仕入先名称」
	,TDB_JGYSH_SHY_HMBISK_NM  VARCHAR2(30) --「ＴＤＢ事業所主要販売先名称」
	,KAISETSU_YM  CHAR(6) --「開設年月」
	,ITEN_YM  CHAR(6) --「移転年月」
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
	,CONSTRAINT ED9040M_PK PRIMARY KEY(
	 TDB_KIGYO_CD
	,  TDB_JIGYOSHO_NO
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9040M_TBL IS '企業事業所マスタ'
/

COMMENT ON COLUMN ED9040M_TBL.TDB_KIGYO_CD IS 'ＴＤＢ企業コード'
/
COMMENT ON COLUMN ED9040M_TBL.TDB_JIGYOSHO_NO IS 'ＴＤＢ事業所番号'
/
COMMENT ON COLUMN ED9040M_TBL.JIGYOSHO_NM IS '事業所名称'
/
COMMENT ON COLUMN ED9040M_TBL.JIGYOSHO_HKN_NM IS '事業所半角カナ名称'
/
COMMENT ON COLUMN ED9040M_TBL.JIGYOSHO_KN_NM IS '事業所カナ名称'
/
COMMENT ON COLUMN ED9040M_TBL.YUBIN_NO IS '郵便番号'
/
COMMENT ON COLUMN ED9040M_TBL.BARCODE_NO IS 'バーコード番号'
/
COMMENT ON COLUMN ED9040M_TBL.TDB_JUSHO_CD IS 'ＴＤＢ住所コード'
/
COMMENT ON COLUMN ED9040M_TBL.JUSHO_CD IS '住所コード'
/
COMMENT ON COLUMN ED9040M_TBL.TDB_KANJI_SHOZAICHI_JUSHO IS 'ＴＤＢ漢字所在地住所'
/
COMMENT ON COLUMN ED9040M_TBL.DENWA_NO IS '電話番号'
/
COMMENT ON COLUMN ED9040M_TBL.TDB_SANGYO_BUNRUI_CD_1 IS 'ＴＤＢ産業分類コード１'
/
COMMENT ON COLUMN ED9040M_TBL.GYOSHU_CD IS '業種コード'
/
COMMENT ON COLUMN ED9040M_TBL.TDB_SANGYO_BUNRUI_NM_1 IS 'ＴＤＢ産業分類名称１'
/
COMMENT ON COLUMN ED9040M_TBL.JIGYOSHO_SOJUGYOIN_NINZU IS '事業所総従業員人数'
/
COMMENT ON COLUMN ED9040M_TBL.JIGYOSHO_DANSEI_SHAIN_NINZU IS '事業所男性社員人数'
/
COMMENT ON COLUMN ED9040M_TBL.JIGYOSHO_JOSEI_SHAIN_NINZU IS '事業所女性社員人数'
/
COMMENT ON COLUMN ED9040M_TBL.TDB_JIGYOSHO_BUNRUI_KBN IS 'ＴＤＢ事業所分類区分'
/
COMMENT ON COLUMN ED9040M_TBL.SHOKEN_KOYUMEI_CD IS '証券固有名コード'
/
COMMENT ON COLUMN ED9040M_TBL.TDB_JGYSH_SHRYK_SHHN_NM_1 IS 'ＴＤＢ事業所主力商品名称１'
/
COMMENT ON COLUMN ED9040M_TBL.TDB_JGYSH_SHRYK_SHHN_NM_2 IS 'ＴＤＢ事業所主力商品名称２'
/
COMMENT ON COLUMN ED9040M_TBL.TDB_JGYSH_SHRYK_SHHN_NM_3 IS 'ＴＤＢ事業所主力商品名称３'
/
COMMENT ON COLUMN ED9040M_TBL.JIGYOSHO_SEISHAIN_NINZU IS '事業所正社員人数'
/
COMMENT ON COLUMN ED9040M_TBL.JIGYOSHO_PART_JUGYOIN_NINZU IS '事業所パート従業員人数'
/
COMMENT ON COLUMN ED9040M_TBL.TDB_JIGYOSHO_SHOYU_KBN IS 'ＴＤＢ事業所所有区分'
/
COMMENT ON COLUMN ED9040M_TBL.YUKA_MENSEKI IS '床面積'
/
COMMENT ON COLUMN ED9040M_TBL.TDB_JIGYOSHO_MOKUTEKI_KBN_1 IS 'ＴＤＢ事業所目的区分１'
/
COMMENT ON COLUMN ED9040M_TBL.TDB_JIGYOSHO_MOKUTEKI_KBN_2 IS 'ＴＤＢ事業所目的区分２'
/
COMMENT ON COLUMN ED9040M_TBL.JIGYOSHOCHO_KATAGAKI_NM IS '事業所長肩書名称'
/
COMMENT ON COLUMN ED9040M_TBL.JIGYOSHOCHO_NM IS '事業所長氏名'
/
COMMENT ON COLUMN ED9040M_TBL.JIGYOSHOCHO_HKN_NM IS '事業所長半角カナ氏名'
/
COMMENT ON COLUMN ED9040M_TBL.JIGYOSHOCHO_KN_NM IS '事業所長カナ氏名'
/
COMMENT ON COLUMN ED9040M_TBL.TDB_JGYSH_SHY_SHIRSK_NM IS 'ＴＤＢ事業所主要仕入先名称'
/
COMMENT ON COLUMN ED9040M_TBL.TDB_JGYSH_SHY_HMBISK_NM IS 'ＴＤＢ事業所主要販売先名称'
/
COMMENT ON COLUMN ED9040M_TBL.KAISETSU_YM IS '開設年月'
/
COMMENT ON COLUMN ED9040M_TBL.ITEN_YM IS '移転年月'
/
COMMENT ON COLUMN ED9040M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9040M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9040M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9040M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9040M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9040M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9040M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9040M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9040M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9040M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9040M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9040M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/