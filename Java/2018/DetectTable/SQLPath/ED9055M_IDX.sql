﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED9055M_IDX.sql
-- 対象テーブル（物理名）：ED9055M_TBL
-- 対象テーブル（論理名）：ロールメニュー紐付マスタ
/* ---------------------------------------------------------------------- */

CREATE INDEX ED9055M_IDX01 ON ED9055M_TBL(
	MENU_ID 
)
/