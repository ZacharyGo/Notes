﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED8706T_IDX.sql
-- 対象テーブル（物理名）：ED8706T_TBL
-- 対象テーブル（論理名）：買掛金未払金残高テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED8706T_IDX01 ON ED8706T_TBL(
	KAISHA_CD,
	EIGYO_KANRI_YM,
	SHIWAKE_SHIKIBETSU_CD,
	SHIWAKEMOTO_DEMPYO_NO,
	SHIWAKEMOTO_DEMPYO_NO_BN,
	SHWKMT_DMPY_MISIGY_NO,
	SHWKMT_DMPY_MISIGY_NO_BN 
)
/

CREATE INDEX ED8706T_IDX02 ON ED8706T_TBL(
	KAISHA_CD,
	EIGYO_KANRI_YM,
	SHIWAKE_DEMPYO_NO,
	SHIWAKE_DEMPYO_MEISAI_NO 
)
/

CREATE INDEX ED8706T_IDX03 ON ED8706T_TBL(
	KAISHA_CD,
	EIGYO_KANRI_YM,
	AKAKURO_KBN,
	SHIWAKEMOTO_DEMPYO_NO 
)
/
