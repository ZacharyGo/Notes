﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3542W_IDX.sql
-- 対象テーブル（物理名）：ED3542W_TBL
-- 対象テーブル（論理名）：売掛金振替仕訳計上ワーク
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3542W_IDX01 ON ED3542W_TBL(
	KAISHA_CD,
	FURIWAKE_NO 
)
/
