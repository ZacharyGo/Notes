﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED9170W_IDX.sql
-- 対象テーブル（物理名）：ED9170W_TBL
-- 対象テーブル（論理名）：対象先前回送信時ワーク
/* ---------------------------------------------------------------------- */

CREATE INDEX ED9170W_IDX01 ON ED9170W_TBL(
	TORIHIKISAKI_CD,
	TORIHIKISAKI_BUSHO_CD 
)
/