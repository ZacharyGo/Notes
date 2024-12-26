/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED8707T_IDX.sql
-- 対象テーブル（物理名）：ED8707T_TBL
-- 対象テーブル（論理名）：買掛金未払金計上テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED8707T_IDX01 ON ED8707T_TBL(
	KAISHA_CD,
	SHIWAKE_SHIKIBETSU_CD,
	SHIWAKEMOTO_DEMPYO_NO,
	SHIWAKEMOTO_DEMPYO_NO_BN,
	SHWKMT_DMPY_MISIGY_NO,
	SHWKMT_DMPY_MISIGY_NO_BN 
)
/

CREATE INDEX ED8707T_IDX02 ON ED8707T_TBL(
	KAISHA_CD,
	EIGYO_KANRI_YM,
	SHIWAKE_DEMPYO_NO,
	SHIWAKE_DEMPYO_MEISAI_NO 
)
/

CREATE INDEX ED8707T_IDX03 ON ED8707T_TBL(
	KAISHA_CD,
	AKAKURO_KBN,
	SHIWAKEMOTO_DEMPYO_NO 
)
/
