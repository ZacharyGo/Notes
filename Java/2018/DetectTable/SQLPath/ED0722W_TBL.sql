﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0722W_TBL.sql
-- 物理名：ED0722W_TBL
-- 論理名：警備系＿営業受信＿ＧＣＴ受信＿特約事項電子メモワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0722W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0722W_TBL (
	 KBK_TKYK_JK_DNSH_MEMO_SN  NUMBER(14,0) DEFAULT '0' NOT NULL --「ＫＢＫ＿特約事項電子メモ連番」
	,KBK_JSHN_RNKITABLE_SHKBTS_KEY  CHAR(4) --「ＫＢＫ＿受信連携テーブル識別キー」
	,KBK_DATA_SAKUSEI_DT  CHAR(14) NOT NULL --「ＫＢＫ＿データ作成日時」
	,KBK_GOKI_NO  VARCHAR2(11) --「ＫＢＫ＿号機番号」
	,KBK_KUMIKOMI_NO  VARCHAR2(20) --「ＫＢＫ＿組み込み番号」
	,KBK_TOKUYAKU_JIKO_1  VARCHAR2(150) --「ＫＢＫ＿特約事項１」
	,KBK_TOKUYAKU_JIKO_2  VARCHAR2(150) --「ＫＢＫ＿特約事項２」
	,KBK_TOKUYAKU_JIKO_3  VARCHAR2(150) --「ＫＢＫ＿特約事項３」
	,KBK_TOKUYAKU_JIKO_4  VARCHAR2(150) --「ＫＢＫ＿特約事項４」
	,KBK_TOKUYAKU_JIKO_5  VARCHAR2(150) --「ＫＢＫ＿特約事項５」
	,KBK_DNSH_MEMO  VARCHAR2(150) --「ＫＢＫ＿電子メモ」
	,KBK_DENKEI_NO  CHAR(9) --「ＫＢＫ＿電計番号」
	,KBK_YOBI_KOMOKU_01  VARCHAR2(255) --「ＫＢＫ＿予備項目０１」
	,KBK_YOBI_KOMOKU_02  VARCHAR2(255) --「ＫＢＫ＿予備項目０２」
	,KBK_YOBI_KOMOKU_03  VARCHAR2(255) --「ＫＢＫ＿予備項目０３」
	,KBK_YOBI_KOMOKU_04  VARCHAR2(255) --「ＫＢＫ＿予備項目０４」
	,KBK_YOBI_KOMOKU_05  VARCHAR2(255) --「ＫＢＫ＿予備項目０５」
	,KBK_YOBI_KOMOKU_06  VARCHAR2(255) --「ＫＢＫ＿予備項目０６」
	,KBK_YOBI_KOMOKU_07  VARCHAR2(255) --「ＫＢＫ＿予備項目０７」
	,KBK_YOBI_KOMOKU_08  VARCHAR2(255) --「ＫＢＫ＿予備項目０８」
	,KBK_YOBI_KOMOKU_09  VARCHAR2(255) --「ＫＢＫ＿予備項目０９」
	,KBK_YOBI_KOMOKU_10  VARCHAR2(255) --「ＫＢＫ＿予備項目１０」
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
	,CONSTRAINT ED0722W_PK PRIMARY KEY(
	 KBK_DATA_SAKUSEI_DT
	,  KBK_TKYK_JK_DNSH_MEMO_SN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0722W_TBL IS '警備系＿営業受信＿ＧＣＴ受信＿特約事項電子メモワーク'
/

COMMENT ON COLUMN ED0722W_TBL.KBK_TKYK_JK_DNSH_MEMO_SN IS 'ＫＢＫ＿特約事項電子メモ連番'
/
COMMENT ON COLUMN ED0722W_TBL.KBK_JSHN_RNKITABLE_SHKBTS_KEY IS 'ＫＢＫ＿受信連携テーブル識別キー'
/
COMMENT ON COLUMN ED0722W_TBL.KBK_DATA_SAKUSEI_DT IS 'ＫＢＫ＿データ作成日時'
/
COMMENT ON COLUMN ED0722W_TBL.KBK_GOKI_NO IS 'ＫＢＫ＿号機番号'
/
COMMENT ON COLUMN ED0722W_TBL.KBK_KUMIKOMI_NO IS 'ＫＢＫ＿組み込み番号'
/
COMMENT ON COLUMN ED0722W_TBL.KBK_TOKUYAKU_JIKO_1 IS 'ＫＢＫ＿特約事項１'
/
COMMENT ON COLUMN ED0722W_TBL.KBK_TOKUYAKU_JIKO_2 IS 'ＫＢＫ＿特約事項２'
/
COMMENT ON COLUMN ED0722W_TBL.KBK_TOKUYAKU_JIKO_3 IS 'ＫＢＫ＿特約事項３'
/
COMMENT ON COLUMN ED0722W_TBL.KBK_TOKUYAKU_JIKO_4 IS 'ＫＢＫ＿特約事項４'
/
COMMENT ON COLUMN ED0722W_TBL.KBK_TOKUYAKU_JIKO_5 IS 'ＫＢＫ＿特約事項５'
/
COMMENT ON COLUMN ED0722W_TBL.KBK_DNSH_MEMO IS 'ＫＢＫ＿電子メモ'
/
COMMENT ON COLUMN ED0722W_TBL.KBK_DENKEI_NO IS 'ＫＢＫ＿電計番号'
/
COMMENT ON COLUMN ED0722W_TBL.KBK_YOBI_KOMOKU_01 IS 'ＫＢＫ＿予備項目０１'
/
COMMENT ON COLUMN ED0722W_TBL.KBK_YOBI_KOMOKU_02 IS 'ＫＢＫ＿予備項目０２'
/
COMMENT ON COLUMN ED0722W_TBL.KBK_YOBI_KOMOKU_03 IS 'ＫＢＫ＿予備項目０３'
/
COMMENT ON COLUMN ED0722W_TBL.KBK_YOBI_KOMOKU_04 IS 'ＫＢＫ＿予備項目０４'
/
COMMENT ON COLUMN ED0722W_TBL.KBK_YOBI_KOMOKU_05 IS 'ＫＢＫ＿予備項目０５'
/
COMMENT ON COLUMN ED0722W_TBL.KBK_YOBI_KOMOKU_06 IS 'ＫＢＫ＿予備項目０６'
/
COMMENT ON COLUMN ED0722W_TBL.KBK_YOBI_KOMOKU_07 IS 'ＫＢＫ＿予備項目０７'
/
COMMENT ON COLUMN ED0722W_TBL.KBK_YOBI_KOMOKU_08 IS 'ＫＢＫ＿予備項目０８'
/
COMMENT ON COLUMN ED0722W_TBL.KBK_YOBI_KOMOKU_09 IS 'ＫＢＫ＿予備項目０９'
/
COMMENT ON COLUMN ED0722W_TBL.KBK_YOBI_KOMOKU_10 IS 'ＫＢＫ＿予備項目１０'
/
COMMENT ON COLUMN ED0722W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0722W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0722W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0722W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0722W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0722W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0722W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0722W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0722W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0722W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0722W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0722W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/