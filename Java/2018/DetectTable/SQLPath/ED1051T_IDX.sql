/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED1051T_IDX.sql
-- 対象テーブル（物理名）：ED1051T_TBL
-- 対象テーブル（論理名）：工事工程任意テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED1051T_IDX01 ON ED1051T_TBL(
	KOJI_KAISHI_DT,
	KAISHA_CD 
)
/

CREATE INDEX ED1051T_IDX02 ON ED1051T_TBL(
	KOJI_SHURYO_DT,
	KAISHA_CD 
)
/
