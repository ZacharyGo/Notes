/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED4002T_IDX.sql
-- 対象テーブル（物理名）：ED4002T_TBL
-- 対象テーブル（論理名）：支払申請明細テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED4002T_IDX01 ON ED4002T_TBL(
	JUCHU_KEIYAKU_NO,
	GM_ITK_SHRI_YTI_SHRI_MISI_SN 
)
/

CREATE INDEX ED4002T_IDX02 ON ED4002T_TBL(
	KOJI_CHUMONSHO_NO 
)
/

CREATE INDEX ED4002T_IDX03 ON ED4002T_TBL(
	JISSHI_JIGYOSHO_CD 
)
/
