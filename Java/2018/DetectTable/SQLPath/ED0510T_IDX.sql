﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED0510T_IDX.sql
-- 対象テーブル（物理名）：ED0510T_TBL
-- 対象テーブル（論理名）：契約実施事業所テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED0510T_IDX01 ON ED0510T_TBL(
	JISSHI_JIGYOSHO_CD 
)
/
