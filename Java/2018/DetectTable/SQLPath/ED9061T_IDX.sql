/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED9061T_IDX.sql
-- 対象テーブル（物理名）：ED9061T_TBL
-- 対象テーブル（論理名）：申請承認テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED9061T_IDX01 ON ED9061T_TBL(
	SHINSEISHA_SHAIN_NO,
	SHINSEISHA_JIGYOSHO_CD 
)
/

CREATE INDEX ED9061T_IDX02 ON ED9061T_TBL(
	SHINSEI_DT 
)
/

CREATE INDEX ED9061T_IDX03 ON ED9061T_TBL(
	SHINSEI_SHONIN_ID 
)
/
