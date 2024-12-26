/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3007T_IDX.sql
-- 対象テーブル（物理名）：ED3007T_TBL
-- 対象テーブル（論理名）：保全実施管理テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3007T_IDX01 ON ED3007T_TBL(
	JUCHU_KEIYAKU_NO 
)
/

CREATE INDEX ED3007T_IDX02 ON ED3007T_TBL(
	JOI_JIGYOSHO_CD,
	TEIKI_TENKEN_SHINCHOKU_YM 
)
/

CREATE INDEX ED3007T_IDX03 ON ED3007T_TBL(
	JOI_JIGYOSHO_CD,
	HOZEN_JISSHI_YMD 
)
/
