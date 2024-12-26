/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED9106M_IDX.sql
-- 対象テーブル（物理名）：ED9106M_TBL
-- 対象テーブル（論理名）：共通区分値マスタ
/* ---------------------------------------------------------------------- */

CREATE INDEX ED9106M_IDX01 ON ED9106M_TBL(
	KYOTSU_KBN_CD,
	KYOTSU_KUBUNCHI_CD,
	KYOTSU_KUBUNCHI_HOJO_KEY_1,
	KYOTSU_KUBUNCHI_HOJO_KEY_2,
	KYOTSU_KUBUNCHI_HOJO_KEY_3 
)
/
