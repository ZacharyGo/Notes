/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED2201W_IDX.sql
-- 対象テーブル（物理名）：ED2201W_TBL
-- 対象テーブル（論理名）：月次入出庫ワーク
/* ---------------------------------------------------------------------- */

CREATE INDEX ED2201W_IDX01 ON ED2201W_TBL(
	HIMMEI_CD,
	CHOZOHIN_SHUKAN_SOKO_CD,
	CHOZOHIN_SHUKAN_JIGYOSHO_CD,
	SHIZAI_SOBI_KBN,
	KAISHA_CD 
)
/
