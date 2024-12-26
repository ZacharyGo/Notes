﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4143M_TBL.sql
-- 物理名：ED4143M_TBL
-- 論理名：基本共通契約承認基準マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4143M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4143M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KHN_KYTS_KIYK_SHNN_KJN_CD  CHAR(10) NOT NULL --「基本共通契約承認基準コード」
	,SHOHIN_SERVICE_CD  CHAR(3) --「商品サービスコード」
	,HYOJI_JUN_1  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順１」
	,TORIHIKISAKI_CD  CHAR(9) --「取引先コード」
	,KHN_KYTS_KIYK_RYOKIN_TYPE_KBN  CHAR(3) NOT NULL --「基本共通契約料金タイプ区分」
	,KIHON_KYTS_KIYK_RYOKIN_TYPE_CD  CHAR(3) --「基本共通契約料金タイプコード」
	,KHN_KYTS_KIYK_SHNN_KJN_NM  VARCHAR2(60) --「基本共通契約承認基準名称」
	,KIHON_KYOTSU_KEIYAKU_NO  CHAR(9) --「基本共通契約番号」
	,SHNN_GNK_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「承認原価金額」
	,SHNN_HYJNGK_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「承認標準額金額」
	,SHINSEI_SHONIN_KAISO_NO  CHAR(2) --「申請承認階層番号」
	,SHINSEI_SHONIN_ID  CHAR(6) --「申請承認ＩＤ」
	,SHINSEI_SHONIN_ROUTE_SN  NUMBER(3,0) DEFAULT '0' NOT NULL --「申請承認ルート連番」
	,SHIYO_FUKA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「使用不可フラグ」
	,RYOKIN_TYPE_JSSK_KAISHI_TM  CHAR(4) --「料金タイプ実績開始時刻」
	,RYOKIN_TYPE_JSSK_SHURYO_TM  CHAR(4) --「料金タイプ実績終了時刻」
	,RYOKIN_TYPE_JSSK_SAISHO_JIKAN  NUMBER(9,0) DEFAULT '0' NOT NULL --「料金タイプ実績最小時間」
	,RYOKIN_TYPE_JSSK_SAIDAI_JIKAN  NUMBER(9,0) DEFAULT '0' NOT NULL --「料金タイプ実績最大時間」
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
	,CONSTRAINT ED4143M_PK PRIMARY KEY(
	 KHN_KYTS_KIYK_SHNN_KJN_CD
	,  KAISHA_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4143M_TBL IS '基本共通契約承認基準マスタ'
/

COMMENT ON COLUMN ED4143M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED4143M_TBL.KHN_KYTS_KIYK_SHNN_KJN_CD IS '基本共通契約承認基準コード'
/
COMMENT ON COLUMN ED4143M_TBL.SHOHIN_SERVICE_CD IS '商品サービスコード'
/
COMMENT ON COLUMN ED4143M_TBL.HYOJI_JUN_1 IS '表示順１'
/
COMMENT ON COLUMN ED4143M_TBL.TORIHIKISAKI_CD IS '取引先コード'
/
COMMENT ON COLUMN ED4143M_TBL.KHN_KYTS_KIYK_RYOKIN_TYPE_KBN IS '基本共通契約料金タイプ区分'
/
COMMENT ON COLUMN ED4143M_TBL.KIHON_KYTS_KIYK_RYOKIN_TYPE_CD IS '基本共通契約料金タイプコード'
/
COMMENT ON COLUMN ED4143M_TBL.KHN_KYTS_KIYK_SHNN_KJN_NM IS '基本共通契約承認基準名称'
/
COMMENT ON COLUMN ED4143M_TBL.KIHON_KYOTSU_KEIYAKU_NO IS '基本共通契約番号'
/
COMMENT ON COLUMN ED4143M_TBL.SHNN_GNK_AMT IS '承認原価金額'
/
COMMENT ON COLUMN ED4143M_TBL.SHNN_HYJNGK_AMT IS '承認標準額金額'
/
COMMENT ON COLUMN ED4143M_TBL.SHINSEI_SHONIN_KAISO_NO IS '申請承認階層番号'
/
COMMENT ON COLUMN ED4143M_TBL.SHINSEI_SHONIN_ID IS '申請承認ＩＤ'
/
COMMENT ON COLUMN ED4143M_TBL.SHINSEI_SHONIN_ROUTE_SN IS '申請承認ルート連番'
/
COMMENT ON COLUMN ED4143M_TBL.SHIYO_FUKA_FLG IS '使用不可フラグ'
/
COMMENT ON COLUMN ED4143M_TBL.RYOKIN_TYPE_JSSK_KAISHI_TM IS '料金タイプ実績開始時刻'
/
COMMENT ON COLUMN ED4143M_TBL.RYOKIN_TYPE_JSSK_SHURYO_TM IS '料金タイプ実績終了時刻'
/
COMMENT ON COLUMN ED4143M_TBL.RYOKIN_TYPE_JSSK_SAISHO_JIKAN IS '料金タイプ実績最小時間'
/
COMMENT ON COLUMN ED4143M_TBL.RYOKIN_TYPE_JSSK_SAIDAI_JIKAN IS '料金タイプ実績最大時間'
/
COMMENT ON COLUMN ED4143M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4143M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4143M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4143M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4143M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4143M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4143M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4143M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4143M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4143M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4143M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4143M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4143M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4143M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
