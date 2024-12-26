/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3601T_IDX.sql
-- 対象テーブル（物理名）：ED3601T_TBL
-- 対象テーブル（論理名）：入出金テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3601T_IDX01 ON ED3601T_TBL(
	NYUSHUKKIN_YMD 
)
/

CREATE INDEX ED3601T_IDX02 ON ED3601T_TBL(
	KAISHA_CD,
	NYUSHUKKIN_HOHO_KBN,
	NYUSHUKKIN_STATUS_KBN 
)
/

CREATE INDEX ED3601T_IDX03 ON ED3601T_TBL(
	JISHA_KOZA_CD,
	NYUSHUKKIN_HOHO_KBN 
)
/
