/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED2106T_IDX.sql
-- 対象テーブル（物理名）：ED2106T_TBL
-- 対象テーブル（論理名）：返品テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED2106T_IDX01 ON ED2106T_TBL(
	SHINSEI_SHONIN_NO 
)
/

CREATE INDEX ED2106T_IDX02 ON ED2106T_TBL(
	HEMPIMMOTO_JIGYOSHO_CD,
	DEMPYO_JOTAI_KBN 
)
/

CREATE INDEX ED2106T_IDX03 ON ED2106T_TBL(
	NOHIN_DEMPYO_NO 
)
/
