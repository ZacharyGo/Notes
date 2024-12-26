/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED2127T_IDX.sql
-- 対象テーブル（物理名）：ED2127T_TBL
-- 対象テーブル（論理名）：入出庫テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED2127T_IDX01 ON ED2127T_TBL(
	HIMMEI_CD,
	CHOZOHIN_SHUKAN_SOKO_CD,
	CHOZOHIN_SHUKAN_JIGYOSHO_CD,
	SHIZAI_SOBI_KBN,
	KAISHA_CD 
)
/

CREATE INDEX ED2127T_IDX02 ON ED2127T_TBL(
	CHOZOHIN_SHUKAN_JIGYOSHO_CD 
)
/

CREATE INDEX ED2127T_IDX03 ON ED2127T_TBL(
	JUCHU_KEIYAKU_NO 
)
/
