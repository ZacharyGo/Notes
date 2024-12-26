/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED8622W_IDX.sql
-- 対象テーブル（物理名）：ED8622W_TBL
-- 対象テーブル（論理名）：仕訳明細作成ワーク
/* ---------------------------------------------------------------------- */

CREATE INDEX ED8622W_IDX02 ON ED8622W_TBL(
	KAIKEI_SHORI_YMD 
)
/

CREATE INDEX ED8622W_IDX03 ON ED8622W_TBL(
	SHIWAKEMOTO_DEMPYO_NO,
	SHWKMT_DMPY_MISIGY_NO 
)
/
