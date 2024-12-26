/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED1076T_IDX.sql
-- 対象テーブル（物理名）：ED1076T_TBL
-- 対象テーブル（論理名）：工事注文書明細テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED1076T_IDX01 ON ED1076T_TBL(
	JUCHU_KEIYAKU_NO,
	KAISHA_CD 
)
/

CREATE INDEX ED1076T_IDX02 ON ED1076T_TBL(
	KOJI_CHUMON_SHIHARAI_YM,
	KAISHA_CD 
)
/
