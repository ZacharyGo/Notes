/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3801T_IDX.sql
-- 対象テーブル（物理名）：ED3801T_TBL
-- 対象テーブル（論理名）：売上収入管理テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3801T_IDX01 ON ED3801T_TBL(
	JUCHU_KEIYAKU_NO,
	JUCHU_KEIYAKU_HENKO_NO,
	URIAGE_KEIJO_YM 
)
/

CREATE INDEX ED3801T_IDX02 ON ED3801T_TBL(
	URIAGE_KEIJO_YM 
)
/
