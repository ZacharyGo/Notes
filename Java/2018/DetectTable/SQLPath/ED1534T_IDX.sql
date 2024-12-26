/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED1534T_IDX.sql
-- 対象テーブル（物理名）：ED1534T_TBL
-- 対象テーブル（論理名）：出荷伝票テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED1534T_IDX01 ON ED1534T_TBL(
	JIGYOSHO_CD 
)
/

CREATE INDEX ED1534T_IDX02 ON ED1534T_TBL(
	JUCHU_KEIYAKU_NO 
)
/

CREATE INDEX ED1534T_IDX03 ON ED1534T_TBL(
	JIGYOSHO_CD,
	SHUKKA_YMD 
)
/
