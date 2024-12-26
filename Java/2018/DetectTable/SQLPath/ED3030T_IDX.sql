/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3030T_IDX.sql
-- 対象テーブル（物理名）：ED3030T_TBL
-- 対象テーブル（論理名）：図面持出テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3030T_IDX01 ON ED3030T_TBL(
	ZUMEN_MOCHIDASHISHA_SHAIN_NO 
)
/

CREATE INDEX ED3030T_IDX02 ON ED3030T_TBL(
	JOI_JIGYOSHO_CD,
	ZUMEN_MOCHIDASHI_KBN 
)
/
