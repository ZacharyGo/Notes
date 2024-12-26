﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3806T_IDX.sql
-- 対象テーブル（物理名）：ED3806T_TBL
-- 対象テーブル（論理名）：売上受注テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3806T_IDX01 ON ED3806T_TBL(
	SHOHIN_SERVICE_CD 
)
/