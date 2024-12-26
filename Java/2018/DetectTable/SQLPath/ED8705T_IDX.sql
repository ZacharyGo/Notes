/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED8705T_IDX.sql
-- 対象テーブル（物理名）：ED8705T_TBL
-- 対象テーブル（論理名）：建仮未成台帳テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED8705T_IDX01 ON ED8705T_TBL(
	JUCHU_KEIYAKU_NO,
	SHOHIN_SERVICE_BUNRUI_CD,
	KEIYAKUSAKI_TORIHIKISAKI_CD,
	HIMMEI_CD,
	TAISHOSAKI_CD,
	JIGYOSHO_CD,
	KAISHA_CD,
	EIGYO_KANRI_YM,
	KANJO_KAMOKU_CD 
)
/
