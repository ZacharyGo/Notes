/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED9037M_IDX.sql
-- 対象テーブル（物理名）：ED9037M_TBL
-- 対象テーブル（論理名）：企業マスタ
/* ---------------------------------------------------------------------- */

CREATE INDEX ED9037M_IDX01 ON ED9037M_TBL(
	YUBIN_NO 
)
/

CREATE INDEX ED9037M_IDX02 ON ED9037M_TBL(
	JUSHO_CD 
)
/

CREATE INDEX ED9037M_IDX03 ON ED9037M_TBL(
	GYOSHU_CD 
)
/

CREATE INDEX ED9037M_IDX04 ON ED9037M_TBL(
	HOJIN_NO 
)
/
