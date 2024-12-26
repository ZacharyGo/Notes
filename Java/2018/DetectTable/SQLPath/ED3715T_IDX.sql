/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3715T_IDX.sql
-- 対象テーブル（物理名）：ED3715T_TBL
-- 対象テーブル（論理名）：売掛債権日次テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3715T_IDX01 ON ED3715T_TBL(
	KAISHA_CD,
	SEIKYUSHO_NO 
)
/

CREATE INDEX ED3715T_IDX02 ON ED3715T_TBL(
	KAISHA_CD,
	SAIKEN_DATA_SAKUSEIMOTO_KBN,
	YY_KKN_KSNG_TSH_NYKN_YTI_YMD 
)
/
