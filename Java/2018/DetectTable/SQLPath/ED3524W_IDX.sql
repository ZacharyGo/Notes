﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3524W_IDX.sql
-- 対象テーブル（物理名）：ED3524W_TBL
-- 対象テーブル（論理名）：次回分請求書事業セグメント明細ワーク
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3524W_IDX01 ON ED3524W_TBL(
	KAISHA_CD,
	FURIWAKE_NO 
)
/
