﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED2002M_TBL.sql
-- 物理名：ED2002M_TBL
-- 論理名：品名積算情報マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED2002M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED2002M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,HIMMEI_CD  CHAR(8) NOT NULL --「品名コード」
	,HIMMEI_SEKISAN_JOHO_SN  CHAR(14) NOT NULL --「品名積算情報連番」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,BAIKYAKU_KBN  CHAR(1) NOT NULL --「売却区分」
	,HOJIN_HAMBAI_GENKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「法人販売原価金額」
	,HOJIN_HAMBAI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「法人販売金額」
	,KOJIN_HAMBAI_GENKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「個人販売原価金額」
	,KOJIN_HAMBAI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「個人販売金額」
	,HAMBAI_AMT_KEISU_1  NUMBER(12,3) DEFAULT '0' NOT NULL --「販売金額係数１」
	,HAMBAI_AMT_KEISU_2  NUMBER(12,3) DEFAULT '0' NOT NULL --「販売金額係数２」
	,HAMBAI_AMT_KEISU_3  NUMBER(12,3) DEFAULT '0' NOT NULL --「販売金額係数３」
	,TORITSUKE_GENKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「取付原価金額」
	,TORITSUKE_HYOJUN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「取付標準金額」
	,KIKI_KASAN_B_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「機器加算Ｂ金額」
	,SEKISAN_HIMMEI_BUNRUI_1_CD  CHAR(3) --「積算品名分類１コード」
	,SEKISAN_HIMMEI_BUNRUI_2_CD  CHAR(3) --「積算品名分類２コード」
	,SEKISAN_HIMMEI_BUNRUI_3_CD  CHAR(3) --「積算品名分類３コード」
	,KOJIGAKU_SANSHUTSU_HOHO_KBN  CHAR(1) NOT NULL --「工事額算出方法区分」
	,SEKISAN_SEIGYO_SOCHI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「積算制御装置フラグ」
	,SAIDAI_SOSAKI_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「最大操作器数量」
	,HANTEI_MENSEKI  NUMBER(9,0) DEFAULT '0' NOT NULL --「判定面積」
	,SEKISAN_BUGAKARI_SURYO  NUMBER(12,3) DEFAULT '0' NOT NULL --「積算歩掛数量」
	,SEKISAN_TANI_NM  VARCHAR2(5) --「積算単位名称」
	,DENATSU_SHURUI_KBN  CHAR(1) NOT NULL --「電圧種類区分」
	,SHOHI_DENRYU_12_V_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「消費電流１２Ｖ数量」
	,SHOHI_DENRYU_24_V_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「消費電流２４Ｖ数量」
	,SHOHI_DENRYU_SCI_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「消費電流ＳＣＩ数量」
	,KYOKYU_DENRYU_12_V_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「供給電流１２Ｖ数量」
	,KYOKYU_DENRYU_24_V_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「供給電流２４Ｖ数量」
	,KYOKYU_DENRYU_SCI_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「供給電流ＳＣＩ数量」
	,SHINSEI_SHONIN_NO  CHAR(14) --「申請承認番号」
	,EIGYO_HYOJIYO_HIMMEI_NM  VARCHAR2(60) --「営業表示用品名名称」
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
	,CONSTRAINT ED2002M_PK PRIMARY KEY(
	 HIMMEI_CD
	,  HIMMEI_SEKISAN_JOHO_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED2002M_TBL IS '品名積算情報マスタ'
/

COMMENT ON COLUMN ED2002M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED2002M_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED2002M_TBL.HIMMEI_SEKISAN_JOHO_SN IS '品名積算情報連番'
/
COMMENT ON COLUMN ED2002M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED2002M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED2002M_TBL.BAIKYAKU_KBN IS '売却区分'
/
COMMENT ON COLUMN ED2002M_TBL.HOJIN_HAMBAI_GENKA_AMT IS '法人販売原価金額'
/
COMMENT ON COLUMN ED2002M_TBL.HOJIN_HAMBAI_AMT IS '法人販売金額'
/
COMMENT ON COLUMN ED2002M_TBL.KOJIN_HAMBAI_GENKA_AMT IS '個人販売原価金額'
/
COMMENT ON COLUMN ED2002M_TBL.KOJIN_HAMBAI_AMT IS '個人販売金額'
/
COMMENT ON COLUMN ED2002M_TBL.HAMBAI_AMT_KEISU_1 IS '販売金額係数１'
/
COMMENT ON COLUMN ED2002M_TBL.HAMBAI_AMT_KEISU_2 IS '販売金額係数２'
/
COMMENT ON COLUMN ED2002M_TBL.HAMBAI_AMT_KEISU_3 IS '販売金額係数３'
/
COMMENT ON COLUMN ED2002M_TBL.TORITSUKE_GENKA_AMT IS '取付原価金額'
/
COMMENT ON COLUMN ED2002M_TBL.TORITSUKE_HYOJUN_AMT IS '取付標準金額'
/
COMMENT ON COLUMN ED2002M_TBL.KIKI_KASAN_B_AMT IS '機器加算Ｂ金額'
/
COMMENT ON COLUMN ED2002M_TBL.SEKISAN_HIMMEI_BUNRUI_1_CD IS '積算品名分類１コード'
/
COMMENT ON COLUMN ED2002M_TBL.SEKISAN_HIMMEI_BUNRUI_2_CD IS '積算品名分類２コード'
/
COMMENT ON COLUMN ED2002M_TBL.SEKISAN_HIMMEI_BUNRUI_3_CD IS '積算品名分類３コード'
/
COMMENT ON COLUMN ED2002M_TBL.KOJIGAKU_SANSHUTSU_HOHO_KBN IS '工事額算出方法区分'
/
COMMENT ON COLUMN ED2002M_TBL.SEKISAN_SEIGYO_SOCHI_FLG IS '積算制御装置フラグ'
/
COMMENT ON COLUMN ED2002M_TBL.SAIDAI_SOSAKI_SURYO IS '最大操作器数量'
/
COMMENT ON COLUMN ED2002M_TBL.HANTEI_MENSEKI IS '判定面積'
/
COMMENT ON COLUMN ED2002M_TBL.SEKISAN_BUGAKARI_SURYO IS '積算歩掛数量'
/
COMMENT ON COLUMN ED2002M_TBL.SEKISAN_TANI_NM IS '積算単位名称'
/
COMMENT ON COLUMN ED2002M_TBL.DENATSU_SHURUI_KBN IS '電圧種類区分'
/
COMMENT ON COLUMN ED2002M_TBL.SHOHI_DENRYU_12_V_SURYO IS '消費電流１２Ｖ数量'
/
COMMENT ON COLUMN ED2002M_TBL.SHOHI_DENRYU_24_V_SURYO IS '消費電流２４Ｖ数量'
/
COMMENT ON COLUMN ED2002M_TBL.SHOHI_DENRYU_SCI_SURYO IS '消費電流ＳＣＩ数量'
/
COMMENT ON COLUMN ED2002M_TBL.KYOKYU_DENRYU_12_V_SURYO IS '供給電流１２Ｖ数量'
/
COMMENT ON COLUMN ED2002M_TBL.KYOKYU_DENRYU_24_V_SURYO IS '供給電流２４Ｖ数量'
/
COMMENT ON COLUMN ED2002M_TBL.KYOKYU_DENRYU_SCI_SURYO IS '供給電流ＳＣＩ数量'
/
COMMENT ON COLUMN ED2002M_TBL.SHINSEI_SHONIN_NO IS '申請承認番号'
/
COMMENT ON COLUMN ED2002M_TBL.EIGYO_HYOJIYO_HIMMEI_NM IS '営業表示用品名名称'
/
COMMENT ON COLUMN ED2002M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED2002M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED2002M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED2002M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED2002M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED2002M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED2002M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED2002M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED2002M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED2002M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED2002M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED2002M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/