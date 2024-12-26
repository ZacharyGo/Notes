/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED8703T_IDX.sql
-- 対象テーブル（物理名）：ED8703T_TBL
-- 対象テーブル（論理名）：仮受金残高請求代行テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED8703T_IDX01 ON ED8703T_TBL(
	JUCHU_KEIYAKU_NO,
	NYUKIN_YMD,
	SEIKYUSAKI_TORIHIKISAKI_CD,
	SIKY_DIK_IRIMT_TRHKSK_CD,
	SEIKYU_DAIKO_IRAISHO_NO,
	SEIKYU_KANRI_JIGYOSHO_CD,
	KAISHA_CD,
	EIGYO_KANRI_YM 
)
/
