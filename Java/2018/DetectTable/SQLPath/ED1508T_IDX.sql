﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED1508T_IDX.sql
-- 対象テーブル（物理名）：ED1508T_TBL
-- 対象テーブル（論理名）：ＥＤＩ入荷受付明細テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED1508T_IDX01 ON ED1508T_TBL(
	NYUKA_TORIKOMI_FLG,
	SAISHIN_FLG 
)
/
