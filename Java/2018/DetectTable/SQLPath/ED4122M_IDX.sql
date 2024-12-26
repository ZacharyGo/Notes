/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED4122M_IDX.sql
-- 対象テーブル（物理名）：ED4122M_TBL
-- 対象テーブル（論理名）：商品サービスマスタ
/* ---------------------------------------------------------------------- */

CREATE INDEX ED4122M_IDX01 ON ED4122M_TBL(
	SHOHIN_SERVICE_SHUBETSU_CD 
)
/

CREATE INDEX ED4122M_IDX02 ON ED4122M_TBL(
	JIGYO_SEGMENT_CD 
)
/
