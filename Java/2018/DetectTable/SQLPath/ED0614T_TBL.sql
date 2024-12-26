﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0614T_TBL.sql
-- 物理名：ED0614T_TBL
-- 論理名：受注ＡＥＤ詳細テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0614T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0614T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) NOT NULL --「受注契約変更番号」
	,AED_END_USER_SHYSH_SHBTS_KBN  CHAR(1) NOT NULL --「ＡＥＤエンドユーザー使用者種別区分」
	,AED_END_USER_SETCHI_BASHO_NM  VARCHAR2(60) --「ＡＥＤエンドユーザ設置場所名称」
	,AED_END_USER_TANTO_BUSHO_NM  VARCHAR2(40) --「ＡＥＤエンドユーザ担当部署名称」
	,AED_END_USER_TANTOSHA_NM  VARCHAR2(60) --「ＡＥＤエンドユーザ担当者氏名」
	,AED_END_USER_TANTOSHA_DENWA_NO  VARCHAR2(20) --「ＡＥＤエンドユーザ担当者電話番号」
	,AED_END_USER_TNTS_MAIL_ADDRESS  VARCHAR2(200) --「ＡＥＤエンドユーザ担当者メールアドレス」
	,AED_SONOTA_BIKO  VARCHAR2(500) --「ＡＥＤその他備考」
	,KISHU_PACK_KBN  CHAR(1) NOT NULL --「機種パック区分」
	,AED_HAMBAI_KEITAI_KBN  CHAR(1) NOT NULL --「ＡＥＤ販売形態区分」
	,AED_TEIKI_KOKAN_DAIKIN_KBN  CHAR(1) NOT NULL --「ＡＥＤ定期交換代金区分」
	,AED_HONTAI_HAMBAI_ZEINUKI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「ＡＥＤ本体販売税抜金額」
	,TOKUBETSU_KAKAKUARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「特別価格有フラグ」
	,NOHIN_YOTEI_YMD  DATE --「納品予定年月日」
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
	,CONSTRAINT ED0614T_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  JUCHU_KEIYAKU_HENKO_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0614T_TBL IS '受注ＡＥＤ詳細テーブル'
/

COMMENT ON COLUMN ED0614T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0614T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED0614T_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED0614T_TBL.AED_END_USER_SHYSH_SHBTS_KBN IS 'ＡＥＤエンドユーザー使用者種別区分'
/
COMMENT ON COLUMN ED0614T_TBL.AED_END_USER_SETCHI_BASHO_NM IS 'ＡＥＤエンドユーザ設置場所名称'
/
COMMENT ON COLUMN ED0614T_TBL.AED_END_USER_TANTO_BUSHO_NM IS 'ＡＥＤエンドユーザ担当部署名称'
/
COMMENT ON COLUMN ED0614T_TBL.AED_END_USER_TANTOSHA_NM IS 'ＡＥＤエンドユーザ担当者氏名'
/
COMMENT ON COLUMN ED0614T_TBL.AED_END_USER_TANTOSHA_DENWA_NO IS 'ＡＥＤエンドユーザ担当者電話番号'
/
COMMENT ON COLUMN ED0614T_TBL.AED_END_USER_TNTS_MAIL_ADDRESS IS 'ＡＥＤエンドユーザ担当者メールアドレス'
/
COMMENT ON COLUMN ED0614T_TBL.AED_SONOTA_BIKO IS 'ＡＥＤその他備考'
/
COMMENT ON COLUMN ED0614T_TBL.KISHU_PACK_KBN IS '機種パック区分'
/
COMMENT ON COLUMN ED0614T_TBL.AED_HAMBAI_KEITAI_KBN IS 'ＡＥＤ販売形態区分'
/
COMMENT ON COLUMN ED0614T_TBL.AED_TEIKI_KOKAN_DAIKIN_KBN IS 'ＡＥＤ定期交換代金区分'
/
COMMENT ON COLUMN ED0614T_TBL.AED_HONTAI_HAMBAI_ZEINUKI_AMT IS 'ＡＥＤ本体販売税抜金額'
/
COMMENT ON COLUMN ED0614T_TBL.TOKUBETSU_KAKAKUARI_FLG IS '特別価格有フラグ'
/
COMMENT ON COLUMN ED0614T_TBL.NOHIN_YOTEI_YMD IS '納品予定年月日'
/
COMMENT ON COLUMN ED0614T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0614T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0614T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0614T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0614T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0614T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0614T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0614T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0614T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0614T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0614T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0614T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
