﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1007T_TBL.sql
-- 物理名：ED1007T_TBL
-- 論理名：工事依頼資料テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1007T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1007T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,KOJI_IRAI_SHIRYO_SN  CHAR(14) NOT NULL --「工事依頼資料連番」
	,KOJI_SHIRYO_BUNRUI_KBN  CHAR(1) NOT NULL --「工事資料分類区分」
	,KOJI_IRAI_FILE_SHIKIBETSU_KEY  VARCHAR2(255) --「工事依頼ファイル識別キー」
	,KOJI_IRAI_FILE_NM  VARCHAR2(60) --「工事依頼ファイル名称」
	,KOJI_SHIRYO_TOROKU_TAISHO_KBN  CHAR(1) NOT NULL --「工事資料登録対象区分」
	,KJ_SHRY_TRK_TNT_SHIN_NO  VARCHAR2(8) --「工事資料登録担当社員番号」
	,KJSR_TRTT_KRGS_TORIHIKISAKI_CD  CHAR(9) --「工事資料登録担当協力会社取引先コード」
	,KJ_SHRY_TRK_TNT_JJSH_NO  CHAR(8) --「工事資料登録担当従事者番号」
	,KOJI_SHIRYO_TOROKU_DT  TIMESTAMP --「工事資料登録日時」
	,KJ_IRI_SR_KRK_KIS_ETRN_TIS_FLG  CHAR(1) DEFAULT '0' NOT NULL --「工事依頼資料協力会社閲覧対象フラグ」
	,KOJI_CHUMONSHO_NO  CHAR(13) --「工事注文書番号」
	,KOJI_CHUMONSHO_KAIHAN_NO  CHAR(1) --「工事注文書改版番号」
	,KOJI_SHIRYO_TOROKU_SHORI_KBN  CHAR(1) NOT NULL --「工事資料登録処理区分」
	,SHGI_TRKSH_SHGI_RYSH_NO  CHAR(8) --「社外登録者社外利用者番号」
	,SHGI_KSHNSH_SHGI_RYSH_NO  CHAR(8) --「社外更新者社外利用者番号」
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
	,CONSTRAINT ED1007T_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  KOJI_IRAI_SHIRYO_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1007T_TBL IS '工事依頼資料テーブル'
/

COMMENT ON COLUMN ED1007T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1007T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED1007T_TBL.KOJI_IRAI_SHIRYO_SN IS '工事依頼資料連番'
/
COMMENT ON COLUMN ED1007T_TBL.KOJI_SHIRYO_BUNRUI_KBN IS '工事資料分類区分'
/
COMMENT ON COLUMN ED1007T_TBL.KOJI_IRAI_FILE_SHIKIBETSU_KEY IS '工事依頼ファイル識別キー'
/
COMMENT ON COLUMN ED1007T_TBL.KOJI_IRAI_FILE_NM IS '工事依頼ファイル名称'
/
COMMENT ON COLUMN ED1007T_TBL.KOJI_SHIRYO_TOROKU_TAISHO_KBN IS '工事資料登録対象区分'
/
COMMENT ON COLUMN ED1007T_TBL.KJ_SHRY_TRK_TNT_SHIN_NO IS '工事資料登録担当社員番号'
/
COMMENT ON COLUMN ED1007T_TBL.KJSR_TRTT_KRGS_TORIHIKISAKI_CD IS '工事資料登録担当協力会社取引先コード'
/
COMMENT ON COLUMN ED1007T_TBL.KJ_SHRY_TRK_TNT_JJSH_NO IS '工事資料登録担当従事者番号'
/
COMMENT ON COLUMN ED1007T_TBL.KOJI_SHIRYO_TOROKU_DT IS '工事資料登録日時'
/
COMMENT ON COLUMN ED1007T_TBL.KJ_IRI_SR_KRK_KIS_ETRN_TIS_FLG IS '工事依頼資料協力会社閲覧対象フラグ'
/
COMMENT ON COLUMN ED1007T_TBL.KOJI_CHUMONSHO_NO IS '工事注文書番号'
/
COMMENT ON COLUMN ED1007T_TBL.KOJI_CHUMONSHO_KAIHAN_NO IS '工事注文書改版番号'
/
COMMENT ON COLUMN ED1007T_TBL.KOJI_SHIRYO_TOROKU_SHORI_KBN IS '工事資料登録処理区分'
/
COMMENT ON COLUMN ED1007T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED1007T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED1007T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1007T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1007T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1007T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1007T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1007T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1007T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1007T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1007T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1007T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1007T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1007T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
