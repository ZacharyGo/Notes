/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3909T_IDX.sql
-- 対象テーブル（物理名）：ED3909T_TBL
-- 対象テーブル（論理名）：売掛債権月次テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3909T_IDX01 ON ED3909T_TBL(
	SEIKYUSAKI_TORIHIKISAKI_CD,
	TAISHO_YM 
)
/

CREATE INDEX ED3909T_IDX02 ON ED3909T_TBL(
	KAISHA_CD,
	TAISHO_YM,
	JUCHU_KEIYAKU_NO,
	JUCHU_KEIYAKU_HENKO_NO,
	SAIKEN_DATA_SAKUSEIMOTO_KBN 
)
/
