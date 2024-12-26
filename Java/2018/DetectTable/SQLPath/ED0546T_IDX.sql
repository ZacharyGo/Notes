﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED0546T_IDX.sql
-- 対象テーブル（物理名）：ED0546T_TBL
-- 対象テーブル（論理名）：契約料金テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED0546T_IDX01 ON ED0546T_TBL(
	KANREN_JUCHU_KEIYAKU_NO,
	JUCHU_KEIYAKU_HENKO_NO 
)
/