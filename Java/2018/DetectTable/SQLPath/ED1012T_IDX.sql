/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED1012T_IDX.sql
-- 対象テーブル（物理名）：ED1012T_TBL
-- 対象テーブル（論理名）：工事注文書テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED1012T_IDX03 ON ED1012T_TBL(
	KJ_KYRYK_KISH_TRHKSK_CD,
	KOJI_TORIHIKISAKI_BUSHO_CD,
	KAISHA_CD 
)
/

CREATE INDEX ED1012T_IDX04 ON ED1012T_TBL(
	KOJI_SHIGOTO_SN,
	KAISHA_CD 
)
/

CREATE INDEX ED1012T_IDX05 ON ED1012T_TBL(
	KOJI_TANTO_JIGYOSHO_CD,
	KAISHA_CD 
)
/

CREATE INDEX ED1012T_IDX06 ON ED1012T_TBL(
	KEIYAKUSAKI_TORIHIKISAKI_CD,
	KAISHA_CD 
)
/
