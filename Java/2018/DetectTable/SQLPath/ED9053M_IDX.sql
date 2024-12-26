/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED9053M_IDX.sql
-- 対象テーブル（物理名）：ED9053M_TBL
-- 対象テーブル（論理名）：社外利用者マスタ
/* ---------------------------------------------------------------------- */

CREATE INDEX ED9053M_IDX01 ON ED9053M_TBL(
	TORIHIKISAKI_CD,
	TORIHIKISAKI_BUSHO_CD 
)
/

CREATE INDEX ED9053M_IDX02 ON ED9053M_TBL(
	KAISHA_CD 
)
/
