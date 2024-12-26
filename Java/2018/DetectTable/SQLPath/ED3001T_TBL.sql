﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3001T_TBL.sql
-- 物理名：ED3001T_TBL
-- 論理名：保全アポイント依頼管理テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3001T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3001T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KI_NO  NUMBER(3,0) NOT NULL --「期番号」
	,JOI_JIGYOSHO_CD  CHAR(6) NOT NULL --「上位事業所コード」
	,APPOINT_IRAI_SN  NUMBER(14,0) DEFAULT '0' NOT NULL --「アポイント依頼連番」
	,APPOINT_IRAI_KANRI_NO  CHAR(10) --「アポイント依頼管理番号」
	,APPOINT_IRAI_JOKYO_KBN  CHAR(1) --「アポイント依頼状況区分」
	,HOZEN_SHUBETSU_KBN  CHAR(1) NOT NULL --「保全種別区分」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,DENKEI_NO  CHAR(9) --「電計番号」
	,SEIGYO_SOCHI_HIMMEI_CD  CHAR(8) --「制御装置品名コード」
	,RINJI_HOZEN_IRAI_KANRI_NO  CHAR(10) --「臨時保全依頼管理番号」
	,RINJI_HOZEN_KANRI_NO  CHAR(10) --「臨時保全管理番号」
	,APPOINT_IRAI_YMD  DATE --「アポイント依頼年月日」
	,APPOINT_IRAI_TENKEN_YOTEI_YM  CHAR(6) --「アポイント依頼点検予定年月」
	,APPOINT_IRI_TIO_KBZK_NAIYO  VARCHAR2(100) --「アポイント依頼対応希望月内容」
	,APPOINT_IRAI_KIBO_YMD  DATE --「アポイント依頼希望年月日」
	,APPOINT_IRI_YSK_SG_JIKAN_NAIYO  VARCHAR2(30) --「アポイント依頼予測作業時間内容」
	,APPOINT_IRI_SHSH_SHJ_NAIYO  VARCHAR2(300) --「アポイント依頼支社指示内容」
	,HOZEN_TAISHOSAKI_DENWA_NO  VARCHAR2(20) --「保全対象先電話番号」
	,APPOINT_HENKYAKU_RIYU_KBN  CHAR(1) --「アポイント返却理由区分」
	,APPOINT_HONSHA_RENRAKU_NAIYO  VARCHAR2(300) --「アポイント本社連絡内容」
	,APPOINT_JOKYO_KOSHIN_DT  TIMESTAMP --「アポイント状況更新日時」
	,APPOINT_IRAI_TSUCHI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「アポイント依頼通知フラグ」
	,APPOINT_HENKYAKU_TSUCHI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「アポイント返却通知フラグ」
	,APPOINT_NTTI_KKTI_TSCHZM_FLG  CHAR(1) DEFAULT '0' NOT NULL --「アポイント日程確定通知済フラグ」
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
	,CONSTRAINT ED3001T_PK PRIMARY KEY(
	 KI_NO
	,  JOI_JIGYOSHO_CD
	,  APPOINT_IRAI_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3001T_TBL IS '保全アポイント依頼管理テーブル'
/

COMMENT ON COLUMN ED3001T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3001T_TBL.KI_NO IS '期番号'
/
COMMENT ON COLUMN ED3001T_TBL.JOI_JIGYOSHO_CD IS '上位事業所コード'
/
COMMENT ON COLUMN ED3001T_TBL.APPOINT_IRAI_SN IS 'アポイント依頼連番'
/
COMMENT ON COLUMN ED3001T_TBL.APPOINT_IRAI_KANRI_NO IS 'アポイント依頼管理番号'
/
COMMENT ON COLUMN ED3001T_TBL.APPOINT_IRAI_JOKYO_KBN IS 'アポイント依頼状況区分'
/
COMMENT ON COLUMN ED3001T_TBL.HOZEN_SHUBETSU_KBN IS '保全種別区分'
/
COMMENT ON COLUMN ED3001T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED3001T_TBL.DENKEI_NO IS '電計番号'
/
COMMENT ON COLUMN ED3001T_TBL.SEIGYO_SOCHI_HIMMEI_CD IS '制御装置品名コード'
/
COMMENT ON COLUMN ED3001T_TBL.RINJI_HOZEN_IRAI_KANRI_NO IS '臨時保全依頼管理番号'
/
COMMENT ON COLUMN ED3001T_TBL.RINJI_HOZEN_KANRI_NO IS '臨時保全管理番号'
/
COMMENT ON COLUMN ED3001T_TBL.APPOINT_IRAI_YMD IS 'アポイント依頼年月日'
/
COMMENT ON COLUMN ED3001T_TBL.APPOINT_IRAI_TENKEN_YOTEI_YM IS 'アポイント依頼点検予定年月'
/
COMMENT ON COLUMN ED3001T_TBL.APPOINT_IRI_TIO_KBZK_NAIYO IS 'アポイント依頼対応希望月内容'
/
COMMENT ON COLUMN ED3001T_TBL.APPOINT_IRAI_KIBO_YMD IS 'アポイント依頼希望年月日'
/
COMMENT ON COLUMN ED3001T_TBL.APPOINT_IRI_YSK_SG_JIKAN_NAIYO IS 'アポイント依頼予測作業時間内容'
/
COMMENT ON COLUMN ED3001T_TBL.APPOINT_IRI_SHSH_SHJ_NAIYO IS 'アポイント依頼支社指示内容'
/
COMMENT ON COLUMN ED3001T_TBL.HOZEN_TAISHOSAKI_DENWA_NO IS '保全対象先電話番号'
/
COMMENT ON COLUMN ED3001T_TBL.APPOINT_HENKYAKU_RIYU_KBN IS 'アポイント返却理由区分'
/
COMMENT ON COLUMN ED3001T_TBL.APPOINT_HONSHA_RENRAKU_NAIYO IS 'アポイント本社連絡内容'
/
COMMENT ON COLUMN ED3001T_TBL.APPOINT_JOKYO_KOSHIN_DT IS 'アポイント状況更新日時'
/
COMMENT ON COLUMN ED3001T_TBL.APPOINT_IRAI_TSUCHI_FLG IS 'アポイント依頼通知フラグ'
/
COMMENT ON COLUMN ED3001T_TBL.APPOINT_HENKYAKU_TSUCHI_FLG IS 'アポイント返却通知フラグ'
/
COMMENT ON COLUMN ED3001T_TBL.APPOINT_NTTI_KKTI_TSCHZM_FLG IS 'アポイント日程確定通知済フラグ'
/
COMMENT ON COLUMN ED3001T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3001T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3001T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3001T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3001T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3001T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3001T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3001T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3001T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3001T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3001T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3001T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
