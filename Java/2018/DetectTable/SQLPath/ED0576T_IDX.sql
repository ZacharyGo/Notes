/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED0576T_IDX.sql
-- 対象テーブル（物理名）：ED0576T_TBL
-- 対象テーブル（論理名）：定型外契約資料テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED0576T_IDX01 ON ED0576T_TBL(
	JUCHU_KEIYAKU_NO,
	JUCHU_KEIYAKU_HENKO_NO 
)
/

CREATE INDEX ED0576T_IDX02 ON ED0576T_TBL(
	KIHON_KYOTSU_KEIYAKU_NO 
)
/

CREATE INDEX ED0576T_IDX03 ON ED0576T_TBL(
	KEIYAKUSHO_NO 
)
/
