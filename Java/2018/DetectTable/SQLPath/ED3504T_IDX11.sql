/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3504T_IDX11.sql
-- 対象テーブル（物理名）：ED3504T_TBL
-- 対象テーブル（論理名）：請求書テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3504T_IDX11 ON ED3504T_TBL(
	SEIKYUSHO_HAKKO_JIGYOSHO_CD,
	SEIKYUSHO_INSATSU_YMD
)
/

CREATE INDEX ED3504T_IDX12 ON ED3504T_TBL(
	SEIKYUSAKI_TORIHIKISAKI_CD,
	SEIKYUSHO_HAKKO_YOTEI_YMD
)
/

CREATE INDEX ED3504T_IDX13 ON ED3504T_TBL(
	NYUKIN_JIGYOSHO_CD,
	SEIKYUSHO_STATUS_KBN,
	SEIKYUSHO_HAKKO_HOHO_KBN
)
/
