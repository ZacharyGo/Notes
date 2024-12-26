/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED2108T_IDX.sql
-- 対象テーブル（物理名）：ED2108T_TBL
-- 対象テーブル（論理名）：再評価テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED2108T_IDX01 ON ED2108T_TBL(
	SHINSEI_SHONIN_NO 
)
/

CREATE INDEX ED2108T_IDX02 ON ED2108T_TBL(
	SAIHYOKAHIN_NYUKO_JIGYOSHO_CD,
	DEMPYO_JOTAI_KBN 
)
/
