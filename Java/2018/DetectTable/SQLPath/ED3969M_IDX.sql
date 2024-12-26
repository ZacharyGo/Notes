/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3969M_IDX.sql
-- 対象テーブル（物理名）：ED3969M_TBL
-- 対象テーブル（論理名）：請求書テンプレートマスタ
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3969M_IDX01 ON ED3969M_TBL(
	SEIKYU_KANRI_JIGYOSHO_CD 
)
/

CREATE INDEX ED3969M_IDX02 ON ED3969M_TBL(
	SEIKYUSHO_TEMPLATE_NO 
)
/

CREATE INDEX ED3969M_IDX03 ON ED3969M_TBL(
	SOFUSAKI_TORIHIKISAKI_CD,
	SOFUSAKI_TORIHIKISAKI_BUSHO_CD 
)
/
