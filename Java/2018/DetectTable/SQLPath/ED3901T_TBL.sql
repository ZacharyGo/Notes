﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3901T_TBL.sql
-- 物理名：ED3901T_TBL
-- 論理名：請求入金台帳テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3901T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3901T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SEIKYU_NYUKIN_DAICHO_ID  NUMBER(14,0) DEFAULT '0' NOT NULL --「請求入金台帳ＩＤ」
	,SIKY_NYKN_DICH_TRK_KN_KBN  CHAR(3) NOT NULL --「請求入金台帳登録機能区分」
	,SIKY_NYKN_DICH_TRK_JKN_KBN  CHAR(4) NOT NULL --「請求入金台帳登録条件区分」
	,SEIKYU_NYUKIN_KBN  CHAR(1) NOT NULL --「請求入金区分」
	,SIKY_NYKN_DICH_SIKN_HNTI_KBN  CHAR(1) NOT NULL --「請求入金台帳債権判定区分」
	,SIKY_NYKN_DICH_SISHN_FLG  CHAR(1) DEFAULT '0' NOT NULL --「請求入金台帳最新フラグ」
	,SEIKYUSHO_NO  CHAR(14) NOT NULL --「請求書番号」
	,SEIKYUSHO_TEMPLATE_NO  CHAR(14) --「請求書テンプレート番号」
	,DAIHYO_SEIKYUSHO_TEKIYO  VARCHAR2(62) --「代表請求書摘要」
	,DAIHYO_SEIKYUSHO_BIKO  VARCHAR2(54) --「代表請求書備考」
	,SEIKYUSAKI_TORIHIKISAKI_CD  CHAR(9) NOT NULL --「請求先取引先コード」
	,SIKY_NYKN_DICH_SIKY_STATUS_KBN  CHAR(2) NOT NULL --「請求入金台帳請求ステータス区分」
	,SIKY_NYKN_DICH_NYKN_STATUS_KBN  CHAR(2) NOT NULL --「請求入金台帳入金ステータス区分」
	,SIKY_NYKN_DICH_TIRY_STATUS_KBN  CHAR(2) NOT NULL --「請求入金台帳滞留ステータス区分」
	,SIKY_NYKN_DICH_STATUS_KBN  CHAR(2) NOT NULL --「請求入金台帳ステータス区分」
	,SIKY_NYKN_DICH_NYKN_SHR_KBN  CHAR(2) NOT NULL --「請求入金台帳入金処理区分」
	,SEIKYU_YMD  DATE --「請求年月日」
	,SEIKYU_NYUKIN_SHORI_YMD  DATE --「請求入金処理年月日」
	,SIKY_NYKN_DICH_SIKYSH_HSS_KBN  CHAR(1) NOT NULL --「請求入金台帳請求書発送方法区分」
	,FB_NYUKIN_KAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「ＦＢ入金回数」
	,TOSHO_NYUKIN_YOTEI_YMD  DATE --「当初入金予定年月日」
	,NYUKIN_YOTEI_YMD  DATE --「入金予定年月日」
	,NYUKIN_YMD  DATE --「入金年月日」
	,NYUSHUKKIN_NO  NUMBER(14,0) --「入出金番号」
	,KESHIKOMI_NO  CHAR(14) --「消込番号」
	,SIKY_NYKN_DICH_KKYK_SHHRI_KBN  CHAR(2) NOT NULL --「請求入金台帳顧客支払方法区分」
	,SEIKYU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「請求金額」
	,NYUKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「入金金額」
	,SEIKYUZAN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「請求残金額」
	,SIKY_SSHHK_ZNDK_SNSHTS_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「請求差引残高算出金額」
	,TAIRYU_SAIKEN_ID  CHAR(14) --「滞留債権ＩＤ」
	,SIKYSH_SIHKKJ_MTSIKYSH_NO  CHAR(14) --「請求書再発行時元請求書番号」
	,TOSHO_SEIKYUSHO_NO  CHAR(14) --「当初請求書番号」
	,SIKY_NYKN_DICH_TRKSHZM_FLG  CHAR(1) DEFAULT '0' NOT NULL --「請求入金台帳取消済フラグ」
	,SEIKYU_NYUKIN_DAICHO_CMNT  VARCHAR2(150) --「請求入金台帳コメント」
	,KANREN_SEIKYU_NYUKIN_DAICHO_ID  NUMBER(14,0) --「関連請求入金台帳ＩＤ」
	,SSHHK_ZNDK_KIJ_TISH_FLG  CHAR(1) DEFAULT '0' NOT NULL --「差引残高計上対象フラグ」
	,TKSK_BNKTS_SKY_TISH_FLG  CHAR(1) DEFAULT '0' NOT NULL --「督促分割遡及対象フラグ」
	,TOKUSOKU_BUNKATSU_TAISHO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「督促分割対象フラグ」
	,SEIKYUSHO_SHOSHIKI_KBN  CHAR(1) NOT NULL --「請求書書式区分」
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
	,CONSTRAINT ED3901T_PK PRIMARY KEY(
	 SEIKYU_NYUKIN_DAICHO_ID
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3901T_TBL IS '請求入金台帳テーブル'
/

COMMENT ON COLUMN ED3901T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3901T_TBL.SEIKYU_NYUKIN_DAICHO_ID IS '請求入金台帳ＩＤ'
/
COMMENT ON COLUMN ED3901T_TBL.SIKY_NYKN_DICH_TRK_KN_KBN IS '請求入金台帳登録機能区分'
/
COMMENT ON COLUMN ED3901T_TBL.SIKY_NYKN_DICH_TRK_JKN_KBN IS '請求入金台帳登録条件区分'
/
COMMENT ON COLUMN ED3901T_TBL.SEIKYU_NYUKIN_KBN IS '請求入金区分'
/
COMMENT ON COLUMN ED3901T_TBL.SIKY_NYKN_DICH_SIKN_HNTI_KBN IS '請求入金台帳債権判定区分'
/
COMMENT ON COLUMN ED3901T_TBL.SIKY_NYKN_DICH_SISHN_FLG IS '請求入金台帳最新フラグ'
/
COMMENT ON COLUMN ED3901T_TBL.SEIKYUSHO_NO IS '請求書番号'
/
COMMENT ON COLUMN ED3901T_TBL.SEIKYUSHO_TEMPLATE_NO IS '請求書テンプレート番号'
/
COMMENT ON COLUMN ED3901T_TBL.DAIHYO_SEIKYUSHO_TEKIYO IS '代表請求書摘要'
/
COMMENT ON COLUMN ED3901T_TBL.DAIHYO_SEIKYUSHO_BIKO IS '代表請求書備考'
/
COMMENT ON COLUMN ED3901T_TBL.SEIKYUSAKI_TORIHIKISAKI_CD IS '請求先取引先コード'
/
COMMENT ON COLUMN ED3901T_TBL.SIKY_NYKN_DICH_SIKY_STATUS_KBN IS '請求入金台帳請求ステータス区分'
/
COMMENT ON COLUMN ED3901T_TBL.SIKY_NYKN_DICH_NYKN_STATUS_KBN IS '請求入金台帳入金ステータス区分'
/
COMMENT ON COLUMN ED3901T_TBL.SIKY_NYKN_DICH_TIRY_STATUS_KBN IS '請求入金台帳滞留ステータス区分'
/
COMMENT ON COLUMN ED3901T_TBL.SIKY_NYKN_DICH_STATUS_KBN IS '請求入金台帳ステータス区分'
/
COMMENT ON COLUMN ED3901T_TBL.SIKY_NYKN_DICH_NYKN_SHR_KBN IS '請求入金台帳入金処理区分'
/
COMMENT ON COLUMN ED3901T_TBL.SEIKYU_YMD IS '請求年月日'
/
COMMENT ON COLUMN ED3901T_TBL.SEIKYU_NYUKIN_SHORI_YMD IS '請求入金処理年月日'
/
COMMENT ON COLUMN ED3901T_TBL.SIKY_NYKN_DICH_SIKYSH_HSS_KBN IS '請求入金台帳請求書発送方法区分'
/
COMMENT ON COLUMN ED3901T_TBL.FB_NYUKIN_KAISU IS 'ＦＢ入金回数'
/
COMMENT ON COLUMN ED3901T_TBL.TOSHO_NYUKIN_YOTEI_YMD IS '当初入金予定年月日'
/
COMMENT ON COLUMN ED3901T_TBL.NYUKIN_YOTEI_YMD IS '入金予定年月日'
/
COMMENT ON COLUMN ED3901T_TBL.NYUKIN_YMD IS '入金年月日'
/
COMMENT ON COLUMN ED3901T_TBL.NYUSHUKKIN_NO IS '入出金番号'
/
COMMENT ON COLUMN ED3901T_TBL.KESHIKOMI_NO IS '消込番号'
/
COMMENT ON COLUMN ED3901T_TBL.SIKY_NYKN_DICH_KKYK_SHHRI_KBN IS '請求入金台帳顧客支払方法区分'
/
COMMENT ON COLUMN ED3901T_TBL.SEIKYU_AMT IS '請求金額'
/
COMMENT ON COLUMN ED3901T_TBL.NYUKIN_AMT IS '入金金額'
/
COMMENT ON COLUMN ED3901T_TBL.SEIKYUZAN_AMT IS '請求残金額'
/
COMMENT ON COLUMN ED3901T_TBL.SIKY_SSHHK_ZNDK_SNSHTS_AMT IS '請求差引残高算出金額'
/
COMMENT ON COLUMN ED3901T_TBL.TAIRYU_SAIKEN_ID IS '滞留債権ＩＤ'
/
COMMENT ON COLUMN ED3901T_TBL.SIKYSH_SIHKKJ_MTSIKYSH_NO IS '請求書再発行時元請求書番号'
/
COMMENT ON COLUMN ED3901T_TBL.TOSHO_SEIKYUSHO_NO IS '当初請求書番号'
/
COMMENT ON COLUMN ED3901T_TBL.SIKY_NYKN_DICH_TRKSHZM_FLG IS '請求入金台帳取消済フラグ'
/
COMMENT ON COLUMN ED3901T_TBL.SEIKYU_NYUKIN_DAICHO_CMNT IS '請求入金台帳コメント'
/
COMMENT ON COLUMN ED3901T_TBL.KANREN_SEIKYU_NYUKIN_DAICHO_ID IS '関連請求入金台帳ＩＤ'
/
COMMENT ON COLUMN ED3901T_TBL.SSHHK_ZNDK_KIJ_TISH_FLG IS '差引残高計上対象フラグ'
/
COMMENT ON COLUMN ED3901T_TBL.TKSK_BNKTS_SKY_TISH_FLG IS '督促分割遡及対象フラグ'
/
COMMENT ON COLUMN ED3901T_TBL.TOKUSOKU_BUNKATSU_TAISHO_FLG IS '督促分割対象フラグ'
/
COMMENT ON COLUMN ED3901T_TBL.SEIKYUSHO_SHOSHIKI_KBN IS '請求書書式区分'
/
COMMENT ON COLUMN ED3901T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3901T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3901T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3901T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3901T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3901T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3901T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3901T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3901T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3901T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3901T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3901T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
