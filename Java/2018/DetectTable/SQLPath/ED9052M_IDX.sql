﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED9052M_IDX.sql
-- 対象テーブル（物理名）：ED9052M_TBL
-- 対象テーブル（論理名）：社員ロール紐付マスタ
/* ---------------------------------------------------------------------- */

CREATE INDEX ED9052M_IDX01 ON ED9052M_TBL(
	SOSHIKI_CD 
)
/
