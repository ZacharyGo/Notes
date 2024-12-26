﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1008T_TBL.sql
-- 物理名：ED1008T_TBL
-- 論理名：工事仕事テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1008T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1008T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KOJI_SHIGOTO_SN  CHAR(14) NOT NULL --「工事仕事連番」
	,KOJI_KYORYOKU_KAISHA_KBN  CHAR(1) NOT NULL --「工事協力会社区分」
	,KJ_KYRYK_KISH_TRHKSK_CD  CHAR(9) --「工事協力会社取引先コード」
	,KOJI_TORIHIKISAKI_BUSHO_CD  CHAR(4) --「工事取引先部署コード」
	,KOJI_NINZU  NUMBER(9,0) DEFAULT '0' NOT NULL --「工事人数」
	,KYRYK_KISH_WRATZM_FLG  CHAR(1) DEFAULT '0' NOT NULL --「協力会社割当済フラグ」
	,JUCHU_KEIYAKU_NO  CHAR(15) --「受注契約番号」
	,JUYO_BUKKEN_TAISHO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「重要物件対象フラグ」
	,KOJI_KAISHI_DT  TIMESTAMP --「工事開始日時」
	,KOJI_SHURYO_DT  TIMESTAMP --「工事終了日時」
	,KOJI_CANCEL_CHUMONARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「工事キャンセル注文有フラグ」
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
	,CONSTRAINT ED1008T_PK PRIMARY KEY(
	 KOJI_SHIGOTO_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1008T_TBL IS '工事仕事テーブル'
/

COMMENT ON COLUMN ED1008T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1008T_TBL.KOJI_SHIGOTO_SN IS '工事仕事連番'
/
COMMENT ON COLUMN ED1008T_TBL.KOJI_KYORYOKU_KAISHA_KBN IS '工事協力会社区分'
/
COMMENT ON COLUMN ED1008T_TBL.KJ_KYRYK_KISH_TRHKSK_CD IS '工事協力会社取引先コード'
/
COMMENT ON COLUMN ED1008T_TBL.KOJI_TORIHIKISAKI_BUSHO_CD IS '工事取引先部署コード'
/
COMMENT ON COLUMN ED1008T_TBL.KOJI_NINZU IS '工事人数'
/
COMMENT ON COLUMN ED1008T_TBL.KYRYK_KISH_WRATZM_FLG IS '協力会社割当済フラグ'
/
COMMENT ON COLUMN ED1008T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED1008T_TBL.JUYO_BUKKEN_TAISHO_FLG IS '重要物件対象フラグ'
/
COMMENT ON COLUMN ED1008T_TBL.KOJI_KAISHI_DT IS '工事開始日時'
/
COMMENT ON COLUMN ED1008T_TBL.KOJI_SHURYO_DT IS '工事終了日時'
/
COMMENT ON COLUMN ED1008T_TBL.KOJI_CANCEL_CHUMONARI_FLG IS '工事キャンセル注文有フラグ'
/
COMMENT ON COLUMN ED1008T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED1008T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED1008T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1008T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1008T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1008T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1008T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1008T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1008T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1008T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1008T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1008T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1008T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1008T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
