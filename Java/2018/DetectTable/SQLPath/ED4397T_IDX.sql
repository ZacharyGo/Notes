/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED4397T_IDX.sql
-- 対象テーブル（物理名）：ED4397T_TBL
-- 対象テーブル（論理名）：積算添付ファイル管理テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED4397T_IDX01 ON ED4397T_TBL(
	JUCHU_KEIYAKU_NO,
	TEMPU_FILE_HYOJI_GAMEN_ID 
)
/

CREATE INDEX ED4397T_IDX02 ON ED4397T_TBL(
	KEIYAKU_ID 
)
/

CREATE INDEX ED4397T_IDX03 ON ED4397T_TBL(
	KEIBI_SHINDAN_NO 
)
/
