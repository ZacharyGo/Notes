/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED8701T_IDX.sql
-- 対象テーブル（物理名）：ED8701T_TBL
-- 対象テーブル（論理名）：売掛金未収入金残高テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED8701T_IDX01 ON ED8701T_TBL(
	SEIKYUSHO_TEMPLATE_NO,
	FUTAN_BUMON_SOSHIKI_CD,
	KEIYAKUSAKI_TORIHIKISAKI_CD,
	SEIKYU_SHIHARAI_CD,
	KASHIKATA_KANJO_KAMOKU_CD,
	SEIKYUSAKI_TORIHIKISAKI_CD,
	JUCHU_JIGYOSHO_CD,
	EIGYO_KANRI_YM,
	JIGYO_SEGMENT_CD 
)
/
