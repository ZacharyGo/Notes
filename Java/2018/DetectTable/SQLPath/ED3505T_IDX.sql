/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3505T_IDX.sql
-- 対象テーブル（物理名）：ED3505T_TBL
-- 対象テーブル（論理名）：請求書明細テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3505T_IDX01 ON ED3505T_TBL(
	SEIKYU_KANRI_MEISAI_NO 
)
/

CREATE INDEX ED3505T_IDX02 ON ED3505T_TBL(
	TOKUSOKUJO_MEISAI_SEIKYUSHO_NO 
)
/

CREATE INDEX ED3505T_IDX03 ON ED3505T_TBL(
	BNKTS_KISHMT_TIRY_SIKN_ID 
)
/

CREATE INDEX ED3505T_IDX04 ON ED3505T_TBL(
	JUCHU_KEIYAKU_NO 
)
/
