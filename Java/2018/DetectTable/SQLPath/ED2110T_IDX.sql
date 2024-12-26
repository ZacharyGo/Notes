/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED2110T_IDX.sql
-- 対象テーブル（物理名）：ED2110T_TBL
-- 対象テーブル（論理名）：貯蔵品廃棄テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED2110T_IDX01 ON ED2110T_TBL(
	SHINSEI_SHONIN_NO 
)
/

CREATE INDEX ED2110T_IDX02 ON ED2110T_TBL(
	HAIKIMOTO_JIGYOSHO_CD,
	DEMPYO_JOTAI_KBN 
)
/
