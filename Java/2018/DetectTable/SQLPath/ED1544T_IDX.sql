/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED1544T_IDX.sql
-- 対象テーブル（物理名）：ED1544T_TBL
-- 対象テーブル（論理名）：調達売上明細テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED1544T_IDX01 ON ED1544T_TBL(
	JUCHU_KEIYAKU_NO,
	JUCHU_KEIYAKU_MEISAI_SN 
)
/

CREATE INDEX ED1544T_IDX02 ON ED1544T_TBL(
	JUHATCHU_NO,
	JUHATCHU_MEISAI_SN 
)
/

CREATE INDEX ED1544T_IDX03 ON ED1544T_TBL(
	SHIIRE_DEMPYO_NO,
	SHIIRE_DEMPYO_MEISAI_SN,
	SAISHIN_FLG,
	KAISHA_CD 
)
/

CREATE INDEX ED1544T_IDX04 ON ED1544T_TBL(
	NOHIN_DEMPYO_NO 
)
/
