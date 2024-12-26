/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED3901T_IDX.sql
-- 対象テーブル（物理名）：ED3901T_TBL
-- 対象テーブル（論理名）：請求入金台帳テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED3901T_IDX01 ON ED3901T_TBL(
	SEIKYUSHO_NO 
)
/

CREATE INDEX ED3901T_IDX02 ON ED3901T_TBL(
	SEIKYUSHO_TEMPLATE_NO 
)
/

CREATE INDEX ED3901T_IDX03 ON ED3901T_TBL(
	SEIKYUSAKI_TORIHIKISAKI_CD 
)
/

CREATE INDEX ED3901T_IDX04 ON ED3901T_TBL(
	TOSHO_SEIKYUSHO_NO 
)
/

CREATE INDEX ED3901T_IDX05 ON ED3901T_TBL(
	KANREN_SEIKYU_NYUKIN_DAICHO_ID 
)
/
