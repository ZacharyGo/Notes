/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED0529T_IDX.sql
-- 対象テーブル（物理名）：ED0529T_TBL
-- 対象テーブル（論理名）：貸出返却テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED0529T_IDX01 ON ED0529T_TBL(
	KASHIDASHI_IRAI_YMD,
	KASHIDASHI_YMD,
	KEIYAKUSHO_HENKYAKU_HOKAN_YMD 
)
/
