﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9054M_TBL.sql
-- 物理名：ED9054M_TBL
-- 論理名：社外利用者ロール紐付マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9054M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9054M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,ROLE_ID  CHAR(6) NOT NULL --「ロールＩＤ」
	,TORIHIKISAKI_CD  CHAR(9) NOT NULL --「取引先コード」
	,TORIHIKISAKI_BUSHO_CD  CHAR(4) NOT NULL --「取引先部署コード」
	,SHAGAI_RIYOSHA_NO  CHAR(8) NOT NULL --「社外利用者番号」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,ROLE_FUYO_KBN  CHAR(1) NOT NULL --「ロール付与区分」
	,SHGI_TRKSH_SHGI_RYSH_NO  CHAR(8) --「社外登録者社外利用者番号」
	,SHGI_KSHNSH_SHGI_RYSH_NO  CHAR(8) --「社外更新者社外利用者番号」
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
	,CONSTRAINT ED9054M_PK PRIMARY KEY(
	 ROLE_ID
	,  TORIHIKISAKI_CD
	,  TORIHIKISAKI_BUSHO_CD
	,  SHAGAI_RIYOSHA_NO
	,  TEKIYO_KAISHI_YMD
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9054M_TBL IS '社外利用者ロール紐付マスタ'
/

COMMENT ON COLUMN ED9054M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED9054M_TBL.ROLE_ID IS 'ロールＩＤ'
/
COMMENT ON COLUMN ED9054M_TBL.TORIHIKISAKI_CD IS '取引先コード'
/
COMMENT ON COLUMN ED9054M_TBL.TORIHIKISAKI_BUSHO_CD IS '取引先部署コード'
/
COMMENT ON COLUMN ED9054M_TBL.SHAGAI_RIYOSHA_NO IS '社外利用者番号'
/
COMMENT ON COLUMN ED9054M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED9054M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED9054M_TBL.ROLE_FUYO_KBN IS 'ロール付与区分'
/
COMMENT ON COLUMN ED9054M_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED9054M_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED9054M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9054M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9054M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9054M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9054M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9054M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9054M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9054M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9054M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9054M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9054M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9054M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/