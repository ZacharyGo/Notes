﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED9701T_IDX.sql
-- 対象テーブル（物理名）：ED9701T_TBL
-- 対象テーブル（論理名）：リクエストバッチ実行管理テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED9701T_IDX01 ON ED9701T_TBL(
	KIDO_JOKYO_KBN 
)
/

CREATE INDEX ED9701T_IDX02 ON ED9701T_TBL(
	JOB_EXECUTION_ID 
)
/