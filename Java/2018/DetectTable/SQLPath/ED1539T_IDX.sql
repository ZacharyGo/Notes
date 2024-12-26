/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED1539T_IDX.sql
-- 対象テーブル（物理名）：ED1539T_TBL
-- 対象テーブル（論理名）：受発注明細引当テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED1539T_IDX01 ON ED1539T_TBL(
	URIAGE_DEMPYO_NO,
	URIAGE_DEMPYO_MEISAI_SN 
)
/

CREATE INDEX ED1539T_IDX02 ON ED1539T_TBL(
	PICKING_KANRI_NO 
)
/

CREATE INDEX ED1539T_IDX03 ON ED1539T_TBL(
	SHUKKA_YOTEI_YMD 
)
/
