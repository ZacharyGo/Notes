/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED0004T_IDX.sql
-- 対象テーブル（物理名）：ED0004T_TBL
-- 対象テーブル（論理名）：案件対象先テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED0004T_IDX01 ON ED0004T_TBL(
	TAISHOSAKI_CD,
	KAISHA_CD 
)
/

CREATE INDEX ED0004T_IDX02 ON ED0004T_TBL(
	JISSHI_JIGYOSHO_CD,
	KAISHA_CD 
)
/

CREATE INDEX ED0004T_IDX03 ON ED0004T_TBL(
	KARITAISHOSAKI_JUSHO_CD,
	KAISHA_CD 
)
/
