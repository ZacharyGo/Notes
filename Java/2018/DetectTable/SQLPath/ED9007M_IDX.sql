/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED9007M_IDX.sql
-- 対象テーブル（物理名）：ED9007M_TBL
-- 対象テーブル（論理名）：対象先マスタ
/* ---------------------------------------------------------------------- */

CREATE INDEX ED9007M_IDX01 ON ED9007M_TBL(
	TORIHIKISAKI_CD,
	TORIHIKISAKI_BUSHO_CD 
)
/

CREATE INDEX ED9007M_IDX02 ON ED9007M_TBL(
	DENWA_NO 
)
/

CREATE INDEX ED9007M_IDX03 ON ED9007M_TBL(
	TAISHOSAKI_NM 
)
/

CREATE INDEX ED9007M_IDX04 ON ED9007M_TBL(
	TAISHOSAKI_KN_NM 
)
/

CREATE INDEX ED9007M_IDX05 ON ED9007M_TBL(
	JUSHO_CD,
	JUSHO_BANCHI 
)
/
