﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1083T_TBL.sql
-- 物理名：ED1083T_TBL
-- 論理名：工事完了検査状況管理テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1083T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1083T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KOJI_KANRYO_KENSA_YOYAKU_NO  CHAR(16) NOT NULL --「工事完了検査予約番号」
	,KOJI_KANRYO_KENSA_YOYAKU_SN  NUMBER(1,0) DEFAULT '0' NOT NULL --「工事完了検査予約連番」
	,ZNKI_YYK_KJ_KNRY_KNS_NO  CHAR(16) --「前回予約工事完了検査番号」
	,ZNKI_YYK_KJ_KNRY_KNS_NO_BN  NUMBER(1,0) DEFAULT '0' NOT NULL --「前回予約工事完了検査番号枝番」
	,KOJI_KANRYO_KENSA_NO  CHAR(16) --「工事完了検査番号」
	,KOJI_KANRYO_KENSA_RIREKI_NO  CHAR(2) --「工事完了検査履歴番号」
	,ITAKU_KENSA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「委託検査フラグ」
	,KANRYO_KENSA_KAISHI_DT  TIMESTAMP --「完了検査開始日時」
	,KANRYO_KENSA_JISSHI_SHURYO_DT  TIMESTAMP --「完了検査実施終了日時」
	,KJ_KNRY_KNS_SGY_YTI_TASK_ID  CHAR(14) --「工事完了検査作業予定タスクＩＤ」
	,KANRYO_KENSA_STATUS_KBN  CHAR(1) DEFAULT '0' NOT NULL --「完了検査ステータス区分」
	,SIKJ_SIKNS_SHJ_JKY_KBN  CHAR(1) DEFAULT '0' NOT NULL --「再工事再検査指示状況区分」
	,KNR_KNS_HKK_SSI_TRK_STATUS_KBN  CHAR(1) DEFAULT '0' NOT NULL --「完了検査報告詳細登録ステータス区分」
	,GTSJ_KNRY_KNS_HKK_JTI_KBN  CHAR(1) DEFAULT '0' NOT NULL --「月次完了検査報告状態区分」
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
	,CONSTRAINT ED1083T_PK PRIMARY KEY(
	 KOJI_KANRYO_KENSA_YOYAKU_NO
	,  KOJI_KANRYO_KENSA_YOYAKU_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1083T_TBL IS '工事完了検査状況管理テーブル'
/

COMMENT ON COLUMN ED1083T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1083T_TBL.KOJI_KANRYO_KENSA_YOYAKU_NO IS '工事完了検査予約番号'
/
COMMENT ON COLUMN ED1083T_TBL.KOJI_KANRYO_KENSA_YOYAKU_SN IS '工事完了検査予約連番'
/
COMMENT ON COLUMN ED1083T_TBL.ZNKI_YYK_KJ_KNRY_KNS_NO IS '前回予約工事完了検査番号'
/
COMMENT ON COLUMN ED1083T_TBL.ZNKI_YYK_KJ_KNRY_KNS_NO_BN IS '前回予約工事完了検査番号枝番'
/
COMMENT ON COLUMN ED1083T_TBL.KOJI_KANRYO_KENSA_NO IS '工事完了検査番号'
/
COMMENT ON COLUMN ED1083T_TBL.KOJI_KANRYO_KENSA_RIREKI_NO IS '工事完了検査履歴番号'
/
COMMENT ON COLUMN ED1083T_TBL.ITAKU_KENSA_FLG IS '委託検査フラグ'
/
COMMENT ON COLUMN ED1083T_TBL.KANRYO_KENSA_KAISHI_DT IS '完了検査開始日時'
/
COMMENT ON COLUMN ED1083T_TBL.KANRYO_KENSA_JISSHI_SHURYO_DT IS '完了検査実施終了日時'
/
COMMENT ON COLUMN ED1083T_TBL.KJ_KNRY_KNS_SGY_YTI_TASK_ID IS '工事完了検査作業予定タスクＩＤ'
/
COMMENT ON COLUMN ED1083T_TBL.KANRYO_KENSA_STATUS_KBN IS '完了検査ステータス区分'
/
COMMENT ON COLUMN ED1083T_TBL.SIKJ_SIKNS_SHJ_JKY_KBN IS '再工事再検査指示状況区分'
/
COMMENT ON COLUMN ED1083T_TBL.KNR_KNS_HKK_SSI_TRK_STATUS_KBN IS '完了検査報告詳細登録ステータス区分'
/
COMMENT ON COLUMN ED1083T_TBL.GTSJ_KNRY_KNS_HKK_JTI_KBN IS '月次完了検査報告状態区分'
/
COMMENT ON COLUMN ED1083T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED1083T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED1083T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1083T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1083T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1083T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1083T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1083T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1083T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1083T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1083T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1083T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1083T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1083T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
