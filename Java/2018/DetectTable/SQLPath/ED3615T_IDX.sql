/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3615T_IDX.sql
-- 対象テーブル（物理名）：ED3615T_TBL
-- 対象テーブル（論理名）：領収証テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3615T_IDX01 ON ED3615T_TBL(
	SHUKIN_NO 
)
/

CREATE INDEX ED3615T_IDX02 ON ED3615T_TBL(
	RYOSHUSHO_NO 
)
/

CREATE INDEX ED3615T_IDX03 ON ED3615T_TBL(
	RYOSHUSHO_SHINSEI_JIGYOSHO_CD 
)
/
