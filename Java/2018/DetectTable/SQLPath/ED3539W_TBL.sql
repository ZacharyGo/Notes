﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3539W_TBL.sql
-- 物理名：ED3539W_TBL
-- 論理名：請求予定合算グループワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3539W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3539W_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,ZNKI_BN_SIKY_KNR_MISI_NO  CHAR(14) NOT NULL --「前回分請求管理明細番号」
	,ZNKIBN_GSSNSK_SIKY_KNR_MISI_NO  CHAR(14) NOT NULL --「前回分合算先請求管理明細番号」
	,JKI_BN_SIKY_KNR_MISI_NO  CHAR(14) --「次回分請求管理明細番号」
	,JJKI_BN_SIKY_KNR_MISI_NO  CHAR(14) --「次々回分請求管理明細番号」
	,JKI_BN_GSSNSK_SIKY_KNR_MISI_NO  CHAR(14) --「次回分合算先請求管理明細番号」
	,JJKIBN_GSSNSK_SIKY_KNR_MISI_NO  CHAR(14) --「次々回分合算先請求管理明細番号」
	,JKI_BN_GASSAN_TAISHO_FLG  CHAR(1) --「次回分合算対象フラグ」
	,JJKI_BN_GASSAN_TAISHO_FLG  CHAR(1) --「次々回分合算対象フラグ」
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
	,CONSTRAINT ED3539W_PK PRIMARY KEY(
	 ZNKI_BN_SIKY_KNR_MISI_NO
	,  ZNKIBN_GSSNSK_SIKY_KNR_MISI_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3539W_TBL IS '請求予定合算グループワーク'
/

COMMENT ON COLUMN ED3539W_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3539W_TBL.ZNKI_BN_SIKY_KNR_MISI_NO IS '前回分請求管理明細番号'
/
COMMENT ON COLUMN ED3539W_TBL.ZNKIBN_GSSNSK_SIKY_KNR_MISI_NO IS '前回分合算先請求管理明細番号'
/
COMMENT ON COLUMN ED3539W_TBL.JKI_BN_SIKY_KNR_MISI_NO IS '次回分請求管理明細番号'
/
COMMENT ON COLUMN ED3539W_TBL.JJKI_BN_SIKY_KNR_MISI_NO IS '次々回分請求管理明細番号'
/
COMMENT ON COLUMN ED3539W_TBL.JKI_BN_GSSNSK_SIKY_KNR_MISI_NO IS '次回分合算先請求管理明細番号'
/
COMMENT ON COLUMN ED3539W_TBL.JJKIBN_GSSNSK_SIKY_KNR_MISI_NO IS '次々回分合算先請求管理明細番号'
/
COMMENT ON COLUMN ED3539W_TBL.JKI_BN_GASSAN_TAISHO_FLG IS '次回分合算対象フラグ'
/
COMMENT ON COLUMN ED3539W_TBL.JJKI_BN_GASSAN_TAISHO_FLG IS '次々回分合算対象フラグ'
/
COMMENT ON COLUMN ED3539W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3539W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3539W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3539W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3539W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3539W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3539W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3539W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3539W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3539W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3539W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3539W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
