﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4325T_TBL.sql
-- 物理名：ED4325T_TBL
-- 論理名：警備診断警送振込先金融機関テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4325T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4325T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KEIBI_SHINDAN_NO  CHAR(17) NOT NULL --「警備診断番号」
	,FURIKOMISAKI_KINYU_KIKAN_CD  CHAR(4) --「振込先金融機関コード」
	,KIB_SHNDN_FRKMSK_KNY_KIKAN_SN  CHAR(14) NOT NULL --「警備診断警送振込先金融機関連番」
	,KOZA_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「口座数量」
	,TSUIKA_TSRYARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「追加手数料有フラグ」
	,TSUIKA_TSRY_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「追加手数料金額」
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
	,CONSTRAINT ED4325T_PK PRIMARY KEY(
	 KEIBI_SHINDAN_NO
	,  KIB_SHNDN_FRKMSK_KNY_KIKAN_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4325T_TBL IS '警備診断警送振込先金融機関テーブル'
/

COMMENT ON COLUMN ED4325T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED4325T_TBL.KEIBI_SHINDAN_NO IS '警備診断番号'
/
COMMENT ON COLUMN ED4325T_TBL.FURIKOMISAKI_KINYU_KIKAN_CD IS '振込先金融機関コード'
/
COMMENT ON COLUMN ED4325T_TBL.KIB_SHNDN_FRKMSK_KNY_KIKAN_SN IS '警備診断警送振込先金融機関連番'
/
COMMENT ON COLUMN ED4325T_TBL.KOZA_SURYO IS '口座数量'
/
COMMENT ON COLUMN ED4325T_TBL.TSUIKA_TSRYARI_FLG IS '追加手数料有フラグ'
/
COMMENT ON COLUMN ED4325T_TBL.TSUIKA_TSRY_AMT IS '追加手数料金額'
/
COMMENT ON COLUMN ED4325T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4325T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4325T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4325T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4325T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4325T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4325T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4325T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4325T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4325T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4325T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4325T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
