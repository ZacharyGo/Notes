/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED4312T_IDX.sql
-- 対象テーブル（物理名）：ED4312T_TBL
-- 対象テーブル（論理名）：受注申請テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED4312T_IDX01 ON ED4312T_TBL(
	ANKEN_NO 
)
/

CREATE INDEX ED4312T_IDX02 ON ED4312T_TBL(
	JUCHU_SHINSEI_DT 
)
/

CREATE INDEX ED4312T_IDX03 ON ED4312T_TBL(
	SHINSEISHA_SHAIN_NO 
)
/

CREATE INDEX ED4312T_IDX04 ON ED4312T_TBL(
	TANTO_SHAIN_NO 
)
/

CREATE INDEX ED4312T_IDX05 ON ED4312T_TBL(
	JUCHU_SHINSEI_JIGYOSHO_CD 
)
/

CREATE INDEX ED4312T_IDX06 ON ED4312T_TBL(
	JUCHU_SHONIN_DT 
)
/
