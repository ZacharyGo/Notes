/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED1507T_IDX.sql
-- 対象テーブル（物理名）：ED1507T_TBL
-- 対象テーブル（論理名）：ＥＤＩ入荷受付テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED1507T_IDX01 ON ED1507T_TBL(
	SHIIRESAKI_TORIHIKISAKI_CD 
)
/

CREATE INDEX ED1507T_IDX02 ON ED1507T_TBL(
	NYUKA_KAKUNIN_KBN,
	SAISHIN_FLG 
)
/
