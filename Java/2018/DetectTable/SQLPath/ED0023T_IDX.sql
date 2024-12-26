/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED0023T_IDX.sql
-- 対象テーブル（物理名）：ED0023T_TBL
-- 対象テーブル（論理名）：本社支援テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED0023T_IDX01 ON ED0023T_TBL(
	HONSHA_SHIEN_TANTO_SHAIN_NO 
)
/

CREATE INDEX ED0023T_IDX02 ON ED0023T_TBL(
	HONSHA_SHIEN_JIGYOSHO_CD,
	KAISHA_CD 
)
/
