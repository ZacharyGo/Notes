﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED1008T_IDX.sql
-- 対象テーブル（物理名）：ED1008T_TBL
-- 対象テーブル（論理名）：工事仕事テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED1008T_IDX01 ON ED1008T_TBL(
	JUCHU_KEIYAKU_NO,
	KAISHA_CD 
)
/
