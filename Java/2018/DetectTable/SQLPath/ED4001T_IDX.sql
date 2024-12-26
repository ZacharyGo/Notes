/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED4001T_IDX.sql
-- 対象テーブル（物理名）：ED4001T_TBL
-- 対象テーブル（論理名）：支払申請テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED4001T_IDX01 ON ED4001T_TBL(
	SHINSEI_SHONIN_NO 
)
/

CREATE INDEX ED4001T_IDX02 ON ED4001T_TBL(
	SHIHARAISAKI_TORIHIKISAKI_CD 
)
/
