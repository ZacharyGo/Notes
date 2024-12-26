﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED0504T_IDX.sql
-- 対象テーブル（物理名）：ED0504T_TBL
-- 対象テーブル（論理名）：契約テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED0504T_IDX01 ON ED0504T_TBL(
	JUCHU_KEIYAKU_NO,
	JUCHU_KEIYAKU_HENKO_NO 
)
/

CREATE INDEX ED0504T_IDX02 ON ED0504T_TBL(
	ANKEN_NO 
)
/

CREATE INDEX ED0504T_IDX03 ON ED0504T_TBL(
	SEKISAN_NO 
)
/

CREATE INDEX ED0504T_IDX04 ON ED0504T_TBL(
	KANREN_JUCHU_KEIYAKU_NO,
	JUCHU_KEIYAKU_HENKO_NO 
)
/

CREATE INDEX ED0504T_IDX05 ON ED0504T_TBL(
	OYA_PLAN_KEIYAKU_ID 
)
/

CREATE INDEX ED0504T_IDX06 ON ED0504T_TBL(
	JUCHU_JIGYOSHO_CD 
)
/

CREATE INDEX ED0504T_IDX07 ON ED0504T_TBL(
	KEIYAKUSAKI_TORIHIKISAKI_CD,
	KEIYAKU_ID,
	KAISHA_CD,
	SEKISAN_KIYK_KANRI_KBN,
	KEIYAKU_CHOKI_RINJI_KBN,
	KEIYAKU_KENSAKU_TAISHO_FLG 
)
/

CREATE INDEX ED0504T_IDX08 ON ED0504T_TBL(
	MITSUMORISHO_NO 
)
/

CREATE INDEX ED0504T_IDX09 ON ED0504T_TBL(
	SHOHIN_SERVICE_CD 
)
/

CREATE INDEX ED0504T_IDX10 ON ED0504T_TBL(
	TORIHIKISAKI_CD,
	KEIYAKU_ID,
	KAISHA_CD,
	SEKISAN_KIYK_KANRI_KBN,
	KEIYAKU_CHOKI_RINJI_KBN,
	KEIYAKU_KENSAKU_TAISHO_FLG 
)
/