/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED0309T_IDX.sql
-- 対象テーブル（物理名）：ED0309T_TBL
-- 対象テーブル（論理名）：商談訪問テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED0309T_IDX01 ON ED0309T_TBL(
	SHODAN_HOMON_DT,
	KAISHA_CD 
)
/

CREATE INDEX ED0309T_IDX02 ON ED0309T_TBL(
	EIGYO_KODO_YOTEI_JIGYOSHO_CD,
	EIGYO_KODO_YOTEI_SHAIN_NO,
	SHODAN_HOMON_DT,
	KAISHA_CD 
)
/

CREATE INDEX ED0309T_IDX03 ON ED0309T_TBL(
	SHODAN_HOMON_TORIHIKISAKI_CD,
	SHDN_HMN_TRHKSK_BSH_CD,
	SHODAN_HOMON_DT,
	KAISHA_CD 
)
/
