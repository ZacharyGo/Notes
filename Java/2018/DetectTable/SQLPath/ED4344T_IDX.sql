/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED4344T_IDX.sql
-- 対象テーブル（物理名）：ED4344T_TBL
-- 対象テーブル（論理名）：見積書テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED4344T_IDX01 ON ED4344T_TBL(
	MITSUMORISHO_GROUP_ID,
	MITSUMORISHO_GROUP_MEISAI_NO,
	KAISHA_CD 
)
/

CREATE INDEX ED4344T_IDX02 ON ED4344T_TBL(
	MITSUMORISHO_GROUP_ID,
	KAISHA_CD 
)
/

CREATE INDEX ED4344T_IDX03 ON ED4344T_TBL(
	MITSUMORI_YMD 
)
/
