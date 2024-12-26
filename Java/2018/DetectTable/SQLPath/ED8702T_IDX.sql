/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED8702T_IDX.sql
-- 対象テーブル（物理名）：ED8702T_TBL
-- 対象テーブル（論理名）：仮受金残高営業テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED8702T_IDX01 ON ED8702T_TBL(
	SEIKYUSHO_TEMPLATE_NO,
	FURIKOMI_IRAININ_KN_NM,
	NYUKIN_YMD,
	NYUKIN_JIGYOSHO_CD,
	SEIKYU_KANRI_JIGYOSHO_CD,
	SEIKYUSAKI_TORIHIKISAKI_CD,
	JISHA_KOZA_CD,
	KAISHA_CD,
	EIGYO_KANRI_YM 
)
/
