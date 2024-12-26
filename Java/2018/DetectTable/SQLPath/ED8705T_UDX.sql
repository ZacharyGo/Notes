/* ---------------------------------------------------------------------- */
-- ユニーク索引作成DDL(ORACLE用)
-- ファイル名：ED8705T_UDX.sql
-- 対象テーブル（物理名）：ED8705T_TBL
-- 対象テーブル（論理名）：建仮未成台帳テーブル
/* ---------------------------------------------------------------------- */

CREATE UNIQUE INDEX ED8705T_UDX01 ON ED8705T_TBL(
	JUCHU_KEIYAKU_NO
	,SHOHIN_SERVICE_BUNRUI_CD
	,KEIYAKUSAKI_TORIHIKISAKI_CD
	,HIMMEI_CD
	,TAISHOSAKI_CD
	,JIGYOSHO_CD
	,KAISHA_CD
	,EIGYO_KANRI_YM
	,KANJO_KAMOKU_CD
)
/
