/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED0502T_IDX11.sql
-- 対象テーブル（物理名）：ED0502T_TBL
-- 対象テーブル（論理名）：KY_契約書管理テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED0502T_IDX11 ON ED0502T_TBL(
	KEIYAKU_TEIKETSU_YMD
)
/

CREATE INDEX ED0502T_IDX13 ON ED0502T_TBL(
	KEIYAKUSHO_MATOME_NO
)
/

CREATE INDEX ED0502T_IDX14 ON ED0502T_TBL(
	KEIYAKUSHO_KAISHU_YMD
)
/

CREATE INDEX ED0502T_IDX15 ON ED0502T_TBL(
	KEIYAKUSHO_JIGYOSHO_SOFU_YMD
)
/

CREATE INDEX ED0502T_IDX16 ON ED0502T_TBL(
	KEIYAKUSHO_BUNSHOKO_JURYO_YMD
)
/

CREATE INDEX ED0502T_IDX17 ON ED0502T_TBL(
	KEIYAKUSHO_HENSO_YMD
)
/

CREATE INDEX ED0502T_IDX18 ON ED0502T_TBL(
	KEIYAKUSHO_HENSO_JURYO_YMD
)
/

CREATE INDEX ED0502T_IDX19 ON ED0502T_TBL(
	KIHON_KYOTSU_KEIYAKU_NO
)
/
