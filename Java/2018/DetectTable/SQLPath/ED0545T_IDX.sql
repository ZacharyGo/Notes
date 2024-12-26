/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED0545T_IDX.sql
-- 対象テーブル（物理名）：ED0545T_TBL
-- 対象テーブル（論理名）：受注グループ明細テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED0545T_IDX01 ON ED0545T_TBL(
	SEKISAN_NO 
)
/

CREATE INDEX ED0545T_IDX02 ON ED0545T_TBL(
	JUCHU_KEIYAKU_NO 
)
/

CREATE INDEX ED0545T_IDX03 ON ED0545T_TBL(
	KEIYAKU_ID 
)
/
