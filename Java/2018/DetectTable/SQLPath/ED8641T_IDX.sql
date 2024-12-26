/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED8641T_IDX.sql
-- 対象テーブル（物理名）：ED8641T_TBL
-- 対象テーブル（論理名）：資産明細テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED8641T_IDX01 ON ED8641T_TBL(
	KAISHA_CD,
	KEIJO_YMD 
)
/

CREATE INDEX ED8641T_IDX02 ON ED8641T_TBL(
	KAISHA_CD,
	JUCHU_KEIYAKU_NO 
)
/
