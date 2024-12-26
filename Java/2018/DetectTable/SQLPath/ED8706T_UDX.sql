/* ---------------------------------------------------------------------- */
-- ユニーク索引作成DDL(ORACLE用)
-- ファイル名：ED8706T_UDX.sql
-- 対象テーブル（物理名）：ED8706T_TBL
-- 対象テーブル（論理名）：買掛金未払金残高テーブル
/* ---------------------------------------------------------------------- */

CREATE UNIQUE INDEX ED8706T_UDX01 ON ED8706T_TBL(
	KANJO_KAMOKU_CD
	,JUCHU_KEIYAKU_NO
	,SHIWAKE_DEMPYO_NO
	,SHIWAKE_DEMPYO_MEISAI_NO
	,JIGYOSHO_CD
	,TORIHIKISAKI_CD
	,TORIHIKISAKI_SHIHARAI_JOHO_CD
	,KEIRI_GYOMU_KBN
	,KEIJO_YMD
	,KAISHA_CD
	,EIGYO_KANRI_YM
)
/
