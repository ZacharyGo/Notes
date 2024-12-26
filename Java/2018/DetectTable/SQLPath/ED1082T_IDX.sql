/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED1082T_IDX.sql
-- 対象テーブル（物理名）：ED1082T_TBL
-- 対象テーブル（論理名）：工事完了検査予約テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED1082T_IDX01 ON ED1082T_TBL(
	JUCHU_KEIYAKU_NO,
	KAISHA_CD 
)
/

CREATE INDEX ED1082T_IDX02 ON ED1082T_TBL(
	TAISHOSAKI_CD,
	KAISHA_CD 
)
/
