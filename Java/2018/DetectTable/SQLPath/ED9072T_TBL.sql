﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9072T_TBL.sql
-- 物理名：ED9072T_TBL
-- 論理名：企業業績差分保管テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9072T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9072T_TBL (
	 TDB_KIGYO_CD  CHAR(9) NOT NULL --「ＴＤＢ企業コード」
	,KESSANKI_YM  CHAR(6) NOT NULL --「決算期年月」
	,URIAGEDAKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「売上高金額」
	,ZEIBIKIGO_RIEKI_AMT_YUKO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「税引後利益金額有効フラグ」
	,ZEIBIKIGO_RIEKI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「税引後利益金額」
	,HAITO_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「配当率」
	,JIKO_SHIHONHI_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「自己資本比率」
	,KESSANSHO_NYUSHU_FLG  CHAR(1) DEFAULT '0' NOT NULL --「決算書入手フラグ」
	,HOJIN_SHINKOKU_SHOTOKU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「法人申告所得金額」
	,SISHN_HJN_SHNKK_KSSN_YM  CHAR(6) --「最新法人申告決算年月」
	,SISHN_HJN_SHNKK_SHTK_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「最新法人申告所得金額」
	,TOKI_URIAGEDAKA_ZENKIHI_RITSU  NUMBER(17,3) DEFAULT '0' NOT NULL --「当期売上高前期比率」
	,TK_HJN_SHNKK_SHTK_ZNKH_RITSU  NUMBER(17,3) DEFAULT '0' NOT NULL --「当期法人申告所得前期比率」
	,TK_ZIBKG_REK_ZNKH_RITSU  NUMBER(17,3) DEFAULT '0' NOT NULL --「当期税引後利益前期比率」
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
	,CONSTRAINT ED9072T_PK PRIMARY KEY(
	 TDB_KIGYO_CD
	,  KESSANKI_YM
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9072T_TBL IS '企業業績差分保管テーブル'
/

COMMENT ON COLUMN ED9072T_TBL.TDB_KIGYO_CD IS 'ＴＤＢ企業コード'
/
COMMENT ON COLUMN ED9072T_TBL.KESSANKI_YM IS '決算期年月'
/
COMMENT ON COLUMN ED9072T_TBL.URIAGEDAKA_AMT IS '売上高金額'
/
COMMENT ON COLUMN ED9072T_TBL.ZEIBIKIGO_RIEKI_AMT_YUKO_FLG IS '税引後利益金額有効フラグ'
/
COMMENT ON COLUMN ED9072T_TBL.ZEIBIKIGO_RIEKI_AMT IS '税引後利益金額'
/
COMMENT ON COLUMN ED9072T_TBL.HAITO_RITSU IS '配当率'
/
COMMENT ON COLUMN ED9072T_TBL.JIKO_SHIHONHI_RITSU IS '自己資本比率'
/
COMMENT ON COLUMN ED9072T_TBL.KESSANSHO_NYUSHU_FLG IS '決算書入手フラグ'
/
COMMENT ON COLUMN ED9072T_TBL.HOJIN_SHINKOKU_SHOTOKU_AMT IS '法人申告所得金額'
/
COMMENT ON COLUMN ED9072T_TBL.SISHN_HJN_SHNKK_KSSN_YM IS '最新法人申告決算年月'
/
COMMENT ON COLUMN ED9072T_TBL.SISHN_HJN_SHNKK_SHTK_AMT IS '最新法人申告所得金額'
/
COMMENT ON COLUMN ED9072T_TBL.TOKI_URIAGEDAKA_ZENKIHI_RITSU IS '当期売上高前期比率'
/
COMMENT ON COLUMN ED9072T_TBL.TK_HJN_SHNKK_SHTK_ZNKH_RITSU IS '当期法人申告所得前期比率'
/
COMMENT ON COLUMN ED9072T_TBL.TK_ZIBKG_REK_ZNKH_RITSU IS '当期税引後利益前期比率'
/
COMMENT ON COLUMN ED9072T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9072T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9072T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9072T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9072T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9072T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9072T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9072T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9072T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9072T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9072T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9072T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
