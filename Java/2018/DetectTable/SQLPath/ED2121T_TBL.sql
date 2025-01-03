﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED2121T_TBL.sql
-- 物理名：ED2121T_TBL
-- 論理名：棚差反映テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED2121T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED2121T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,TANASA_HANEI_DEMPYO_NO  CHAR(17) NOT NULL --「棚差反映伝票番号」
	,DEMPYO_JOTAI_KBN  CHAR(1) NOT NULL --「伝票状態区分」
	,DEMPYO_KIHYO_JIGYOSHO_CD  CHAR(6) NOT NULL --「伝票起票事業所コード」
	,SHIZAI_SOBI_KBN  CHAR(1) NOT NULL --「資材装備区分」
	,DEMPYO_GROUP_NO  CHAR(4) --「伝票グループ番号」
	,TANASA_SHINSEI_YMD  DATE --「棚差申請年月日」
	,TANASA_HANEI_RINGI_NO  VARCHAR2(32) --「棚差反映稟議番号」
	,TANASA_HANEI_JIGYOSHO_CD  CHAR(6) --「棚差反映事業所コード」
	,TANASA_HANEI_SOKO_CD  CHAR(6) --「棚差反映倉庫コード」
	,EIGYO_KANRI_YM  CHAR(6) --「営業管理年月」
	,TANASA_HANEI_YMD  DATE --「棚差反映年月日」
	,TNS_HNEI_DMP_GTJ_SR_TIS_FLG  CHAR(1) DEFAULT '0' NOT NULL --「棚差反映伝票月次処理対象フラグ」
	,DEMPYO_KAKUTEIZUMI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「伝票確定済フラグ」
	,SHINSEI_SHONIN_NO  CHAR(14) --「申請承認番号」
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
	,CONSTRAINT ED2121T_PK PRIMARY KEY(
	 TANASA_HANEI_DEMPYO_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED2121T_TBL IS '棚差反映テーブル'
/

COMMENT ON COLUMN ED2121T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED2121T_TBL.TANASA_HANEI_DEMPYO_NO IS '棚差反映伝票番号'
/
COMMENT ON COLUMN ED2121T_TBL.DEMPYO_JOTAI_KBN IS '伝票状態区分'
/
COMMENT ON COLUMN ED2121T_TBL.DEMPYO_KIHYO_JIGYOSHO_CD IS '伝票起票事業所コード'
/
COMMENT ON COLUMN ED2121T_TBL.SHIZAI_SOBI_KBN IS '資材装備区分'
/
COMMENT ON COLUMN ED2121T_TBL.DEMPYO_GROUP_NO IS '伝票グループ番号'
/
COMMENT ON COLUMN ED2121T_TBL.TANASA_SHINSEI_YMD IS '棚差申請年月日'
/
COMMENT ON COLUMN ED2121T_TBL.TANASA_HANEI_RINGI_NO IS '棚差反映稟議番号'
/
COMMENT ON COLUMN ED2121T_TBL.TANASA_HANEI_JIGYOSHO_CD IS '棚差反映事業所コード'
/
COMMENT ON COLUMN ED2121T_TBL.TANASA_HANEI_SOKO_CD IS '棚差反映倉庫コード'
/
COMMENT ON COLUMN ED2121T_TBL.EIGYO_KANRI_YM IS '営業管理年月'
/
COMMENT ON COLUMN ED2121T_TBL.TANASA_HANEI_YMD IS '棚差反映年月日'
/
COMMENT ON COLUMN ED2121T_TBL.TNS_HNEI_DMP_GTJ_SR_TIS_FLG IS '棚差反映伝票月次処理対象フラグ'
/
COMMENT ON COLUMN ED2121T_TBL.DEMPYO_KAKUTEIZUMI_FLG IS '伝票確定済フラグ'
/
COMMENT ON COLUMN ED2121T_TBL.SHINSEI_SHONIN_NO IS '申請承認番号'
/
COMMENT ON COLUMN ED2121T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED2121T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED2121T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED2121T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED2121T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED2121T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED2121T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED2121T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED2121T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED2121T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED2121T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED2121T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
