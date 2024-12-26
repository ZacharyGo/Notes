﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3706T_IDX.sql
-- 対象テーブル（物理名）：ED3706T_TBL
-- 対象テーブル（論理名）：督促状テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3706T_IDX01 ON ED3706T_TBL(
	TAIRYU_SAIKEN_ID 
)
/