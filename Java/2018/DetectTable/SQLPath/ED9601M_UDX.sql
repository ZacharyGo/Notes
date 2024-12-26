﻿/* ---------------------------------------------------------------------- */
-- ユニーク索引作成DDL(ORACLE用)
-- ファイル名：ED9601M_UDX.sql
-- 対象テーブル（物理名）：ED9601M_TBL
-- 対象テーブル（論理名）：マニュアル管理マスタ
/* ---------------------------------------------------------------------- */

CREATE UNIQUE INDEX ED9601M_UDX01 ON ED9601M_TBL(
	MANUAL_ID
)
/