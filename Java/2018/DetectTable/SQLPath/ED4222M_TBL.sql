﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4222M_TBL.sql
-- 物理名：ED4222M_TBL
-- 論理名：積算契約先取引先支払情報マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4222M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4222M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SHOHIN_SERVICE_CD  CHAR(3) NOT NULL --「商品サービスコード」
	,KEIYAKUSAKI_TORIHIKISAKI_CD  CHAR(9) NOT NULL --「契約先取引先コード」
	,KIYKSK_TRHKSK_BSH_CD  CHAR(4) NOT NULL --「契約先取引先部署コード」
	,SHIHARAI_JOKEN_KBN  CHAR(1) NOT NULL --「支払条件区分」
	,SHIHARAI_D  CHAR(2) --「支払日」
	,KOKYAKU_SHIHARAI_HOHO_KBN  CHAR(2) NOT NULL --「顧客支払方法区分」
	,SEIKYUSHO_HYOJI_KIKAN_KAISHI_D  NUMBER(9,0) DEFAULT '0' NOT NULL --「請求書表示期間開始日」
	,SEIKYUSHO_HYOJI_KIKAN_SHURYO_D  NUMBER(9,0) DEFAULT '0' NOT NULL --「請求書表示期間終了日」
	,SEIKYU_KAISHI_M  CHAR(2) --「請求開始月」
	,SEIKYU_KEITAI_KBN  CHAR(2) NOT NULL --「請求形態区分」
	,KESSAN_M  CHAR(2) --「決算月」
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
	,CONSTRAINT ED4222M_PK PRIMARY KEY(
	 SHOHIN_SERVICE_CD
	,  KEIYAKUSAKI_TORIHIKISAKI_CD
	,  KIYKSK_TRHKSK_BSH_CD
	,  KAISHA_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4222M_TBL IS '積算契約先取引先支払情報マスタ'
/

COMMENT ON COLUMN ED4222M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED4222M_TBL.SHOHIN_SERVICE_CD IS '商品サービスコード'
/
COMMENT ON COLUMN ED4222M_TBL.KEIYAKUSAKI_TORIHIKISAKI_CD IS '契約先取引先コード'
/
COMMENT ON COLUMN ED4222M_TBL.KIYKSK_TRHKSK_BSH_CD IS '契約先取引先部署コード'
/
COMMENT ON COLUMN ED4222M_TBL.SHIHARAI_JOKEN_KBN IS '支払条件区分'
/
COMMENT ON COLUMN ED4222M_TBL.SHIHARAI_D IS '支払日'
/
COMMENT ON COLUMN ED4222M_TBL.KOKYAKU_SHIHARAI_HOHO_KBN IS '顧客支払方法区分'
/
COMMENT ON COLUMN ED4222M_TBL.SEIKYUSHO_HYOJI_KIKAN_KAISHI_D IS '請求書表示期間開始日'
/
COMMENT ON COLUMN ED4222M_TBL.SEIKYUSHO_HYOJI_KIKAN_SHURYO_D IS '請求書表示期間終了日'
/
COMMENT ON COLUMN ED4222M_TBL.SEIKYU_KAISHI_M IS '請求開始月'
/
COMMENT ON COLUMN ED4222M_TBL.SEIKYU_KEITAI_KBN IS '請求形態区分'
/
COMMENT ON COLUMN ED4222M_TBL.KESSAN_M IS '決算月'
/
COMMENT ON COLUMN ED4222M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4222M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4222M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4222M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4222M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4222M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4222M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4222M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4222M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4222M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4222M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4222M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4222M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4222M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
