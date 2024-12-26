﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9158W_TBL.sql
-- 物理名：ED9158W_TBL
-- 論理名：警備系＿営業送信＿マスタ連携制御ワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9158W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9158W_TBL (
	 KBK_SSHN_RNKI_TABLE_SHKBTS_KEY  CHAR(4) NOT NULL --「ＫＢＫ＿送信連携テーブル識別キー」
	,KBK_DATA_SAKUSEI_DT  CHAR(14) --「ＫＢＫ＿データ作成日時」
	,KBK_SOSHIN_DATA_KENSU  NUMBER(10,0) DEFAULT '0' NOT NULL --「ＫＢＫ＿送信データ件数」
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
	,CONSTRAINT ED9158W_PK PRIMARY KEY(
	 KBK_SSHN_RNKI_TABLE_SHKBTS_KEY
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9158W_TBL IS '警備系＿営業送信＿マスタ連携制御ワーク'
/

COMMENT ON COLUMN ED9158W_TBL.KBK_SSHN_RNKI_TABLE_SHKBTS_KEY IS 'ＫＢＫ＿送信連携テーブル識別キー'
/
COMMENT ON COLUMN ED9158W_TBL.KBK_DATA_SAKUSEI_DT IS 'ＫＢＫ＿データ作成日時'
/
COMMENT ON COLUMN ED9158W_TBL.KBK_SOSHIN_DATA_KENSU IS 'ＫＢＫ＿送信データ件数'
/
COMMENT ON COLUMN ED9158W_TBL.KBK_YOBI_KOMOKU_01 IS 'ＫＢＫ＿予備項目０１'
/
COMMENT ON COLUMN ED9158W_TBL.KBK_YOBI_KOMOKU_02 IS 'ＫＢＫ＿予備項目０２'
/
COMMENT ON COLUMN ED9158W_TBL.KBK_YOBI_KOMOKU_03 IS 'ＫＢＫ＿予備項目０３'
/
COMMENT ON COLUMN ED9158W_TBL.KBK_YOBI_KOMOKU_04 IS 'ＫＢＫ＿予備項目０４'
/
COMMENT ON COLUMN ED9158W_TBL.KBK_YOBI_KOMOKU_05 IS 'ＫＢＫ＿予備項目０５'
/
COMMENT ON COLUMN ED9158W_TBL.KBK_YOBI_KOMOKU_06 IS 'ＫＢＫ＿予備項目０６'
/
COMMENT ON COLUMN ED9158W_TBL.KBK_YOBI_KOMOKU_07 IS 'ＫＢＫ＿予備項目０７'
/
COMMENT ON COLUMN ED9158W_TBL.KBK_YOBI_KOMOKU_08 IS 'ＫＢＫ＿予備項目０８'
/
COMMENT ON COLUMN ED9158W_TBL.KBK_YOBI_KOMOKU_09 IS 'ＫＢＫ＿予備項目０９'
/
COMMENT ON COLUMN ED9158W_TBL.KBK_YOBI_KOMOKU_10 IS 'ＫＢＫ＿予備項目１０'
/
COMMENT ON COLUMN ED9158W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9158W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9158W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9158W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9158W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9158W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9158W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9158W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9158W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9158W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9158W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9158W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
