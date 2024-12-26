/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED9099T_IDX.sql
-- 対象テーブル（物理名）：ED9099T_TBL
-- 対象テーブル（論理名）：タスク通知受信テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED9099T_IDX01 ON ED9099T_TBL(
	TASK_JUSHINSHA_SHAIN_NO 
)
/

CREATE INDEX ED9099T_IDX02 ON ED9099T_TBL(
	TASK_JUSHINSHA_JIGYOSHO_CD 
)
/
