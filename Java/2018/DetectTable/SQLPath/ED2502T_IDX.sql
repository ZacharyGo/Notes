/* ---------------------------------------------------------------------- */
-- インデックス作成DDL(ORACLE用)
-- ファイル名：ED2502T_IDX.sql
-- 対象テーブル（物理名）：ED2502T_TBL
-- 対象テーブル（論理名）：運用綜管防災予実テーブル
/* ---------------------------------------------------------------------- */

CREATE INDEX ED2502T_IDX01 ON ED2502T_TBL(
	SOKAN_BOSAI_KAISHI_YOTEI_YM 
)
/

CREATE INDEX ED2502T_IDX02 ON ED2502T_TBL(
	SOKAN_BOSAI_JISSHI_KAISHI_YM 
)
/

CREATE INDEX ED2502T_IDX03 ON ED2502T_TBL(
	SKN_BSI_SIKYSH_KKNN_YMD 
)
/

CREATE INDEX ED2502T_IDX04 ON ED2502T_TBL(
	SKN_BSI_HKKSH_KKNN_YMD 
)
/

CREATE INDEX ED2502T_IDX05 ON ED2502T_TBL(
	SKSN_KNR_KOMOKU_DIKMK_CD 
)
/
