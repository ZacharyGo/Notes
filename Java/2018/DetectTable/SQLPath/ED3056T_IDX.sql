/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3056T_IDX.sql
-- 対象テーブル（物理名）：ED3056T_TBL
-- 対象テーブル（論理名）：作業予定表タスクテーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3056T_IDX01 ON ED3056T_TBL(
	SAGYO_YOTEIHYO_SOSHIKI_ID 
)
/

CREATE INDEX ED3056T_IDX02 ON ED3056T_TBL(
	JUCHU_KEIYAKU_NO 
)
/
