﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3610T_IDX.sql
-- 対象テーブル（物理名）：ED3610T_TBL
-- 対象テーブル（論理名）：自動消込入金テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3610T_IDX01 ON ED3610T_TBL(
	NYUSHUKKIN_NO 
)
/