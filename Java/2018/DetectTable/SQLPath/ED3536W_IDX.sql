/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3536W_IDX.sql
-- 対象テーブル（物理名）：ED3536W_TBL
-- 対象テーブル（論理名）：請求予定コピーワーク
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3536W_IDX01 ON ED3536W_TBL(
	KAISHA_CD,
	SEIKYUSAKI_TORIHIKISAKI_CD,
	SEIKYUSAKIBETSU_TEMPLATE_SN 
)
/

CREATE INDEX ED3536W_IDX02 ON ED3536W_TBL(
	KAISHA_CD,
	JUCHU_KEIYAKU_NO 
)
/
