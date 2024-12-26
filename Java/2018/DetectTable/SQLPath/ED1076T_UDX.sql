/* ---------------------------------------------------------------------- */
-- ユニーク索引作成DDL(ORACLE用)
-- ファイル名：ED1076T_UDX.sql
-- 対象テーブル（物理名）：ED1076T_TBL
-- 対象テーブル（論理名）：工事注文書明細テーブル
/* ---------------------------------------------------------------------- */

CREATE UNIQUE INDEX ED1076T_UDX01 ON ED1076T_TBL(
	KOJI_CHUMONSHO_NO
	,KOJI_CHUMONSHO_KAIHAN_NO
	,KOJI_CHUMONSHO_MEISAI_SN
	,JUCHU_KEIYAKU_NO
	,KOJI_IRAI_MEISAI_SN
	,KAISHA_CD
)
/
