/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED2125T_IDX.sql
-- 対象テーブル（物理名）：ED2125T_TBL
-- 対象テーブル（論理名）：棚卸テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED2125T_IDX01 ON ED2125T_TBL(
	SHINSEI_SHONIN_NO 
)
/

CREATE INDEX ED2125T_IDX02 ON ED2125T_TBL(
	EIGYO_KANRI_YM,
	CHOZOHIN_SHUKAN_JIGYOSHO_CD,
	CHOZOHIN_SHUKAN_SOKO_CD 
)
/
