﻿/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED0302T_IDX.sql
-- 対象テーブル（物理名）：ED0302T_TBL
-- 対象テーブル（論理名）：営業行動予定テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED0302T_IDX01 ON ED0302T_TBL(
	EIGYO_KODO_YOTEI_SHAIN_NO,
	EIGYO_KODO_YOTEI_KAISHI_DT,
	EIGYO_KODO_YOTEI_SHURYO_DT,
	KAISHA_CD 
)
/

CREATE INDEX ED0302T_IDX02 ON ED0302T_TBL(
	EIGYO_KODO_YOTEI_JIGYOSHO_CD,
	EIGYO_KODO_YOTEI_KAISHI_DT,
	EIGYO_KODO_YOTEI_SHURYO_DT,
	KAISHA_CD 
)
/

CREATE INDEX ED0302T_IDX03 ON ED0302T_TBL(
	ANKEN_NO,
	EIGYO_KODO_YOTEI_SHAIN_NO,
	KAISHA_CD 
)
/

CREATE INDEX ED0302T_IDX04 ON ED0302T_TBL(
	EIGYO_KODO_YOTEI_NO 
)
/