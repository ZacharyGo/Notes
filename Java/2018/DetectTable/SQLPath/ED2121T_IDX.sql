/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED2121T_IDX.sql
-- 対象テーブル（物理名）：ED2121T_TBL
-- 対象テーブル（論理名）：棚差反映テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED2121T_IDX01 ON ED2121T_TBL(
	SHINSEI_SHONIN_NO 
)
/

CREATE INDEX ED2121T_IDX02 ON ED2121T_TBL(
	TANASA_HANEI_JIGYOSHO_CD,
	DEMPYO_JOTAI_KBN 
)
/

CREATE INDEX ED2121T_IDX03 ON ED2121T_TBL(
	TANASA_HANEI_JIGYOSHO_CD,
	EIGYO_KANRI_YM 
)
/
