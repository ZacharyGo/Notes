﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0309T_TBL.sql
-- 物理名：ED0309T_TBL
-- 論理名：商談訪問テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0309T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0309T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,EIGYO_KODO_YOTEI_SHAIN_NO  VARCHAR2(8) NOT NULL --「営業行動予定社員番号」
	,SHODAN_HOMON_NO  CHAR(23) NOT NULL --「商談訪問番号」
	,EIGYO_KODO_YOTEI_NO  CHAR(13) --「営業行動予定番号」
	,TAISHOSAKI_CD  CHAR(9) --「対象先コード」
	,EIGY_KD_YTI_KRTISHSK_NM  VARCHAR2(40) --「営業行動予定仮対象先名称」
	,SHOHIN_SERVICE_SHUBETSU_CD  CHAR(3) --「商品サービス種別コード」
	,SHOHIN_SERVICE_CD  CHAR(3) --「商品サービスコード」
	,SHODAN_HOMON_DT  TIMESTAMP --「商談訪問日時」
	,YOTEI_BUNRUI_CD  CHAR(2) --「予定分類コード」
	,ANKEN_NO  CHAR(13) --「案件番号」
	,SHODAN_HOMON_TORIHIKISAKI_CD  CHAR(9) --「商談訪問取引先コード」
	,SHDN_HMN_TRHKSK_BSH_CD  CHAR(4) --「商談訪問取引先部署コード」
	,EIGYO_KODO_YOTEI_JIGYOSHO_CD  CHAR(6) --「営業行動予定事業所コード」
	,TARGET_LIST_CD  CHAR(11) --「ターゲットリストコード」
	,ALSOK_CLASS_KBN  CHAR(1) DEFAULT '0' NOT NULL --「ＡＬＳＯＫクラス区分」
	,EIGY_KD_YTI_JCH_SHIN_NO_1  VARCHAR2(8) --「営業行動予定上長社員番号１」
	,EIGY_KD_YTI_JCH_YKSHK_CD_1  VARCHAR2(4) --「営業行動予定上長役職コード１」
	,EIGY_KD_YTI_JCH_SHIN_NO_2  VARCHAR2(8) --「営業行動予定上長社員番号２」
	,EIGY_KD_YTI_JCH_YKSHK_CD_2  VARCHAR2(4) --「営業行動予定上長役職コード２」
	,EIGY_KD_YTI_JCH_SHIN_NO_3  VARCHAR2(8) --「営業行動予定上長社員番号３」
	,EIGY_KD_YTI_JCH_YKSHK_CD_3  VARCHAR2(4) --「営業行動予定上長役職コード３」
	,EIGY_KD_YTI_JCH_SHIN_NO_4  VARCHAR2(8) --「営業行動予定上長社員番号４」
	,EIGY_KD_YTI_JCH_YKSHK_CD_4  VARCHAR2(4) --「営業行動予定上長役職コード４」
	,EIGY_KD_YTI_JCH_SHIN_NO_5  VARCHAR2(8) --「営業行動予定上長社員番号５」
	,EIGY_KD_YTI_JCH_YKSHK_CD_5  VARCHAR2(4) --「営業行動予定上長役職コード５」
	,EIGY_KD_YTI_JCH_SHIN_NO_6  VARCHAR2(8) --「営業行動予定上長社員番号６」
	,EIGY_KD_YTI_JCH_YKSHK_CD_6  VARCHAR2(4) --「営業行動予定上長役職コード６」
	,EIGY_KD_YTI_JCH_SHIN_NO_7  VARCHAR2(8) --「営業行動予定上長社員番号７」
	,EIGY_KD_YTI_JCH_YKSHK_CD_7  VARCHAR2(4) --「営業行動予定上長役職コード７」
	,EIGY_KD_YTI_JCH_SHIN_NO_8  VARCHAR2(8) --「営業行動予定上長社員番号８」
	,EIGY_KD_YTI_JCH_YKSHK_CD_8  VARCHAR2(4) --「営業行動予定上長役職コード８」
	,EIGY_KD_YTI_JCH_SHIN_NO_9  VARCHAR2(8) --「営業行動予定上長社員番号９」
	,EIGY_KD_YTI_JCH_YKSHK_CD_9  VARCHAR2(4) --「営業行動予定上長役職コード９」
	,EIGY_KD_YTI_JCH_SHIN_NO_10  VARCHAR2(8) --「営業行動予定上長社員番号１０」
	,EIGY_KD_YTI_JCH_YKSHK_CD_10  VARCHAR2(4) --「営業行動予定上長役職コード１０」
	,SALES_STAGE_A_CD  CHAR(2) --「セールスステージＡコード」
	,SALES_STAGE_B_CD  CHAR(2) --「セールスステージＢコード」
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
	,CONSTRAINT ED0309T_PK PRIMARY KEY(
	 EIGYO_KODO_YOTEI_SHAIN_NO
	,  SHODAN_HOMON_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0309T_TBL IS '商談訪問テーブル'
/

COMMENT ON COLUMN ED0309T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0309T_TBL.EIGYO_KODO_YOTEI_SHAIN_NO IS '営業行動予定社員番号'
/
COMMENT ON COLUMN ED0309T_TBL.SHODAN_HOMON_NO IS '商談訪問番号'
/
COMMENT ON COLUMN ED0309T_TBL.EIGYO_KODO_YOTEI_NO IS '営業行動予定番号'
/
COMMENT ON COLUMN ED0309T_TBL.TAISHOSAKI_CD IS '対象先コード'
/
COMMENT ON COLUMN ED0309T_TBL.EIGY_KD_YTI_KRTISHSK_NM IS '営業行動予定仮対象先名称'
/
COMMENT ON COLUMN ED0309T_TBL.SHOHIN_SERVICE_SHUBETSU_CD IS '商品サービス種別コード'
/
COMMENT ON COLUMN ED0309T_TBL.SHOHIN_SERVICE_CD IS '商品サービスコード'
/
COMMENT ON COLUMN ED0309T_TBL.SHODAN_HOMON_DT IS '商談訪問日時'
/
COMMENT ON COLUMN ED0309T_TBL.YOTEI_BUNRUI_CD IS '予定分類コード'
/
COMMENT ON COLUMN ED0309T_TBL.ANKEN_NO IS '案件番号'
/
COMMENT ON COLUMN ED0309T_TBL.SHODAN_HOMON_TORIHIKISAKI_CD IS '商談訪問取引先コード'
/
COMMENT ON COLUMN ED0309T_TBL.SHDN_HMN_TRHKSK_BSH_CD IS '商談訪問取引先部署コード'
/
COMMENT ON COLUMN ED0309T_TBL.EIGYO_KODO_YOTEI_JIGYOSHO_CD IS '営業行動予定事業所コード'
/
COMMENT ON COLUMN ED0309T_TBL.TARGET_LIST_CD IS 'ターゲットリストコード'
/
COMMENT ON COLUMN ED0309T_TBL.ALSOK_CLASS_KBN IS 'ＡＬＳＯＫクラス区分'
/
COMMENT ON COLUMN ED0309T_TBL.EIGY_KD_YTI_JCH_SHIN_NO_1 IS '営業行動予定上長社員番号１'
/
COMMENT ON COLUMN ED0309T_TBL.EIGY_KD_YTI_JCH_YKSHK_CD_1 IS '営業行動予定上長役職コード１'
/
COMMENT ON COLUMN ED0309T_TBL.EIGY_KD_YTI_JCH_SHIN_NO_2 IS '営業行動予定上長社員番号２'
/
COMMENT ON COLUMN ED0309T_TBL.EIGY_KD_YTI_JCH_YKSHK_CD_2 IS '営業行動予定上長役職コード２'
/
COMMENT ON COLUMN ED0309T_TBL.EIGY_KD_YTI_JCH_SHIN_NO_3 IS '営業行動予定上長社員番号３'
/
COMMENT ON COLUMN ED0309T_TBL.EIGY_KD_YTI_JCH_YKSHK_CD_3 IS '営業行動予定上長役職コード３'
/
COMMENT ON COLUMN ED0309T_TBL.EIGY_KD_YTI_JCH_SHIN_NO_4 IS '営業行動予定上長社員番号４'
/
COMMENT ON COLUMN ED0309T_TBL.EIGY_KD_YTI_JCH_YKSHK_CD_4 IS '営業行動予定上長役職コード４'
/
COMMENT ON COLUMN ED0309T_TBL.EIGY_KD_YTI_JCH_SHIN_NO_5 IS '営業行動予定上長社員番号５'
/
COMMENT ON COLUMN ED0309T_TBL.EIGY_KD_YTI_JCH_YKSHK_CD_5 IS '営業行動予定上長役職コード５'
/
COMMENT ON COLUMN ED0309T_TBL.EIGY_KD_YTI_JCH_SHIN_NO_6 IS '営業行動予定上長社員番号６'
/
COMMENT ON COLUMN ED0309T_TBL.EIGY_KD_YTI_JCH_YKSHK_CD_6 IS '営業行動予定上長役職コード６'
/
COMMENT ON COLUMN ED0309T_TBL.EIGY_KD_YTI_JCH_SHIN_NO_7 IS '営業行動予定上長社員番号７'
/
COMMENT ON COLUMN ED0309T_TBL.EIGY_KD_YTI_JCH_YKSHK_CD_7 IS '営業行動予定上長役職コード７'
/
COMMENT ON COLUMN ED0309T_TBL.EIGY_KD_YTI_JCH_SHIN_NO_8 IS '営業行動予定上長社員番号８'
/
COMMENT ON COLUMN ED0309T_TBL.EIGY_KD_YTI_JCH_YKSHK_CD_8 IS '営業行動予定上長役職コード８'
/
COMMENT ON COLUMN ED0309T_TBL.EIGY_KD_YTI_JCH_SHIN_NO_9 IS '営業行動予定上長社員番号９'
/
COMMENT ON COLUMN ED0309T_TBL.EIGY_KD_YTI_JCH_YKSHK_CD_9 IS '営業行動予定上長役職コード９'
/
COMMENT ON COLUMN ED0309T_TBL.EIGY_KD_YTI_JCH_SHIN_NO_10 IS '営業行動予定上長社員番号１０'
/
COMMENT ON COLUMN ED0309T_TBL.EIGY_KD_YTI_JCH_YKSHK_CD_10 IS '営業行動予定上長役職コード１０'
/
COMMENT ON COLUMN ED0309T_TBL.SALES_STAGE_A_CD IS 'セールスステージＡコード'
/
COMMENT ON COLUMN ED0309T_TBL.SALES_STAGE_B_CD IS 'セールスステージＢコード'
/
COMMENT ON COLUMN ED0309T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0309T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0309T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0309T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0309T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0309T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0309T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0309T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0309T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0309T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0309T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0309T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
