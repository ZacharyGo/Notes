﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED8708T_IDX.sql
-- 対象テーブル（物理名）：ED8708T_TBL
-- 対象テーブル（論理名）：資材工事振替明細表テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED8708T_IDX01 ON ED8708T_TBL(
	KAISHA_CD 
)
/

CREATE INDEX ED8708T_IDX02 ON ED8708T_TBL(
	EIGYO_KANRI_YM 
)
/

CREATE INDEX ED8708T_IDX03 ON ED8708T_TBL(
	SHIZAI_SOBI_KBN 
)
/

CREATE INDEX ED8708T_IDX04 ON ED8708T_TBL(
	JUCHU_KEIYAKU_NO 
)
/

CREATE INDEX ED8708T_IDX05 ON ED8708T_TBL(
	JIGYO_SEGMENT_CD 
)
/

CREATE INDEX ED8708T_IDX06 ON ED8708T_TBL(
	JIGYOSHO_CD 
)
/

CREATE INDEX ED8708T_IDX07 ON ED8708T_TBL(
	AKAKURO_KBN,
	SHIZAI_SOBI_KBN,
	FURIKAEMOTO_KANJO_KAMOKU_CD,
	JUCHU_JIGYOSHO_CD,
	SHIWAKEMOTO_DEMPYO_NO,
	SHIWAKEMOTO_DEMPYO_NO_BN,
	SHWKMT_DMPY_MISIGY_NO,
	SHWKMT_DMPY_MISIGY_NO_BN,
	KEIJO_YMD,
	KAISHA_CD,
	EIGYO_KANRI_YM,
	SHIWAKE_PATTERN_HOJO_CD,
	JIGYO_SEGMENT_CD,
	UPD_PGM_ID,
	JUCHU_KEIYAKU_NO,
	SHIWAKEMOTO_DEMPYO_SURYO,
	SHOHIN_SERVICE_BUNRUI_CD,
	JIGYOSHO_CD,
	HIMMEI_CD,
	KEIYAKUSAKI_TORIHIKISAKI_CD,
	TAIYOSAKI_CD,
	TAISHOSAKI_CD,
	JISSHI_JIGYOSHO_CD,
	SHUKKA_KBN,
	KOJI_KBN 
)
/
