/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED2128T_IDX.sql
-- 対象テーブル（物理名）：ED2128T_TBL
-- 対象テーブル（論理名）：月次在庫テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED2128T_IDX01 ON ED2128T_TBL(
	CHOZOHIN_SHUKAN_JIGYOSHO_CD,
	EIGYO_KANRI_YM 
)
/

CREATE INDEX ED2128T_IDX02 ON ED2128T_TBL(
	EIGYO_KANRI_YM 
)
/
