﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3723W_IDX.sql
-- 対象テーブル（物理名）：ED3723W_TBL
-- 対象テーブル（論理名）：売掛債権日次請求管理明細ワーク
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3723W_IDX01 ON ED3723W_TBL(
	KAISHA_CD,
	FURIWAKE_NO 
)
/
