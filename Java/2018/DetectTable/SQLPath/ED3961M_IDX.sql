﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3961M_IDX.sql
-- 対象テーブル（物理名）：ED3961M_TBL
-- 対象テーブル（論理名）：仮想口座マスタ
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3961M_IDX01 ON ED3961M_TBL(
	KAISHA_CD,
	JISHA_KOZA_CD,
	SEIKYUSAKI_TORIHIKISAKI_CD 
)
/
