﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED1558T_IDX.sql
-- 対象テーブル（物理名）：ED1558T_TBL
-- 対象テーブル（論理名）：調達依頼テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED1558T_IDX01 ON ED1558T_TBL(
	JIGYOSHO_CD,
	CHOTATSU_KANRYO_FLG,
	CHOTATSU_IRAI_DUMMY_FLG 
)
/

CREATE INDEX ED1558T_IDX02 ON ED1558T_TBL(
	JISSHI_JIGYOSHO_CD,
	CHOTATSU_KANRYO_FLG,
	CHOTATSU_IRAI_DUMMY_FLG 
)
/

CREATE INDEX ED1558T_IDX03 ON ED1558T_TBL(
	KEIYAKUSAKI_TORIHIKISAKI_CD,
	TAISHOSAKI_CD,
	CHOTATSU_KANRYO_FLG,
	CHOTATSU_IRAI_DUMMY_FLG 
)
/

CREATE INDEX ED1558T_IDX04 ON ED1558T_TBL(
	TAISHOSAKI_CD,
	CHOTATSU_KANRYO_FLG,
	CHOTATSU_IRAI_DUMMY_FLG 
)
/
