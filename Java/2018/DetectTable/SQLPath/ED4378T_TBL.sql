﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4378T_TBL.sql
-- 物理名：ED4378T_TBL
-- 論理名：積算商品サービスオプションイベント画像テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4378T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4378T_TBL (
	 KAISHA_CD  CHAR(5) --「会社コード」
	,KEIYAKU_ID  CHAR(18) NOT NULL --「契約ＩＤ」
	,SHOHIN_SERVICE_OPTION_SN  CHAR(14) NOT NULL --「商品サービスオプション連番」
	,EVENT_GAZO_SERVICE_SN  CHAR(14) NOT NULL --「イベント画像サービス連番」
	,KANSHI_CAMERA_SHURUI_KBN  CHAR(2) NOT NULL --「監視カメラ種類区分」
	,KAIZODO_KBN  CHAR(1) NOT NULL --「解像度区分」
	,GAZO_CHIKUSEKI_NISSU_KBN  CHAR(1) NOT NULL --「画像蓄積日数区分」
	,GAZO_CHIKUSEKI_EVENT_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「画像蓄積イベント数量」
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
	,CONSTRAINT ED4378T_PK PRIMARY KEY(
	 KEIYAKU_ID
	,  SHOHIN_SERVICE_OPTION_SN
	,  EVENT_GAZO_SERVICE_SN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4378T_TBL IS '積算商品サービスオプションイベント画像テーブル'
/

COMMENT ON COLUMN ED4378T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED4378T_TBL.KEIYAKU_ID IS '契約ＩＤ'
/
COMMENT ON COLUMN ED4378T_TBL.SHOHIN_SERVICE_OPTION_SN IS '商品サービスオプション連番'
/
COMMENT ON COLUMN ED4378T_TBL.EVENT_GAZO_SERVICE_SN IS 'イベント画像サービス連番'
/
COMMENT ON COLUMN ED4378T_TBL.KANSHI_CAMERA_SHURUI_KBN IS '監視カメラ種類区分'
/
COMMENT ON COLUMN ED4378T_TBL.KAIZODO_KBN IS '解像度区分'
/
COMMENT ON COLUMN ED4378T_TBL.GAZO_CHIKUSEKI_NISSU_KBN IS '画像蓄積日数区分'
/
COMMENT ON COLUMN ED4378T_TBL.GAZO_CHIKUSEKI_EVENT_SURYO IS '画像蓄積イベント数量'
/
COMMENT ON COLUMN ED4378T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4378T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4378T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4378T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4378T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4378T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4378T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4378T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4378T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4378T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4378T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4378T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
