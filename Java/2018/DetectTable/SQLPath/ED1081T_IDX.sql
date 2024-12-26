/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED1081T_IDX.sql
-- 対象テーブル（物理名）：ED1081T_TBL
-- 対象テーブル（論理名）：工事協力会社タスク通知テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED1081T_IDX01 ON ED1081T_TBL(
	KJ_KYRYK_KISH_TRHKSK_CD,
	KOJI_TORIHIKISAKI_BUSHO_CD,
	TASK_TSUCHI_STATUS_KBN,
	KAISHA_CD 
)
/

CREATE INDEX ED1081T_IDX02 ON ED1081T_TBL(
	TASK_TSUCHI_STATUS_KBN,
	KAISHA_CD 
)
/
