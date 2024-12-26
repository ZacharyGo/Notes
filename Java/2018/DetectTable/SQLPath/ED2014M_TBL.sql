﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED2014M_TBL.sql
-- 物理名：ED2014M_TBL
-- 論理名：契約進捗照会表示制御マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED2014M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED2014M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KSHSH_HYOJI_SEIGYO_ID  CHAR(16) NOT NULL --「契約進捗照会表示制御ＩＤ」
	,SHOHIN_SERVICE_CD  CHAR(3) --「商品サービスコード」
	,KEIYAKU_KBN  CHAR(1) NOT NULL --「契約区分」
	,KSHSH_GAMEN_HYOJI_SECTION_NM  VARCHAR2(10) --「契約進捗照会画面表示セクション名称」
	,KSHSH_GAMEN_HYOJI_ITEM_NM  VARCHAR2(10) --「契約進捗照会画面表示アイテム名称」
	,KSHSH_CHUSHUTSU_SQL_FILE_NM  VARCHAR2(255) --「契約進捗照会抽出ＳＱＬファイル名称」
	,KSHSH_CHUSHUTSU_SQL_FILE_PATH  VARCHAR2(1024) --「契約進捗照会抽出ＳＱＬファイルパス」
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
	,CONSTRAINT ED2014M_PK PRIMARY KEY(
	 KSHSH_HYOJI_SEIGYO_ID
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED2014M_TBL IS '契約進捗照会表示制御マスタ'
/

COMMENT ON COLUMN ED2014M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED2014M_TBL.KSHSH_HYOJI_SEIGYO_ID IS '契約進捗照会表示制御ＩＤ'
/
COMMENT ON COLUMN ED2014M_TBL.SHOHIN_SERVICE_CD IS '商品サービスコード'
/
COMMENT ON COLUMN ED2014M_TBL.KEIYAKU_KBN IS '契約区分'
/
COMMENT ON COLUMN ED2014M_TBL.KSHSH_GAMEN_HYOJI_SECTION_NM IS '契約進捗照会画面表示セクション名称'
/
COMMENT ON COLUMN ED2014M_TBL.KSHSH_GAMEN_HYOJI_ITEM_NM IS '契約進捗照会画面表示アイテム名称'
/
COMMENT ON COLUMN ED2014M_TBL.KSHSH_CHUSHUTSU_SQL_FILE_NM IS '契約進捗照会抽出ＳＱＬファイル名称'
/
COMMENT ON COLUMN ED2014M_TBL.KSHSH_CHUSHUTSU_SQL_FILE_PATH IS '契約進捗照会抽出ＳＱＬファイルパス'
/
COMMENT ON COLUMN ED2014M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED2014M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED2014M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED2014M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED2014M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED2014M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED2014M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED2014M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED2014M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED2014M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED2014M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED2014M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
