/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED1004T_IDX.sql
-- 対象テーブル（物理名）：ED1004T_TBL
-- 対象テーブル（論理名）：工事依頼明細テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED1004T_IDX02 ON ED1004T_TBL(
	KOJI_SHIGOTO_SN,
	KAISHA_CD 
)
/

CREATE INDEX ED1004T_IDX03 ON ED1004T_TBL(
	KJ_KYRYK_KISH_TRHKSK_CD,
	KOJI_TORIHIKISAKI_BUSHO_CD,
	KAISHA_CD 
)
/
