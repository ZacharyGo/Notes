/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED1538T_IDX.sql
-- 対象テーブル（物理名）：ED1538T_TBL
-- 対象テーブル（論理名）：受発注明細テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED1538T_IDX01 ON ED1538T_TBL(
	CHUMON_NO,
	CHUMON_DEMPYO_MEISAI_SN 
)
/

CREATE INDEX ED1538T_IDX02 ON ED1538T_TBL(
	EDI_CHUMON_NO,
	EDI_CHUMON_MEISAI_NO 
)
/

CREATE INDEX ED1538T_IDX03 ON ED1538T_TBL(
	JUCHU_KEIYAKU_NO,
	JUCHU_KEIYAKU_MEISAI_SN 
)
/

CREATE INDEX ED1538T_IDX04 ON ED1538T_TBL(
	HIMMEI_CD 
)
/

CREATE INDEX ED1538T_IDX05 ON ED1538T_TBL(
	SHUKKA_YOTEI_YMD 
)
/
