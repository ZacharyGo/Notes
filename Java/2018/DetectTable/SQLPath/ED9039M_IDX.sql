﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED9039M_IDX.sql
-- 対象テーブル（物理名）：ED9039M_TBL
-- 対象テーブル（論理名）：企業評点マスタ
/* ---------------------------------------------------------------------- */

CREATE INDEX ED9039M_IDX01 ON ED9039M_TBL(
	TDB_HYOTEN 
)
/