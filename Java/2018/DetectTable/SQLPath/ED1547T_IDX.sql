/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED1547T_IDX.sql
-- 対象テーブル（物理名）：ED1547T_TBL
-- 対象テーブル（論理名）：調達支払依頼申請テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED1547T_IDX01 ON ED1547T_TBL(
	SEIKYU_YMD 
)
/

CREATE INDEX ED1547T_IDX02 ON ED1547T_TBL(
	EIGYO_KANRI_YM 
)
/

CREATE INDEX ED1547T_IDX03 ON ED1547T_TBL(
	SHIIRESAKI_TORIHIKISAKI_CD 
)
/
