﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3808T_IDX.sql
-- 対象テーブル（物理名）：ED3808T_TBL
-- 対象テーブル（論理名）：売上受注配分単価テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3808T_IDX01 ON ED3808T_TBL(
	JUCHU_KEIYAKU_NO,
	JUCHU_KEIYAKU_HENKO_NO 
)
/