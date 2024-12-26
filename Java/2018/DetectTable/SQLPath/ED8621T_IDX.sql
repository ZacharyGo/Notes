/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED8621T_IDX.sql
-- 対象テーブル（物理名）：ED8621T_TBL
-- 対象テーブル（論理名）：仕訳明細テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED8621T_IDX01 ON ED8621T_TBL(
	KAISHA_CD,
	KEIJO_YMD 
)
/

CREATE INDEX ED8621T_IDX02 ON ED8621T_TBL(
	KAISHA_CD,
	KAIKEI_SHORI_YMD 
)
/

CREATE INDEX ED8621T_IDX03 ON ED8621T_TBL(
	SHIWAKEMOTO_DEMPYO_NO,
	SHWKMT_DMPY_MISIGY_NO 
)
/
