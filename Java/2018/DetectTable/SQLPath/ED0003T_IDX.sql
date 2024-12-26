﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED0003T_IDX.sql
-- 対象テーブル（物理名）：ED0003T_TBL
-- 対象テーブル（論理名）：案件商品テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED0003T_IDX01 ON ED0003T_TBL(
	SHOHIN_SERVICE_SHUBETSU_CD,
	KAISHA_CD 
)
/