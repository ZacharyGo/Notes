/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED0301M_IDX.sql
-- 対象テーブル（物理名）：ED0301M_TBL
-- 対象テーブル（論理名）：予定分類マスタ
/* ---------------------------------------------------------------------- */

CREATE INDEX ED0301M_IDX01 ON ED0301M_TBL(
	EIG_KTD_JTTI_CS_SKI_TIS_FLG,
	EIG_KTD_JTTI_CS_SGI_SNI_KBN,
	EIG_KTD_JTTI_CS_CATEGORY_KBN 
)
/
