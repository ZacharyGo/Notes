/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3732W_IDX.sql
-- 対象テーブル（物理名）：ED3732W_TBL
-- 対象テーブル（論理名）：売上請求管理ワーク
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3732W_IDX01 ON ED3732W_TBL(
	SEIKYU_KANRI_MEISAI_NO 
)
/

CREATE INDEX ED3732W_IDX02 ON ED3732W_TBL(
	KAISHA_CD,
	JUCHU_KEIYAKU_NO,
	JUCHU_KEIYAKU_HENKO_NO,
	SEIKYU_SHIHARAI_CD,
	JIGYO_SEGMENT_CD,
	URIAGE_SEIKYU_TORIKESHI_FLG 
)
/

CREATE INDEX ED3732W_IDX03 ON ED3732W_TBL(
	KAISHA_CD,
	SEIKYUSHO_NO,
	SEIKYUSHO_MEISAI_SN,
	GASSAN_UCHIWAKE_MEISAI_SN 
)
/
