﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3603T_IDX.sql
-- 対象テーブル（物理名）：ED3603T_TBL
-- 対象テーブル（論理名）：入出金内訳テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3603T_IDX01 ON ED3603T_TBL(
	RYOSHUSHO_KANRI_NO 
)
/