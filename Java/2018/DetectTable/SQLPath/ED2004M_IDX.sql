﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED2004M_IDX.sql
-- 対象テーブル（物理名）：ED2004M_TBL
-- 対象テーブル（論理名）：品名修理情報マスタ
/* ---------------------------------------------------------------------- */

CREATE INDEX ED2004M_IDX01 ON ED2004M_TBL(
	SHINSEI_SHONIN_NO 
)
/