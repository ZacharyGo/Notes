/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3502T_IDX.sql
-- 対象テーブル（物理名）：ED3502T_TBL
-- 対象テーブル（論理名）：請求管理テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3502T_IDX01 ON ED3502T_TBL(
	SEIKYUSHO_NO 
)
/

CREATE INDEX ED3502T_IDX02 ON ED3502T_TBL(
	SHINSEI_SHONIN_NO 
)
/

CREATE INDEX ED3502T_IDX03 ON ED3502T_TBL(
	SEIKYUSHO_HAKKO_YOTEI_YMD 
)
/
