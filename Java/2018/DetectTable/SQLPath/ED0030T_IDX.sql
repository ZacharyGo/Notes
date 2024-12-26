/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED0030T_IDX.sql
-- 対象テーブル（物理名）：ED0030T_TBL
-- 対象テーブル（論理名）：紹介案件受注テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED0030T_IDX01 ON ED0030T_TBL(
	SHOKAI_ANKEN_NO,
	SHOKAISHA_TESURYO_NYUKIN_YMD,
	KAISHA_CD 
)
/

CREATE INDEX ED0030T_IDX02 ON ED0030T_TBL(
	SHIHARAI_KANRYOZUMI_FLG,
	KAISHA_CD 
)
/
