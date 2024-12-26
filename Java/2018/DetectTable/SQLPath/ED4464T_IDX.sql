/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED4464T_IDX.sql
-- 対象テーブル（物理名）：ED4464T_TBL
-- 対象テーブル（論理名）：受注申請明細テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED4464T_IDX01 ON ED4464T_TBL(
	JUCHU_SHINSEI_NO,
	KEIYAKU_ID,
	KAISHA_CD 
)
/

CREATE INDEX ED4464T_IDX02 ON ED4464T_TBL(
	KEIYAKU_ID 
)
/

CREATE INDEX ED4464T_IDX03 ON ED4464T_TBL(
	JCH_SHNSI_STATUS_KBN 
)
/
