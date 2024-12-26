/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED1527T_IDX.sql
-- 対象テーブル（物理名）：ED1527T_TBL
-- 対象テーブル（論理名）：仕入明細テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED1527T_IDX01 ON ED1527T_TBL(
	SHOHIZEIGYO_SHIKIBETSU_FLG 
)
/

CREATE INDEX ED1527T_IDX02 ON ED1527T_TBL(
	CHOTATSU_SHIHARAI_SHINSEI_NO 
)
/

CREATE INDEX ED1527T_IDX03 ON ED1527T_TBL(
	JUHATCHU_NO,
	JUHATCHU_MEISAI_SN 
)
/
