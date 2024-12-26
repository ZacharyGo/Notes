/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3608T_IDX.sql
-- 対象テーブル（物理名）：ED3608T_TBL
-- 対象テーブル（論理名）：入金消込結果テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3608T_IDX01 ON ED3608T_TBL(
	SEIKYUSHO_NO,
	SEIKYUSHO_MEISAI_SN 
)
/

CREATE INDEX ED3608T_IDX02 ON ED3608T_TBL(
	KESHIKOMI_NO 
)
/
