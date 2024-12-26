/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3523W_IDX.sql
-- 対象テーブル（物理名）：ED3523W_TBL
-- 対象テーブル（論理名）：次回分請求管理明細ワーク
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3523W_IDX01 ON ED3523W_TBL(
	KAISHA_CD,
	FURIWAKE_NO 
)
/

CREATE INDEX ED3523W_IDX02 ON ED3523W_TBL(
	SEIKYUSAKI_TORIHIKISAKI_CD,
	SEIKYUSAKIBETSU_TEMPLATE_SN,
	SEIKYUSHO_HAKKO_YOTEI_YM,
	ZNKI_BN_SIKY_KNR_MISI_NO 
)
/
