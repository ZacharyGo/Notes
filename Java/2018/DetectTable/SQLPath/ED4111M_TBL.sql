﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4111M_TBL.sql
-- 物理名：ED4111M_TBL
-- 論理名：積算契約ステータス表示マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4111M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4111M_TBL (
	 SHOHIN_SERVICE_CD  CHAR(3) NOT NULL --「商品サービスコード」
	,SKSN_KIYK_STATUS_HYJ_AREA_KBN  CHAR(1) NOT NULL --「積算契約ステータス表示エリア区分」
	,SKSN_KIYK_STATUS_HYJ_SN  CHAR(14) NOT NULL --「積算契約ステータス表示連番」
	,SKSNKYK_KYKKNRN_GMKT_STATUS_CD  CHAR(5) --「積算契約契約関連画面共通ステータスコード」
	,SKSNKYK_KYKKNRN_GMKT_STATUS_NM  VARCHAR2(60) --「積算契約契約関連画面共通ステータス名称」
	,HYOJI_JUN_1  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順１」
	,SKSN_KIYK_STATUS_KNRY_JDST_FLG  CHAR(1) DEFAULT '0' NOT NULL --「積算契約ステータス完了自動設定フラグ」
	,SKSN_KIYK_STATUS_KNRY_HJ_NAIYO  VARCHAR2(1000) --「積算契約ステータス完了判定条件内容」
	,HITSUYO_SHORUIRAN_HYOJI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「必要書類欄表示フラグ」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,REGST_TMSTMP  TIMESTAMP --「登録タイムスタンプ」
	,REGSTR_CO_CD  CHAR(5) --「登録者会社コード」
	,REGSTR_SOSHIKI_CD  VARCHAR2(6) --「登録者組織コード」
	,REGSTR_EMP_NO  VARCHAR2(8) --「登録者社員番号」
	,REGST_GAMEN_ID  CHAR(15) --「登録画面ＩＤ」
	,REGST_PGM_ID  VARCHAR2(255) --「登録プログラムＩＤ」
	,UPD_TMSTMP  TIMESTAMP --「更新タイムスタンプ」
	,UPDTR_CO_CD  CHAR(5) --「更新者会社コード」
	,UPDTR_SOSHIKI_CD  VARCHAR2(6) --「更新者組織コード」
	,UPDTR_EMP_NO  VARCHAR2(8) --「更新者社員番号」
	,UPD_GAMEN_ID  CHAR(15) --「更新画面ＩＤ」
	,UPD_PGM_ID  VARCHAR2(255) --「更新プログラムＩＤ」
	,CONSTRAINT ED4111M_PK PRIMARY KEY(
	 SHOHIN_SERVICE_CD
	,  SKSN_KIYK_STATUS_HYJ_AREA_KBN
	,  SKSN_KIYK_STATUS_HYJ_SN
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4111M_TBL IS '積算契約ステータス表示マスタ'
/

COMMENT ON COLUMN ED4111M_TBL.SHOHIN_SERVICE_CD IS '商品サービスコード'
/
COMMENT ON COLUMN ED4111M_TBL.SKSN_KIYK_STATUS_HYJ_AREA_KBN IS '積算契約ステータス表示エリア区分'
/
COMMENT ON COLUMN ED4111M_TBL.SKSN_KIYK_STATUS_HYJ_SN IS '積算契約ステータス表示連番'
/
COMMENT ON COLUMN ED4111M_TBL.SKSNKYK_KYKKNRN_GMKT_STATUS_CD IS '積算契約契約関連画面共通ステータスコード'
/
COMMENT ON COLUMN ED4111M_TBL.SKSNKYK_KYKKNRN_GMKT_STATUS_NM IS '積算契約契約関連画面共通ステータス名称'
/
COMMENT ON COLUMN ED4111M_TBL.HYOJI_JUN_1 IS '表示順１'
/
COMMENT ON COLUMN ED4111M_TBL.SKSN_KIYK_STATUS_KNRY_JDST_FLG IS '積算契約ステータス完了自動設定フラグ'
/
COMMENT ON COLUMN ED4111M_TBL.SKSN_KIYK_STATUS_KNRY_HJ_NAIYO IS '積算契約ステータス完了判定条件内容'
/
COMMENT ON COLUMN ED4111M_TBL.HITSUYO_SHORUIRAN_HYOJI_FLG IS '必要書類欄表示フラグ'
/
COMMENT ON COLUMN ED4111M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4111M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4111M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4111M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4111M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4111M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4111M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4111M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4111M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4111M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4111M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4111M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4111M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4111M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/