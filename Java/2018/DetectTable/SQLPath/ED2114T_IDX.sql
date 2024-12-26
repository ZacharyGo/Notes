/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED2114T_IDX.sql
-- 対象テーブル（物理名）：ED2114T_TBL
-- 対象テーブル（論理名）：移管テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED2114T_IDX01 ON ED2114T_TBL(
	SHINSEI_SHONIN_NO 
)
/

CREATE INDEX ED2114T_IDX02 ON ED2114T_TBL(
	IKAMMOTO_JIGYOSHO_CD,
	DEMPYO_JOTAI_KBN 
)
/

CREATE INDEX ED2114T_IDX03 ON ED2114T_TBL(
	IKANSAKI_JIGYOSHO_CD,
	DEMPYO_JOTAI_KBN 
)
/
