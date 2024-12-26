﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ZD0008M_TBL.sql
-- 物理名：ZD0008M_TBL
-- 論理名：電子帳票格納先帳票ＩＤ紐付マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ZD0008M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ZD0008M_TBL (
	 SYSTEM_ID  CHAR(1) NOT NULL --「システムＩＤ」
	,KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,CHOHYO_KAKUNO_SAKI_ID  VARCHAR2(36) NOT NULL --「帳票格納先ＩＤ」
	,CHOHYO_ID  VARCHAR2(20) NOT NULL --「帳票ＩＤ」
	,CHOHYO_KAKUNOSAKI_SEIGYO_KEY  VARCHAR2(20) --「帳票格納先制御キー」
	,CHHY_KKNSK_CHHY_ID_HMZK_SN  NUMBER(4,0) DEFAULT '1' NOT NULL --「帳票格納先帳票ＩＤ紐付連番」
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
	,CONSTRAINT ZD0008M_PK PRIMARY KEY(
	 CHOHYO_KAKUNO_SAKI_ID
	,  CHOHYO_ID
	,  CHHY_KKNSK_CHHY_ID_HMZK_SN
	,  KAISHA_CD
	,  SYSTEM_ID
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ZD0008M_TBL IS '電子帳票格納先帳票ＩＤ紐付マスタ'
/

COMMENT ON COLUMN ZD0008M_TBL.SYSTEM_ID IS 'システムＩＤ'
/
COMMENT ON COLUMN ZD0008M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ZD0008M_TBL.CHOHYO_KAKUNO_SAKI_ID IS '帳票格納先ＩＤ'
/
COMMENT ON COLUMN ZD0008M_TBL.CHOHYO_ID IS '帳票ＩＤ'
/
COMMENT ON COLUMN ZD0008M_TBL.CHOHYO_KAKUNOSAKI_SEIGYO_KEY IS '帳票格納先制御キー'
/
COMMENT ON COLUMN ZD0008M_TBL.CHHY_KKNSK_CHHY_ID_HMZK_SN IS '帳票格納先帳票ＩＤ紐付連番'
/
COMMENT ON COLUMN ZD0008M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ZD0008M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ZD0008M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ZD0008M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ZD0008M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ZD0008M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ZD0008M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ZD0008M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ZD0008M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ZD0008M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ZD0008M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ZD0008M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
