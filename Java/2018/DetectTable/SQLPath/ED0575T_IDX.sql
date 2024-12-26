/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED0575T_IDX.sql
-- 対象テーブル（物理名）：ED0575T_TBL
-- 対象テーブル（論理名）：中断再開料金テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED0575T_IDX01 ON ED0575T_TBL(
	KANREN_JUCHU_KEIYAKU_NO,
	TKYME_JUCHU_KEIYAKU_HENKO_NO 
)
/

CREATE INDEX ED0575T_IDX02 ON ED0575T_TBL(
	KANREN_JUCHU_KEIYAKU_NO,
	JUCHU_KEIYAKU_HENKO_NO 
)
/
