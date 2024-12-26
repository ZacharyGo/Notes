﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9143T_TBL.sql
-- 物理名：ED9143T_TBL
-- 論理名：取引先付替結果テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9143T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9143T_TBL (
	 TORIHIKISAKI_TSUKEKAE_SHORI_NO  CHAR(13) NOT NULL --「取引先付替処理番号」
	,TSUKEKAE_SHORI_ZENGO_KBN  CHAR(1) NOT NULL --「付替処理前後区分」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,KEIYAKUSAKI_TORIHIKISAKI_CD  CHAR(9) --「契約先取引先コード」
	,KEIYAKUSAKI_TORIHIKISAKI_NM  VARCHAR2(40) --「契約先取引先名称」
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
	,CONSTRAINT ED9143T_PK PRIMARY KEY(
	 TORIHIKISAKI_TSUKEKAE_SHORI_NO
	,  TSUKEKAE_SHORI_ZENGO_KBN
	,  JUCHU_KEIYAKU_NO
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9143T_TBL IS '取引先付替結果テーブル'
/

COMMENT ON COLUMN ED9143T_TBL.TORIHIKISAKI_TSUKEKAE_SHORI_NO IS '取引先付替処理番号'
/
COMMENT ON COLUMN ED9143T_TBL.TSUKEKAE_SHORI_ZENGO_KBN IS '付替処理前後区分'
/
COMMENT ON COLUMN ED9143T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED9143T_TBL.KEIYAKUSAKI_TORIHIKISAKI_CD IS '契約先取引先コード'
/
COMMENT ON COLUMN ED9143T_TBL.KEIYAKUSAKI_TORIHIKISAKI_NM IS '契約先取引先名称'
/
COMMENT ON COLUMN ED9143T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9143T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9143T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9143T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9143T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9143T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9143T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9143T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9143T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9143T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9143T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9143T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
