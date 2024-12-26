/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED1506T_IDX.sql
-- 対象テーブル（物理名）：ED1506T_TBL
-- 対象テーブル（論理名）：ＥＤＩ出荷テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED1506T_IDX01 ON ED1506T_TBL(
	SHIIRESAKI_TORIHIKISAKI_CD 
)
/

CREATE INDEX ED1506T_IDX02 ON ED1506T_TBL(
	NYUSHUKKA_JOKYO_KBN,
	SAISHIN_FLG 
)
/
