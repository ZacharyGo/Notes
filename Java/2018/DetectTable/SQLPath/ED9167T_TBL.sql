﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9167T_TBL.sql
-- 物理名：ED9167T_TBL
-- 論理名：運行計画隊員テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9167T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9167T_TBL (
	 UNKO_KEIKAKU_TAIIN_SN  NUMBER(14,0) DEFAULT '0' NOT NULL --「運行計画隊員連番」
	,KIBKI_RNKI_JSHN_TBL_SHKBTS_KEY  CHAR(4) --「警備系連携受信テーブル識別キー」
	,UNK_KIKK_TIIN_DT_SKSI_DT  TIMESTAMP NOT NULL --「運行計画隊員データ作成日時」
	,JUCHU_KEIYAKU_NO  CHAR(15) --「受注契約番号」
	,JIGYOSHO_CD  CHAR(6) --「事業所コード」
	,UNK_KIKK_TIIN_KIS_GYM_JIKAN  NUMBER(9,0) DEFAULT '0' NOT NULL --「運行計画隊員警送業務時間」
	,DENKEI_NO  CHAR(9) --「電計番号」
	,KEIBI_RENKEI_YOBI_KMK_NAIYO_1  VARCHAR2(255) --「警備系予備項目内容１」
	,KEIBI_RENKEI_YOBI_KMK_NAIYO_2  VARCHAR2(255) --「警備系予備項目内容２」
	,KEIBI_RENKEI_YOBI_KMK_NAIYO_3  VARCHAR2(255) --「警備系予備項目内容３」
	,KEIBI_RENKEI_YOBI_KMK_NAIYO_4  VARCHAR2(255) --「警備系予備項目内容４」
	,KEIBI_RENKEI_YOBI_KMK_NAIYO_5  VARCHAR2(255) --「警備系予備項目内容５」
	,KEIBI_RENKEI_YOBI_KMK_NAIYO_6  VARCHAR2(255) --「警備系予備項目内容６」
	,KEIBI_RENKEI_YOBI_KMK_NAIYO_7  VARCHAR2(255) --「警備系予備項目内容７」
	,KEIBI_RENKEI_YOBI_KMK_NAIYO_8  VARCHAR2(255) --「警備系予備項目内容８」
	,KEIBI_RENKEI_YOBI_KMK_NAIYO_9  VARCHAR2(255) --「警備系予備項目内容９」
	,KEIBI_RENKEI_YOBI_KMK_NAIYO_10  VARCHAR2(255) --「警備系予備項目内容１０」
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
	,CONSTRAINT ED9167T_PK PRIMARY KEY(
	 UNK_KIKK_TIIN_DT_SKSI_DT
	,  UNKO_KEIKAKU_TAIIN_SN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9167T_TBL IS '運行計画隊員テーブル'
/

COMMENT ON COLUMN ED9167T_TBL.UNKO_KEIKAKU_TAIIN_SN IS '運行計画隊員連番'
/
COMMENT ON COLUMN ED9167T_TBL.KIBKI_RNKI_JSHN_TBL_SHKBTS_KEY IS '警備系連携受信テーブル識別キー'
/
COMMENT ON COLUMN ED9167T_TBL.UNK_KIKK_TIIN_DT_SKSI_DT IS '運行計画隊員データ作成日時'
/
COMMENT ON COLUMN ED9167T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED9167T_TBL.JIGYOSHO_CD IS '事業所コード'
/
COMMENT ON COLUMN ED9167T_TBL.UNK_KIKK_TIIN_KIS_GYM_JIKAN IS '運行計画隊員警送業務時間'
/
COMMENT ON COLUMN ED9167T_TBL.DENKEI_NO IS '電計番号'
/
COMMENT ON COLUMN ED9167T_TBL.KEIBI_RENKEI_YOBI_KMK_NAIYO_1 IS '警備系予備項目内容１'
/
COMMENT ON COLUMN ED9167T_TBL.KEIBI_RENKEI_YOBI_KMK_NAIYO_2 IS '警備系予備項目内容２'
/
COMMENT ON COLUMN ED9167T_TBL.KEIBI_RENKEI_YOBI_KMK_NAIYO_3 IS '警備系予備項目内容３'
/
COMMENT ON COLUMN ED9167T_TBL.KEIBI_RENKEI_YOBI_KMK_NAIYO_4 IS '警備系予備項目内容４'
/
COMMENT ON COLUMN ED9167T_TBL.KEIBI_RENKEI_YOBI_KMK_NAIYO_5 IS '警備系予備項目内容５'
/
COMMENT ON COLUMN ED9167T_TBL.KEIBI_RENKEI_YOBI_KMK_NAIYO_6 IS '警備系予備項目内容６'
/
COMMENT ON COLUMN ED9167T_TBL.KEIBI_RENKEI_YOBI_KMK_NAIYO_7 IS '警備系予備項目内容７'
/
COMMENT ON COLUMN ED9167T_TBL.KEIBI_RENKEI_YOBI_KMK_NAIYO_8 IS '警備系予備項目内容８'
/
COMMENT ON COLUMN ED9167T_TBL.KEIBI_RENKEI_YOBI_KMK_NAIYO_9 IS '警備系予備項目内容９'
/
COMMENT ON COLUMN ED9167T_TBL.KEIBI_RENKEI_YOBI_KMK_NAIYO_10 IS '警備系予備項目内容１０'
/
COMMENT ON COLUMN ED9167T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9167T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9167T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9167T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9167T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9167T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9167T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9167T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9167T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9167T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9167T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9167T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/