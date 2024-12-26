/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED0650T_IDX.sql
-- 対象テーブル（物理名）：ED0650T_TBL
-- 対象テーブル（論理名）：工事指示書テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED0650T_IDX01 ON ED0650T_TBL(
	JUCHU_KEIYAKU_NO 
)
/

CREATE INDEX ED0650T_IDX02 ON ED0650T_TBL(
	KEIYAKU_ID 
)
/

CREATE INDEX ED0650T_IDX03 ON ED0650T_TBL(
	KEIBI_SHINDAN_NO 
)
/
