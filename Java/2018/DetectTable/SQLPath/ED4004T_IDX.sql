/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED4004T_IDX.sql
-- 対象テーブル（物理名）：ED4004T_TBL
-- 対象テーブル（論理名）：検収完了明細テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED4004T_IDX01 ON ED4004T_TBL(
	JUCHU_KEIYAKU_NO,
	GM_ITK_SHRI_YTI_SHRI_MISI_SN 
)
/

CREATE INDEX ED4004T_IDX02 ON ED4004T_TBL(
	KOJI_CHUMONSHO_NO 
)
/

CREATE INDEX ED4004T_IDX03 ON ED4004T_TBL(
	HEMPIN_DEMPYO_NO,
	HEMPIN_DEMPYO_MEISAI_SN 
)
/

CREATE INDEX ED4004T_IDX04 ON ED4004T_TBL(
	SHIIRE_DEMPYO_NO 
)
/
