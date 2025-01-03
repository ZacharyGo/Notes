﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED9062T_IDX.sql
-- 対象テーブル（物理名）：ED9062T_TBL
-- 対象テーブル（論理名）：申請承認処理状況テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED9062T_IDX01 ON ED9062T_TBL(
	KAISOSAKI_JIGYOSHO_CD 
)
/

CREATE INDEX ED9062T_IDX02 ON ED9062T_TBL(
	JISSHISHA_JIGYOSHO_CD 
)
/

CREATE INDEX ED9062T_IDX03 ON ED9062T_TBL(
	KAISOSAKI_JIGYOSHO_CD,
	KAISOSAKI_YAKUSHOKU_CD 
)
/

CREATE INDEX ED9062T_IDX04 ON ED9062T_TBL(
	KAISOSAKI_JIGYOSHO_CD,
	KAISOSAKI_SHOKUMU_CD 
)
/

CREATE INDEX ED9062T_IDX05 ON ED9062T_TBL(
	KAISOSAKI_JIGYOSHO_CD,
	KAISOSAKI_SHAIN_NO 
)
/
