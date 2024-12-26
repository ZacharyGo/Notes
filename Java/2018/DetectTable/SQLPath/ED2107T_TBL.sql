﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED2107T_TBL.sql
-- 物理名：ED2107T_TBL
-- 論理名：返品明細テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED2107T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED2107T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,HEMPIN_DEMPYO_NO  CHAR(17) NOT NULL --「返品伝票番号」
	,HEMPIN_DEMPYO_MEISAI_SN  CHAR(14) NOT NULL --「返品伝票明細連番」
	,HIMMEI_CD  CHAR(8) NOT NULL --「品名コード」
	,HEMPIN_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「返品数量」
	,HEMPIN_BIKO  VARCHAR2(100) --「返品備考」
	,HEMPIN_JURYO_YMD  DATE --「返品受領年月日」
	,JIGYO_SEGMENT_CD  CHAR(3) NOT NULL --「事業セグメントコード」
	,CHOZOHIN_KBN  CHAR(2) NOT NULL --「貯蔵品区分」
	,CHOTATSU_SHIHARAI_SHINSEI_NO  CHAR(12) --「調達支払申請番号」
	,NOHIN_DEMPYO_NO  CHAR(17) --「納品伝票番号」
	,NOHIN_DEMPYO_MEISAI_SN  CHAR(14) --「納品伝票明細連番」
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
	,CONSTRAINT ED2107T_PK PRIMARY KEY(
	 HEMPIN_DEMPYO_NO
	,  HEMPIN_DEMPYO_MEISAI_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED2107T_TBL IS '返品明細テーブル'
/

COMMENT ON COLUMN ED2107T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED2107T_TBL.HEMPIN_DEMPYO_NO IS '返品伝票番号'
/
COMMENT ON COLUMN ED2107T_TBL.HEMPIN_DEMPYO_MEISAI_SN IS '返品伝票明細連番'
/
COMMENT ON COLUMN ED2107T_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED2107T_TBL.HEMPIN_SURYO IS '返品数量'
/
COMMENT ON COLUMN ED2107T_TBL.HEMPIN_BIKO IS '返品備考'
/
COMMENT ON COLUMN ED2107T_TBL.HEMPIN_JURYO_YMD IS '返品受領年月日'
/
COMMENT ON COLUMN ED2107T_TBL.JIGYO_SEGMENT_CD IS '事業セグメントコード'
/
COMMENT ON COLUMN ED2107T_TBL.CHOZOHIN_KBN IS '貯蔵品区分'
/
COMMENT ON COLUMN ED2107T_TBL.CHOTATSU_SHIHARAI_SHINSEI_NO IS '調達支払申請番号'
/
COMMENT ON COLUMN ED2107T_TBL.NOHIN_DEMPYO_NO IS '納品伝票番号'
/
COMMENT ON COLUMN ED2107T_TBL.NOHIN_DEMPYO_MEISAI_SN IS '納品伝票明細連番'
/
COMMENT ON COLUMN ED2107T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED2107T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED2107T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED2107T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED2107T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED2107T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED2107T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED2107T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED2107T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED2107T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED2107T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED2107T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
