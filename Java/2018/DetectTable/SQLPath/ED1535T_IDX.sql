﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED1535T_IDX.sql
-- 対象テーブル（物理名）：ED1535T_TBL
-- 対象テーブル（論理名）：出荷伝票明細テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED1535T_IDX01 ON ED1535T_TBL(
	JUCHU_KEIYAKU_NO 
)
/
