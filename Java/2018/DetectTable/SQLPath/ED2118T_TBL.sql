﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED2118T_TBL.sql
-- 物理名：ED2118T_TBL
-- 論理名：貸与品返却記録テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED2118T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED2118T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,HENKYAKU_KIROKU_KANRI_ID  CHAR(16) NOT NULL --「返却記録管理ＩＤ」
	,TAIYO_TAISHOSAKI_KBN  CHAR(1) NOT NULL --「貸与対象先区分」
	,TAIYOSAKI_CD  VARCHAR2(8) NOT NULL --「貸与先コード」
	,HIMMEI_CD  CHAR(8) --「品名コード」
	,HIMMEI_NM  VARCHAR2(60) --「品名名称」
	,SHIMPIN_KBN  CHAR(1) NOT NULL --「新品区分」
	,TAIYOHIN_HENKYAKU_KBN  CHAR(1) NOT NULL --「貸与品返却区分」
	,TAIYO_YMD  DATE NOT NULL --「貸与年月日」
	,HENKYAKUMAE_TAIYO_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「返却前貸与数量」
	,HENKYAKU_YMD  DATE NOT NULL --「返却年月日」
	,HENKYAKU_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「返却数量」
	,TAIYOHIN_TANI_NM  VARCHAR2(5) --「貸与品単位名称」
	,KOTAI_NO  VARCHAR2(30) --「個体番号」
	,HENNO_DEMPYO_NO  CHAR(17) --「返納伝票番号」
	,HENNO_DEMPYO_MEISAI_SN  CHAR(14) --「返納伝票明細連番」
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
	,CONSTRAINT ED2118T_PK PRIMARY KEY(
	 HENKYAKU_KIROKU_KANRI_ID
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED2118T_TBL IS '貸与品返却記録テーブル'
/

COMMENT ON COLUMN ED2118T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED2118T_TBL.HENKYAKU_KIROKU_KANRI_ID IS '返却記録管理ＩＤ'
/
COMMENT ON COLUMN ED2118T_TBL.TAIYO_TAISHOSAKI_KBN IS '貸与対象先区分'
/
COMMENT ON COLUMN ED2118T_TBL.TAIYOSAKI_CD IS '貸与先コード'
/
COMMENT ON COLUMN ED2118T_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED2118T_TBL.HIMMEI_NM IS '品名名称'
/
COMMENT ON COLUMN ED2118T_TBL.SHIMPIN_KBN IS '新品区分'
/
COMMENT ON COLUMN ED2118T_TBL.TAIYOHIN_HENKYAKU_KBN IS '貸与品返却区分'
/
COMMENT ON COLUMN ED2118T_TBL.TAIYO_YMD IS '貸与年月日'
/
COMMENT ON COLUMN ED2118T_TBL.HENKYAKUMAE_TAIYO_SURYO IS '返却前貸与数量'
/
COMMENT ON COLUMN ED2118T_TBL.HENKYAKU_YMD IS '返却年月日'
/
COMMENT ON COLUMN ED2118T_TBL.HENKYAKU_SURYO IS '返却数量'
/
COMMENT ON COLUMN ED2118T_TBL.TAIYOHIN_TANI_NM IS '貸与品単位名称'
/
COMMENT ON COLUMN ED2118T_TBL.KOTAI_NO IS '個体番号'
/
COMMENT ON COLUMN ED2118T_TBL.HENNO_DEMPYO_NO IS '返納伝票番号'
/
COMMENT ON COLUMN ED2118T_TBL.HENNO_DEMPYO_MEISAI_SN IS '返納伝票明細連番'
/
COMMENT ON COLUMN ED2118T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED2118T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED2118T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED2118T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED2118T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED2118T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED2118T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED2118T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED2118T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED2118T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED2118T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED2118T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
