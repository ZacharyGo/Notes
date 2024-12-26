/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3809W_IDX.sql
-- 対象テーブル（物理名）：ED3809W_TBL
-- 対象テーブル（論理名）：売上実績ワーク
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3809W_IDX01 ON ED3809W_TBL(
	KAISHA_CD,
	JUCHU_KEIYAKU_NO,
	SEIKYU_SHIHARAI_CD,
	URIAGE_NO,
	JIGYO_SEGMENT_CD 
)
/

CREATE INDEX ED3809W_IDX02 ON ED3809W_TBL(
	KAISHA_CD,
	URIAGE_NO,
	URIAGE_SEIKYU_TORIKESHI_FLG 
)
/
