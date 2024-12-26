/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED2510T_IDX.sql
-- 対象テーブル（物理名）：ED2510T_TBL
-- 対象テーブル（論理名）：出動実績テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED2510T_IDX01 ON ED2510T_TBL(
	SHUTSUDO_SHURYO_YMD 
)
/

CREATE INDEX ED2510T_IDX02 ON ED2510T_TBL(
	KEIYAKU_JUCHU_TANTO_SHAIN_NO 
)
/

CREATE INDEX ED2510T_IDX03 ON ED2510T_TBL(
	SHINSEI_SHONIN_NO 
)
/
