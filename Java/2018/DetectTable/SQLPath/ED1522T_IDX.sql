﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED1522T_IDX.sql
-- 対象テーブル（物理名）：ED1522T_TBL
-- 対象テーブル（論理名）：ピッキング管理テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED1522T_IDX01 ON ED1522T_TBL(
	PICKING_YMD 
)
/
