﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3538W_TBL.sql
-- 物理名：ED3538W_TBL
-- 論理名：請求予定コピー明細ワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3538W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3538W_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SEIKYUSAKI_TORIHIKISAKI_CD  CHAR(9) NOT NULL --「請求先取引先コード」
	,SEIKYUSAKIBETSU_TEMPLATE_SN  CHAR(5) NOT NULL --「請求先別テンプレート連番」
	,SEIKYUSHO_HAKKO_YOTEI_YM  CHAR(6) NOT NULL --「請求書発行予定年月」
	,SEIKYUSHO_GROUP_NO  CHAR(3) NOT NULL --「請求書グループ番号」
	,ZEIKOMI_SEIKYU_AMT  NUMBER(13,0) DEFAULT '0' --「税込請求金額」
	,SEIKYU_KANRI_STATUS_KBN  CHAR(2) --「請求管理ステータス区分」
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
	,CONSTRAINT ED3538W_PK PRIMARY KEY(
	 SEIKYUSAKI_TORIHIKISAKI_CD
	,  SEIKYUSAKIBETSU_TEMPLATE_SN
	,  SEIKYUSHO_HAKKO_YOTEI_YM
	,  SEIKYUSHO_GROUP_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3538W_TBL IS '請求予定コピー明細ワーク'
/

COMMENT ON COLUMN ED3538W_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3538W_TBL.SEIKYUSAKI_TORIHIKISAKI_CD IS '請求先取引先コード'
/
COMMENT ON COLUMN ED3538W_TBL.SEIKYUSAKIBETSU_TEMPLATE_SN IS '請求先別テンプレート連番'
/
COMMENT ON COLUMN ED3538W_TBL.SEIKYUSHO_HAKKO_YOTEI_YM IS '請求書発行予定年月'
/
COMMENT ON COLUMN ED3538W_TBL.SEIKYUSHO_GROUP_NO IS '請求書グループ番号'
/
COMMENT ON COLUMN ED3538W_TBL.ZEIKOMI_SEIKYU_AMT IS '税込請求金額'
/
COMMENT ON COLUMN ED3538W_TBL.SEIKYU_KANRI_STATUS_KBN IS '請求管理ステータス区分'
/
COMMENT ON COLUMN ED3538W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3538W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3538W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3538W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3538W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3538W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3538W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3538W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3538W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3538W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3538W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3538W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/