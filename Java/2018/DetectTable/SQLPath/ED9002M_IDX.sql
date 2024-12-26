﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED9002M_IDX.sql
-- 対象テーブル（物理名）：ED9002M_TBL
-- 対象テーブル（論理名）：取引先マスタ
/* ---------------------------------------------------------------------- */

CREATE INDEX ED9002M_IDX01 ON ED9002M_TBL(
	TORIHIKISAKI_NM 
)
/

CREATE INDEX ED9002M_IDX02 ON ED9002M_TBL(
	TORIHIKISAKI_KN_NM 
)
/

CREATE INDEX ED9002M_IDX03 ON ED9002M_TBL(
	JUSHO_CD 
)
/

CREATE INDEX ED9002M_IDX04 ON ED9002M_TBL(
	JUSHO_BANCHI 
)
/

CREATE INDEX ED9002M_IDX05 ON ED9002M_TBL(
	DENWA_NO 
)
/

CREATE INDEX ED9002M_IDX06 ON ED9002M_TBL(
	TDB_KIGYO_CD 
)
/

CREATE INDEX ED9002M_IDX07 ON ED9002M_TBL(
	HOJIN_NO 
)
/

CREATE INDEX ED9002M_IDX08 ON ED9002M_TBL(
	ALSOK_KYOTSU_KYOGO_GAISHA_FLG 
)
/

CREATE INDEX ED9002M_IDX09 ON ED9002M_TBL(
	TORIHIKISAKI_SEISHIKI_NM 
)
/