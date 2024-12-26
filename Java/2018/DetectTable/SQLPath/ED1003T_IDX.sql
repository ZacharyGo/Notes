/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED1003T_IDX.sql
-- 対象テーブル（物理名）：ED1003T_TBL
-- 対象テーブル（論理名）：工事依頼テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED1003T_IDX01 ON ED1003T_TBL(
	KEIYAKUSAKI_TORIHIKISAKI_CD,
	KAISHA_CD 
)
/

CREATE INDEX ED1003T_IDX02 ON ED1003T_TBL(
	TAISHOSAKI_CD,
	KAISHA_CD 
)
/

CREATE INDEX ED1003T_IDX03 ON ED1003T_TBL(
	KOJI_KAISHI_YMD,
	KAISHA_CD 
)
/

CREATE INDEX ED1003T_IDX05 ON ED1003T_TBL(
	KOJI_TANTO_JIGYOSHO_CD,
	KAISHA_CD 
)
/
