﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED0616T_IDX.sql
-- 対象テーブル（物理名）：ED0616T_TBL
-- 対象テーブル（論理名）：受注ＭＭＫテーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED0616T_IDX01 ON ED0616T_TBL(
	SIGY_SCH_OYJCH_KIYK_NO,
	JUCHU_KEIYAKU_HENKO_NO 
)
/
