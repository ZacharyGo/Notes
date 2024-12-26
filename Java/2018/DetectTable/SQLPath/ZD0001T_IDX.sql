/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ZD0001T_IDX.sql
-- 対象テーブル（物理名）：ZD0001T_TBL
-- 対象テーブル（論理名）：帳票管理情報テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ZD0001T_IDX01 ON ZD0001T_TBL(
	CHOHYO_FILE_NM 
)
/

CREATE INDEX ZD0001T_IDX02 ON ZD0001T_TBL(
	CHOHYO_KAKUNO_SAKI_ID,
	KAISHA_CD,
	SYSTEM_ID 
)
/
