/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED2507T_IDX.sql
-- 対象テーブル（物理名）：ED2507T_TBL
-- 対象テーブル（論理名）：業務委託支払予定テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED2507T_IDX01 ON ED2507T_TBL(
	GYM_ITKSK_TRHKSK_CD,
	GYM_ITKSK_TRHKSK_SHHRI_JH_CD,
	SHIHARAI_SHOGO_JIGYOSHO_CD,
	GYM_ITKH_SNSHTS_KNRY_YMD 
)
/

CREATE INDEX ED2507T_IDX02 ON ED2507T_TBL(
	JURYO_SEIKYUSHO_NO 
)
/
