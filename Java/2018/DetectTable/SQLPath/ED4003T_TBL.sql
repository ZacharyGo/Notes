﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4003T_TBL.sql
-- 物理名：ED4003T_TBL
-- 論理名：検収完了テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4003T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4003T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KENSHU_KANRYO_NO  CHAR(12) NOT NULL --「検収完了番号」
	,GYOMU_SHITEI_KBN  CHAR(2) NOT NULL --「業務指定区分」
	,KENSHU_KANRYOMOTO_JIGYOSHO_CD  CHAR(6) --「検収完了元事業所コード」
	,SHIHARAISAKI_TORIHIKISAKI_CD  CHAR(9) --「支払先取引先コード」
	,SHHRISK_TRHKSK_SHHRI_JH_CD  CHAR(4) --「支払先取引先支払情報コード」
	,KENSHU_YMD  DATE --「検収年月日」
	,SHIHARAI_YOTEI_YMD  DATE --「支払予定年月日」
	,KENSHU_KANRYO_TANTO_SHAIN_NO  VARCHAR2(8) --「検収完了担当社員番号」
	,RONRI_SAKUJO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「論理削除フラグ」
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
	,CONSTRAINT ED4003T_PK PRIMARY KEY(
	 KENSHU_KANRYO_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4003T_TBL IS '検収完了テーブル'
/

COMMENT ON COLUMN ED4003T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED4003T_TBL.KENSHU_KANRYO_NO IS '検収完了番号'
/
COMMENT ON COLUMN ED4003T_TBL.GYOMU_SHITEI_KBN IS '業務指定区分'
/
COMMENT ON COLUMN ED4003T_TBL.KENSHU_KANRYOMOTO_JIGYOSHO_CD IS '検収完了元事業所コード'
/
COMMENT ON COLUMN ED4003T_TBL.SHIHARAISAKI_TORIHIKISAKI_CD IS '支払先取引先コード'
/
COMMENT ON COLUMN ED4003T_TBL.SHHRISK_TRHKSK_SHHRI_JH_CD IS '支払先取引先支払情報コード'
/
COMMENT ON COLUMN ED4003T_TBL.KENSHU_YMD IS '検収年月日'
/
COMMENT ON COLUMN ED4003T_TBL.SHIHARAI_YOTEI_YMD IS '支払予定年月日'
/
COMMENT ON COLUMN ED4003T_TBL.KENSHU_KANRYO_TANTO_SHAIN_NO IS '検収完了担当社員番号'
/
COMMENT ON COLUMN ED4003T_TBL.RONRI_SAKUJO_FLG IS '論理削除フラグ'
/
COMMENT ON COLUMN ED4003T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4003T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4003T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4003T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4003T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4003T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4003T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4003T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4003T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4003T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4003T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4003T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
