/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED0543T_IDX.sql
-- 対象テーブル（物理名）：ED0543T_TBL
-- 対象テーブル（論理名）：受注業務委託先テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED0543T_IDX01 ON ED0543T_TBL(
	GYM_ITKSK_TRHKSK_CD,
	GYM_ITKSK_TRHKSK_BSH_CD 
)
/

CREATE INDEX ED0543T_IDX02 ON ED0543T_TBL(
	DAIHYO_JUCHU_KEIYAKU_NO,
	DAIHYO_JUCHU_KEIYAKU_HENKO_NO,
	KAISHA_CD,
	DAIHYO_GYM_ITKSK_SN,
	DAIHYO_GYM_ITK_HATCHU_SN 
)
/
