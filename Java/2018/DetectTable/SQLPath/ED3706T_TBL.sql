﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3706T_TBL.sql
-- 物理名：ED3706T_TBL
-- 論理名：督促状テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3706T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3706T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,TOKUSOKUJO_ID  CHAR(14) NOT NULL --「督促状ＩＤ」
	,SEIKYUSHO_NO  CHAR(14) --「請求書番号」
	,TOKUSOKUJO_STATUS_KBN  CHAR(1) NOT NULL --「督促状ステータス区分」
	,TAIRYU_SAIKEN_ID  CHAR(14) --「滞留債権ＩＤ」
	,TOKUSOKU_TESURYO_AMT  NUMBER(13,0) --「督促手数料金額」
	,ENTAI_RISOKU_AMT  NUMBER(13,0) --「延滞利息金額」
	,SEIKYUSHO_HASSO_HOHO_KBN  CHAR(1) NOT NULL --「請求書発送方法区分」
	,SEIKYUSHO_HAKKO_YOTEI_YMD  DATE --「請求書発行予定年月日」
	,SHIHARAI_KIJITSU  DATE --「支払期日」
	,SEIKYU_KANRI_JIGYOSHO_CD  CHAR(6) --「請求管理事業所コード」
	,SIKY_KNR_JGYSH_TNTSH_SHIN_NO  VARCHAR2(8) --「請求管理事業所担当者社員番号」
	,NYUKIN_JIGYOSHO_CD  CHAR(6) --「入金事業所コード」
	,KOKYAKU_SHIHARAI_HOHO_KBN  CHAR(2) NOT NULL --「顧客支払方法区分」
	,JISHA_KOZA_CD  CHAR(4) --「自社口座コード」
	,SEIKYUSHO_SOFUSAKI_KBN  CHAR(1) NOT NULL --「請求書送付先区分」
	,SOFUSAKI_TORIHIKISAKI_CD  CHAR(9) --「送付先取引先コード」
	,SOFUSAKI_TORIHIKISAKI_BUSHO_CD  CHAR(4) --「送付先取引先部署コード」
	,SOFUSAKI_TAISHOSAKI_CD  CHAR(9) --「送付先対象先コード」
	,SEIKYUSHO_ATENA_TSUIKI_JIKO  VARCHAR2(60) --「請求書宛名追記事項」
	,SEIKYUSHO_SOFUSAKI_KEISHO_KBN  CHAR(1) NOT NULL --「請求書送付先敬称区分」
	,SEIKYUSHO_SHOSHIKI_KBN  CHAR(1) NOT NULL --「請求書書式区分」
	,INJI_JIGYOSHO_CD  CHAR(6) --「印字事業所コード」
	,TKSKJ_SHMN_INJ_MNGN_SHRI_KBN  CHAR(1) NOT NULL --「督促状書面印字文言種類区分」
	,SHOMEN_INJI_NAIYO  VARCHAR2(1000) --「書面印字内容」
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
	,CONSTRAINT ED3706T_PK PRIMARY KEY(
	 TOKUSOKUJO_ID
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3706T_TBL IS '督促状テーブル'
/

COMMENT ON COLUMN ED3706T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3706T_TBL.TOKUSOKUJO_ID IS '督促状ＩＤ'
/
COMMENT ON COLUMN ED3706T_TBL.SEIKYUSHO_NO IS '請求書番号'
/
COMMENT ON COLUMN ED3706T_TBL.TOKUSOKUJO_STATUS_KBN IS '督促状ステータス区分'
/
COMMENT ON COLUMN ED3706T_TBL.TAIRYU_SAIKEN_ID IS '滞留債権ＩＤ'
/
COMMENT ON COLUMN ED3706T_TBL.TOKUSOKU_TESURYO_AMT IS '督促手数料金額'
/
COMMENT ON COLUMN ED3706T_TBL.ENTAI_RISOKU_AMT IS '延滞利息金額'
/
COMMENT ON COLUMN ED3706T_TBL.SEIKYUSHO_HASSO_HOHO_KBN IS '請求書発送方法区分'
/
COMMENT ON COLUMN ED3706T_TBL.SEIKYUSHO_HAKKO_YOTEI_YMD IS '請求書発行予定年月日'
/
COMMENT ON COLUMN ED3706T_TBL.SHIHARAI_KIJITSU IS '支払期日'
/
COMMENT ON COLUMN ED3706T_TBL.SEIKYU_KANRI_JIGYOSHO_CD IS '請求管理事業所コード'
/
COMMENT ON COLUMN ED3706T_TBL.SIKY_KNR_JGYSH_TNTSH_SHIN_NO IS '請求管理事業所担当者社員番号'
/
COMMENT ON COLUMN ED3706T_TBL.NYUKIN_JIGYOSHO_CD IS '入金事業所コード'
/
COMMENT ON COLUMN ED3706T_TBL.KOKYAKU_SHIHARAI_HOHO_KBN IS '顧客支払方法区分'
/
COMMENT ON COLUMN ED3706T_TBL.JISHA_KOZA_CD IS '自社口座コード'
/
COMMENT ON COLUMN ED3706T_TBL.SEIKYUSHO_SOFUSAKI_KBN IS '請求書送付先区分'
/
COMMENT ON COLUMN ED3706T_TBL.SOFUSAKI_TORIHIKISAKI_CD IS '送付先取引先コード'
/
COMMENT ON COLUMN ED3706T_TBL.SOFUSAKI_TORIHIKISAKI_BUSHO_CD IS '送付先取引先部署コード'
/
COMMENT ON COLUMN ED3706T_TBL.SOFUSAKI_TAISHOSAKI_CD IS '送付先対象先コード'
/
COMMENT ON COLUMN ED3706T_TBL.SEIKYUSHO_ATENA_TSUIKI_JIKO IS '請求書宛名追記事項'
/
COMMENT ON COLUMN ED3706T_TBL.SEIKYUSHO_SOFUSAKI_KEISHO_KBN IS '請求書送付先敬称区分'
/
COMMENT ON COLUMN ED3706T_TBL.SEIKYUSHO_SHOSHIKI_KBN IS '請求書書式区分'
/
COMMENT ON COLUMN ED3706T_TBL.INJI_JIGYOSHO_CD IS '印字事業所コード'
/
COMMENT ON COLUMN ED3706T_TBL.TKSKJ_SHMN_INJ_MNGN_SHRI_KBN IS '督促状書面印字文言種類区分'
/
COMMENT ON COLUMN ED3706T_TBL.SHOMEN_INJI_NAIYO IS '書面印字内容'
/
COMMENT ON COLUMN ED3706T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3706T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3706T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3706T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3706T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3706T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3706T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3706T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3706T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3706T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3706T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3706T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/