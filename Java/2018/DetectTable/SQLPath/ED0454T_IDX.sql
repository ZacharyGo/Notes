﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED0454T_IDX.sql
-- 対象テーブル（物理名）：ED0454T_TBL
-- 対象テーブル（論理名）：業績ランキング営業組織社員別集計テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED0454T_IDX01 ON ED0454T_TBL(
	SHISHA_EIGYO_SOSHIKI_CD,
	KAISHA_CD 
)
/
