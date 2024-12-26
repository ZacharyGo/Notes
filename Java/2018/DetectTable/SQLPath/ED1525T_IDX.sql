/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED1525T_IDX.sql
-- 対象テーブル（物理名）：ED1525T_TBL
-- 対象テーブル（論理名）：仕入テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED1525T_IDX01 ON ED1525T_TBL(
	SHIIRE_KEIJO_YMD 
)
/

CREATE INDEX ED1525T_IDX02 ON ED1525T_TBL(
	SHIIRESAKI_TORIHIKISAKI_CD,
	SHIRSK_TRHKSK_BSH_CD 
)
/
