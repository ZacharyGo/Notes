﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0647T_TBL.sql
-- 物理名：ED0647T_TBL
-- 論理名：受注機器構成テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0647T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0647T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) NOT NULL --「受注契約変更番号」
	,KIKI_KOSEI_SN  CHAR(14) NOT NULL --「機器構成連番」
	,HIMMEI_CD  CHAR(8) --「品名コード」
	,SHIZAI_GENKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「資材原価金額」
	,SHIZAI_HYOJUN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「資材標準金額」
	,SHIZAI_CHUMON_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「資材注文数量」
	,SHIZAI_SHUKKAZUMI_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「資材出荷済数量」
	,SHIZAI_TEKKYO_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「資材撤去数量」
	,URIAGE_RIEKI_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「売上利益率」
	,OKUGAI_KANTSU_KASHOSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「屋外貫通箇所数」
	,TEKKYO_SAITORITSUKE_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「撤去再取付数量」
	,ISETSU_SURYO  NUMBER(12,3) DEFAULT '0' NOT NULL --「移設数量」
	,CHOTATSU_FUYO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「調達不要フラグ」
	,SHURIHIN_FLG  CHAR(1) DEFAULT '0' NOT NULL --「修理品フラグ」
	,HOYUARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「保守有フラグ」
	,JIGYO_SEGMENT_CD  CHAR(3) --「事業セグメントコード」
	,JOSHIN_KBN  CHAR(1) NOT NULL --「上申区分」
	,SHOHI_DENRYU_12_V_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「消費電流１２Ｖ数量」
	,SHOHI_DENRYU_24_V_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「消費電流２４Ｖ数量」
	,SHOHI_DENRYU_SCI_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「消費電流ＳＣＩ数量」
	,HIYO_TAISHO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「費用対象金額」
	,HY_TISH_SHIRSK_TRHKSK_CD  CHAR(9) --「費用対象仕入先取引先コード」
	,HY_TISH_SHIRSK_TRHKSK_BSH_CD  CHAR(4) --「費用対象仕入先取引先部署コード」
	,NOHIN_KIBO_YMD  DATE --「納品希望年月日」
	,NOHINSAKI_KBN  CHAR(1) NOT NULL --「納品先区分」
	,SONOTA_NOHINSAKI_JIGYOSHO_CD  CHAR(6) --「その他納品先事業所コード」
	,SONOTA_NOHINSAKI_KN_NM  VARCHAR2(40) --「その他納品先カナ名称」
	,SONOTA_NOHINSAKI_NM  VARCHAR2(30) --「その他納品先名称」
	,SONOTA_NOHINSAKI_YUBIN_NO  CHAR(7) --「その他納品先郵便番号」
	,SONOTA_NOHINSAKI_JUSHO_1  VARCHAR2(60) --「その他納品先住所１」
	,SONOTA_NOHINSAKI_JUSHO_2  VARCHAR2(60) --「その他納品先住所２」
	,SONOTA_NOHINSAKI_DENWA_NO  VARCHAR2(20) --「その他納品先電話番号」
	,SONOTA_NOHINSAKI_BUSHO_NM  VARCHAR2(40) --「その他納品先部署名称」
	,SONOTA_NOHINSAKI_TANTO_NM  VARCHAR2(30) --「その他納品先担当名称」
	,HITCHAKUBI_SHITEI_CMNT  VARCHAR2(30) --「必着日指定コメント」
	,SHOHIN_SHIYO_CMNT  VARCHAR2(30) --「商品仕様コメント」
	,SHIMPIN_KBN  CHAR(1) NOT NULL --「新品区分」
	,OPEN_KAKAKUARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「オープン価格有フラグ」
	,BAIKYAKUHINARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「売却品有フラグ」
	,TAISHO_KIKI_KANIARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「対象機器簡易有フラグ」
	,DENATSU_SHURUI_KBN  CHAR(1) NOT NULL --「電圧種類区分」
	,SHUTOKUMOTO_KBN  CHAR(1) NOT NULL --「取得元区分」
	,SAISEKISAN_FLG  CHAR(1) DEFAULT '0' NOT NULL --「再積算フラグ」
	,MAKER_TORIHIKISAKI_CD  CHAR(9) --「メーカ取引先コード」
	,KIKI_KASAN_B_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「機器加算Ｂ金額」
	,HYOJI_JUN_1  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順１」
	,OKUGAI_KANTSU_ARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「屋外貫通有フラグ」
	,KYOKYU_DENRYU_12_V_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「供給電流１２Ｖ数量」
	,KYOKYU_DENRYU_24_V_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「供給電流２４Ｖ数量」
	,KYOKYU_DENRYU_SCI_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「供給電流ＳＣＩ数量」
	,BAIKYAKU_KBN  CHAR(1) NOT NULL --「売却区分」
	,KKKS_TOROKU_GAMEN_ID  CHAR(15) --「機器構成登録画面ＩＤ」
	,SEKISAN_HIMMEI_BUNRUI_1_CD  CHAR(3) --「積算品名分類１コード」
	,SEKISAN_HIMMEI_BUNRUI_2_CD  CHAR(3) --「積算品名分類２コード」
	,SEKISAN_HIMMEI_BUNRUI_3_CD  CHAR(3) --「積算品名分類３コード」
	,KOJIGAKU_SANSHUTSU_HOHO_KBN  CHAR(1) NOT NULL --「工事額算出方法区分」
	,TORITSUKE_GENKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「取付原価金額」
	,TORITSUKE_HYOJUN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「取付標準金額」
	,SEKISAN_BUGAKARI_SURYO  NUMBER(12,3) DEFAULT '0' NOT NULL --「積算歩掛数量」
	,HAMBAI_GENKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「販売原価金額」
	,HAMBAI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「販売金額」
	,HAMBAI_AMT_KEISU_1  NUMBER(12,3) DEFAULT '0' NOT NULL --「販売金額係数１」
	,HAMBAI_AMT_KEISU_2  NUMBER(12,3) DEFAULT '0' NOT NULL --「販売金額係数２」
	,HAMBAI_AMT_KEISU_3  NUMBER(12,3) DEFAULT '0' NOT NULL --「販売金額係数３」
	,KIYK_KITI_HKTSG_DT_FLG  CHAR(1) DEFAULT '0' NOT NULL --「解約改定引継データフラグ」
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
	,CONSTRAINT ED0647T_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  JUCHU_KEIYAKU_HENKO_NO
	,  KAISHA_CD
	,  KIKI_KOSEI_SN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0647T_TBL IS '受注機器構成テーブル'
/

COMMENT ON COLUMN ED0647T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0647T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED0647T_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED0647T_TBL.KIKI_KOSEI_SN IS '機器構成連番'
/
COMMENT ON COLUMN ED0647T_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED0647T_TBL.SHIZAI_GENKA_AMT IS '資材原価金額'
/
COMMENT ON COLUMN ED0647T_TBL.SHIZAI_HYOJUN_AMT IS '資材標準金額'
/
COMMENT ON COLUMN ED0647T_TBL.SHIZAI_CHUMON_SURYO IS '資材注文数量'
/
COMMENT ON COLUMN ED0647T_TBL.SHIZAI_SHUKKAZUMI_SURYO IS '資材出荷済数量'
/
COMMENT ON COLUMN ED0647T_TBL.SHIZAI_TEKKYO_SURYO IS '資材撤去数量'
/
COMMENT ON COLUMN ED0647T_TBL.URIAGE_RIEKI_RITSU IS '売上利益率'
/
COMMENT ON COLUMN ED0647T_TBL.OKUGAI_KANTSU_KASHOSU IS '屋外貫通箇所数'
/
COMMENT ON COLUMN ED0647T_TBL.TEKKYO_SAITORITSUKE_SURYO IS '撤去再取付数量'
/
COMMENT ON COLUMN ED0647T_TBL.ISETSU_SURYO IS '移設数量'
/
COMMENT ON COLUMN ED0647T_TBL.CHOTATSU_FUYO_FLG IS '調達不要フラグ'
/
COMMENT ON COLUMN ED0647T_TBL.SHURIHIN_FLG IS '修理品フラグ'
/
COMMENT ON COLUMN ED0647T_TBL.HOYUARI_FLG IS '保守有フラグ'
/
COMMENT ON COLUMN ED0647T_TBL.JIGYO_SEGMENT_CD IS '事業セグメントコード'
/
COMMENT ON COLUMN ED0647T_TBL.JOSHIN_KBN IS '上申区分'
/
COMMENT ON COLUMN ED0647T_TBL.SHOHI_DENRYU_12_V_SURYO IS '消費電流１２Ｖ数量'
/
COMMENT ON COLUMN ED0647T_TBL.SHOHI_DENRYU_24_V_SURYO IS '消費電流２４Ｖ数量'
/
COMMENT ON COLUMN ED0647T_TBL.SHOHI_DENRYU_SCI_SURYO IS '消費電流ＳＣＩ数量'
/
COMMENT ON COLUMN ED0647T_TBL.HIYO_TAISHO_AMT IS '費用対象金額'
/
COMMENT ON COLUMN ED0647T_TBL.HY_TISH_SHIRSK_TRHKSK_CD IS '費用対象仕入先取引先コード'
/
COMMENT ON COLUMN ED0647T_TBL.HY_TISH_SHIRSK_TRHKSK_BSH_CD IS '費用対象仕入先取引先部署コード'
/
COMMENT ON COLUMN ED0647T_TBL.NOHIN_KIBO_YMD IS '納品希望年月日'
/
COMMENT ON COLUMN ED0647T_TBL.NOHINSAKI_KBN IS '納品先区分'
/
COMMENT ON COLUMN ED0647T_TBL.SONOTA_NOHINSAKI_JIGYOSHO_CD IS 'その他納品先事業所コード'
/
COMMENT ON COLUMN ED0647T_TBL.SONOTA_NOHINSAKI_KN_NM IS 'その他納品先カナ名称'
/
COMMENT ON COLUMN ED0647T_TBL.SONOTA_NOHINSAKI_NM IS 'その他納品先名称'
/
COMMENT ON COLUMN ED0647T_TBL.SONOTA_NOHINSAKI_YUBIN_NO IS 'その他納品先郵便番号'
/
COMMENT ON COLUMN ED0647T_TBL.SONOTA_NOHINSAKI_JUSHO_1 IS 'その他納品先住所１'
/
COMMENT ON COLUMN ED0647T_TBL.SONOTA_NOHINSAKI_JUSHO_2 IS 'その他納品先住所２'
/
COMMENT ON COLUMN ED0647T_TBL.SONOTA_NOHINSAKI_DENWA_NO IS 'その他納品先電話番号'
/
COMMENT ON COLUMN ED0647T_TBL.SONOTA_NOHINSAKI_BUSHO_NM IS 'その他納品先部署名称'
/
COMMENT ON COLUMN ED0647T_TBL.SONOTA_NOHINSAKI_TANTO_NM IS 'その他納品先担当名称'
/
COMMENT ON COLUMN ED0647T_TBL.HITCHAKUBI_SHITEI_CMNT IS '必着日指定コメント'
/
COMMENT ON COLUMN ED0647T_TBL.SHOHIN_SHIYO_CMNT IS '商品仕様コメント'
/
COMMENT ON COLUMN ED0647T_TBL.SHIMPIN_KBN IS '新品区分'
/
COMMENT ON COLUMN ED0647T_TBL.OPEN_KAKAKUARI_FLG IS 'オープン価格有フラグ'
/
COMMENT ON COLUMN ED0647T_TBL.BAIKYAKUHINARI_FLG IS '売却品有フラグ'
/
COMMENT ON COLUMN ED0647T_TBL.TAISHO_KIKI_KANIARI_FLG IS '対象機器簡易有フラグ'
/
COMMENT ON COLUMN ED0647T_TBL.DENATSU_SHURUI_KBN IS '電圧種類区分'
/
COMMENT ON COLUMN ED0647T_TBL.SHUTOKUMOTO_KBN IS '取得元区分'
/
COMMENT ON COLUMN ED0647T_TBL.SAISEKISAN_FLG IS '再積算フラグ'
/
COMMENT ON COLUMN ED0647T_TBL.MAKER_TORIHIKISAKI_CD IS 'メーカ取引先コード'
/
COMMENT ON COLUMN ED0647T_TBL.KIKI_KASAN_B_AMT IS '機器加算Ｂ金額'
/
COMMENT ON COLUMN ED0647T_TBL.HYOJI_JUN_1 IS '表示順１'
/
COMMENT ON COLUMN ED0647T_TBL.OKUGAI_KANTSU_ARI_FLG IS '屋外貫通有フラグ'
/
COMMENT ON COLUMN ED0647T_TBL.KYOKYU_DENRYU_12_V_SURYO IS '供給電流１２Ｖ数量'
/
COMMENT ON COLUMN ED0647T_TBL.KYOKYU_DENRYU_24_V_SURYO IS '供給電流２４Ｖ数量'
/
COMMENT ON COLUMN ED0647T_TBL.KYOKYU_DENRYU_SCI_SURYO IS '供給電流ＳＣＩ数量'
/
COMMENT ON COLUMN ED0647T_TBL.BAIKYAKU_KBN IS '売却区分'
/
COMMENT ON COLUMN ED0647T_TBL.KKKS_TOROKU_GAMEN_ID IS '機器構成登録画面ＩＤ'
/
COMMENT ON COLUMN ED0647T_TBL.SEKISAN_HIMMEI_BUNRUI_1_CD IS '積算品名分類１コード'
/
COMMENT ON COLUMN ED0647T_TBL.SEKISAN_HIMMEI_BUNRUI_2_CD IS '積算品名分類２コード'
/
COMMENT ON COLUMN ED0647T_TBL.SEKISAN_HIMMEI_BUNRUI_3_CD IS '積算品名分類３コード'
/
COMMENT ON COLUMN ED0647T_TBL.KOJIGAKU_SANSHUTSU_HOHO_KBN IS '工事額算出方法区分'
/
COMMENT ON COLUMN ED0647T_TBL.TORITSUKE_GENKA_AMT IS '取付原価金額'
/
COMMENT ON COLUMN ED0647T_TBL.TORITSUKE_HYOJUN_AMT IS '取付標準金額'
/
COMMENT ON COLUMN ED0647T_TBL.SEKISAN_BUGAKARI_SURYO IS '積算歩掛数量'
/
COMMENT ON COLUMN ED0647T_TBL.HAMBAI_GENKA_AMT IS '販売原価金額'
/
COMMENT ON COLUMN ED0647T_TBL.HAMBAI_AMT IS '販売金額'
/
COMMENT ON COLUMN ED0647T_TBL.HAMBAI_AMT_KEISU_1 IS '販売金額係数１'
/
COMMENT ON COLUMN ED0647T_TBL.HAMBAI_AMT_KEISU_2 IS '販売金額係数２'
/
COMMENT ON COLUMN ED0647T_TBL.HAMBAI_AMT_KEISU_3 IS '販売金額係数３'
/
COMMENT ON COLUMN ED0647T_TBL.KIYK_KITI_HKTSG_DT_FLG IS '解約改定引継データフラグ'
/
COMMENT ON COLUMN ED0647T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0647T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0647T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0647T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0647T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0647T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0647T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0647T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0647T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0647T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0647T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0647T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
