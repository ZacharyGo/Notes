﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED0149M_IDX.sql
-- 対象テーブル（物理名）：ED0149M_TBL
-- 対象テーブル（論理名）：営業員マスタ
/* ---------------------------------------------------------------------- */

CREATE INDEX ED0149M_IDX01 ON ED0149M_TBL(
	EIGYO_SOSHIKI_SHAIN_NO 
)
/

CREATE INDEX ED0149M_IDX02 ON ED0149M_TBL(
	EIGYO_SOSHIKI_CD 
)
/
