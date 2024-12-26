﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED0517T_IDX.sql
-- 対象テーブル（物理名）：ED0517T_TBL
-- 対象テーブル（論理名）：受注テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED0517T_IDX01 ON ED0517T_TBL(
	KANREN_JUCHU_KEIYAKU_NO 
)
/

CREATE INDEX ED0517T_IDX02 ON ED0517T_TBL(
	KEIYAKUSAKI_TORIHIKISAKI_CD,
	KIYKSK_TRHKSK_BSH_CD 
)
/

CREATE INDEX ED0517T_IDX03 ON ED0517T_TBL(
	KEIYAKU_JUCHU_TANTO_SHAIN_NO 
)
/

CREATE INDEX ED0517T_IDX04 ON ED0517T_TBL(
	TORIHIKISAKI_CD,
	TORIHIKISAKI_BUSHO_CD 
)
/

CREATE INDEX ED0517T_IDX05 ON ED0517T_TBL(
	ANKEN_NO 
)
/

CREATE INDEX ED0517T_IDX06 ON ED0517T_TBL(
	DENKEI_NO 
)
/

CREATE INDEX ED0517T_IDX07 ON ED0517T_TBL(
	JUCHU_JIGYOSHO_CD 
)
/
