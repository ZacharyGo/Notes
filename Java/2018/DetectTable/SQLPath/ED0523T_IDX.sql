﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED0523T_IDX.sql
-- 対象テーブル（物理名）：ED0523T_TBL
-- 対象テーブル（論理名）：受注実施事業所テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED0523T_IDX01 ON ED0523T_TBL(
	JISSHI_JIGYOSHO_CD 
)
/