﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1081T_TBL.sql
-- 物理名：ED1081T_TBL
-- 論理名：工事協力会社タスク通知テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1081T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1081T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KJ_KYRYK_KISH_TASK_TSCH_NO  CHAR(10) NOT NULL --「工事協力会社タスク通知番号」
	,KJ_KYRYK_KISH_TRHKSK_CD  CHAR(9) NOT NULL --「工事協力会社取引先コード」
	,KOJI_TORIHIKISAKI_BUSHO_CD  CHAR(4) NOT NULL --「工事取引先部署コード」
	,KANRISHA_TAISHO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「管理者対象フラグ」
	,HANCHO_TAISHO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「班長対象フラグ」
	,KOJI_JUJISHA_JIGYONUSHI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「工事従事者事業主フラグ」
	,KOJI_JUJISHA_SAGYOIN_FLG  CHAR(1) DEFAULT '0' NOT NULL --「工事従事者作業員フラグ」
	,TAISHOSAKI_CD  CHAR(9) --「対象先コード」
	,SENISAKI_GAMEN_ID  CHAR(15) --「遷移先画面ＩＤ」
	,KIDO_PARAMETER  CLOB --「起動パラメータ」
	,TASK_TSUCHI_NAIYO  VARCHAR2(50) --「タスク通知内容」
	,TASK_TSUCHI_HOSOKU_JOHO_NAIYO  VARCHAR2(200) --「タスク通知補足情報内容」
	,TASK_HASSHIN_DT  TIMESTAMP --「タスク発信日時」
	,TASK_TSUCHI_STATUS_KBN  CHAR(2) NOT NULL --「タスク通知ステータス区分」
	,TASK_KANRYO_DT  TIMESTAMP --「タスク完了日時」
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
	,CONSTRAINT ED1081T_PK PRIMARY KEY(
	 KJ_KYRYK_KISH_TASK_TSCH_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1081T_TBL IS '工事協力会社タスク通知テーブル'
/

COMMENT ON COLUMN ED1081T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1081T_TBL.KJ_KYRYK_KISH_TASK_TSCH_NO IS '工事協力会社タスク通知番号'
/
COMMENT ON COLUMN ED1081T_TBL.KJ_KYRYK_KISH_TRHKSK_CD IS '工事協力会社取引先コード'
/
COMMENT ON COLUMN ED1081T_TBL.KOJI_TORIHIKISAKI_BUSHO_CD IS '工事取引先部署コード'
/
COMMENT ON COLUMN ED1081T_TBL.KANRISHA_TAISHO_FLG IS '管理者対象フラグ'
/
COMMENT ON COLUMN ED1081T_TBL.HANCHO_TAISHO_FLG IS '班長対象フラグ'
/
COMMENT ON COLUMN ED1081T_TBL.KOJI_JUJISHA_JIGYONUSHI_FLG IS '工事従事者事業主フラグ'
/
COMMENT ON COLUMN ED1081T_TBL.KOJI_JUJISHA_SAGYOIN_FLG IS '工事従事者作業員フラグ'
/
COMMENT ON COLUMN ED1081T_TBL.TAISHOSAKI_CD IS '対象先コード'
/
COMMENT ON COLUMN ED1081T_TBL.SENISAKI_GAMEN_ID IS '遷移先画面ＩＤ'
/
COMMENT ON COLUMN ED1081T_TBL.KIDO_PARAMETER IS '起動パラメータ'
/
COMMENT ON COLUMN ED1081T_TBL.TASK_TSUCHI_NAIYO IS 'タスク通知内容'
/
COMMENT ON COLUMN ED1081T_TBL.TASK_TSUCHI_HOSOKU_JOHO_NAIYO IS 'タスク通知補足情報内容'
/
COMMENT ON COLUMN ED1081T_TBL.TASK_HASSHIN_DT IS 'タスク発信日時'
/
COMMENT ON COLUMN ED1081T_TBL.TASK_TSUCHI_STATUS_KBN IS 'タスク通知ステータス区分'
/
COMMENT ON COLUMN ED1081T_TBL.TASK_KANRYO_DT IS 'タスク完了日時'
/
COMMENT ON COLUMN ED1081T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED1081T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED1081T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1081T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1081T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1081T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1081T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1081T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1081T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1081T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1081T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1081T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1081T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1081T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
