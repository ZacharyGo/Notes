/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED9116T_IDX.sql
-- 対象テーブル（物理名）：ED9116T_TBL
-- 対象テーブル（論理名）：業務依頼テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED9116T_IDX01 ON ED9116T_TBL(
	GYM_IRI_SHBTS_BNRI_KBN 
)
/

CREATE INDEX ED9116T_IDX02 ON ED9116T_TBL(
	GYM_IRI_SHBTS_DIBNRI_CD 
)
/

CREATE INDEX ED9116T_IDX03 ON ED9116T_TBL(
	GYM_IRI_SHBTS_CHBNRI_CD 
)
/

CREATE INDEX ED9116T_IDX04 ON ED9116T_TBL(
	GYM_IRI_SHBTS_SHBNRI_CD 
)
/

CREATE INDEX ED9116T_IDX05 ON ED9116T_TBL(
	IRAI_DT 
)
/

CREATE INDEX ED9116T_IDX06 ON ED9116T_TBL(
	IRIMT_JIGYOSHO_CD 
)
/
