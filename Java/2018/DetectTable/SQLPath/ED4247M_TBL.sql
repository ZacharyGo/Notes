﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4247M_TBL.sql
-- 物理名：ED4247M_TBL
-- 論理名：入出金機両替機積算回線種別紐付マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4247M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4247M_TBL (
	 NYUSHUKKINKI_RYOGAEKI_KISHU_CD  CHAR(8) NOT NULL --「入出金機両替機機種コード」
	,NYSHKKNK_KISN_SHBTS_CD  CHAR(3) NOT NULL --「入出金機回線種別コード」
	,HYOJI_JUN  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順」
	,KIKAI_KEIBI_KISN_SHUBETSU_CD  CHAR(3) NOT NULL --「機械警備回線種別コード」
	,HIMMEI_CD  CHAR(8) NOT NULL --「品名コード」
	,RIYO_FUKA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「利用不可フラグ」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
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
	,CONSTRAINT ED4247M_PK PRIMARY KEY(
	 NYUSHUKKINKI_RYOGAEKI_KISHU_CD
	,  NYSHKKNK_KISN_SHBTS_CD
	,  KIKAI_KEIBI_KISN_SHUBETSU_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4247M_TBL IS '入出金機両替機積算回線種別紐付マスタ'
/

COMMENT ON COLUMN ED4247M_TBL.NYUSHUKKINKI_RYOGAEKI_KISHU_CD IS '入出金機両替機機種コード'
/
COMMENT ON COLUMN ED4247M_TBL.NYSHKKNK_KISN_SHBTS_CD IS '入出金機回線種別コード'
/
COMMENT ON COLUMN ED4247M_TBL.HYOJI_JUN IS '表示順'
/
COMMENT ON COLUMN ED4247M_TBL.KIKAI_KEIBI_KISN_SHUBETSU_CD IS '機械警備回線種別コード'
/
COMMENT ON COLUMN ED4247M_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED4247M_TBL.RIYO_FUKA_FLG IS '利用不可フラグ'
/
COMMENT ON COLUMN ED4247M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4247M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4247M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4247M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4247M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4247M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4247M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4247M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4247M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4247M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4247M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4247M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4247M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4247M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
