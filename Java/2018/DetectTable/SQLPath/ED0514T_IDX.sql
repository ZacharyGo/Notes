/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED0514T_IDX.sql
-- 対象テーブル（物理名）：ED0514T_TBL
-- 対象テーブル（論理名）：契約付帯保険テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED0514T_IDX01 ON ED0514T_TBL(
	SHOHIN_SERVICE_CD 
)
/

CREATE INDEX ED0514T_IDX02 ON ED0514T_TBL(
	HOKEN_SHOKEN_NO 
)
/

CREATE INDEX ED0514T_IDX03 ON ED0514T_TBL(
	JUCHU_JIGYOSHO_CD 
)
/

CREATE INDEX ED0514T_IDX04 ON ED0514T_TBL(
	JUCHU_TANTO_SHAIN_NO 
)
/

CREATE INDEX ED0514T_IDX05 ON ED0514T_TBL(
	ANKEN_NO 
)
/

CREATE INDEX ED0514T_IDX06 ON ED0514T_TBL(
	JUCHU_KEIYAKU_NO 
)
/
