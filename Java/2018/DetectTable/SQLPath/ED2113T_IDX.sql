/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED2113T_IDX.sql
-- 対象テーブル（物理名）：ED2113T_TBL
-- 対象テーブル（論理名）：撤去品廃棄明細テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED2113T_IDX01 ON ED2113T_TBL(
	HIMMEI_CD 
)
/

CREATE INDEX ED2113T_IDX02 ON ED2113T_TBL(
	JUCHU_KEIYAKU_NO 
)
/

CREATE INDEX ED2113T_IDX03 ON ED2113T_TBL(
	TAISHOSAKI_CD 
)
/
