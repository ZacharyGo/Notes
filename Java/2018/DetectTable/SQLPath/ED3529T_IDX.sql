﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3529T_IDX.sql
-- 対象テーブル（物理名）：ED3529T_TBL
-- 対象テーブル（論理名）：請求予定再作成テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3529T_IDX01 ON ED3529T_TBL(
	SEIKYU_YOTEI_SAI_SAKUSEI_ID,
	KANREN_JUCHU_KEIYAKU_NO,
	KAISHA_CD 
)
/
