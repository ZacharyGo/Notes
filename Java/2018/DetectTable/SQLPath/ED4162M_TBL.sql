﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4162M_TBL.sql
-- 物理名：ED4162M_TBL
-- 論理名：解約金計算式マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4162M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4162M_TBL (
	 SHOHIN_SERVICE_CD  CHAR(3) NOT NULL --「商品サービスコード」
	,KAIYAKUKIN_KEISANSHIKI_CD  CHAR(3) NOT NULL --「解約金計算式コード」
	,TANKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「単価金額」
	,KAIYAKUKIN_KEISANSHIKI_NAIYO  VARCHAR2(500) --「解約金計算式内容」
	,KIYKKN_KISNSHK_HYJ_NAIYO  VARCHAR2(500) --「解約金計算式表示内容」
	,SHOKI_HYOJI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「初期表示フラグ」
	,KAIYAKUKIN_KEISU  NUMBER(12,3) DEFAULT '0' NOT NULL --「解約金係数」
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
	,CONSTRAINT ED4162M_PK PRIMARY KEY(
	 SHOHIN_SERVICE_CD
	,  KAIYAKUKIN_KEISANSHIKI_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4162M_TBL IS '解約金計算式マスタ'
/

COMMENT ON COLUMN ED4162M_TBL.SHOHIN_SERVICE_CD IS '商品サービスコード'
/
COMMENT ON COLUMN ED4162M_TBL.KAIYAKUKIN_KEISANSHIKI_CD IS '解約金計算式コード'
/
COMMENT ON COLUMN ED4162M_TBL.TANKA_AMT IS '単価金額'
/
COMMENT ON COLUMN ED4162M_TBL.KAIYAKUKIN_KEISANSHIKI_NAIYO IS '解約金計算式内容'
/
COMMENT ON COLUMN ED4162M_TBL.KIYKKN_KISNSHK_HYJ_NAIYO IS '解約金計算式表示内容'
/
COMMENT ON COLUMN ED4162M_TBL.SHOKI_HYOJI_FLG IS '初期表示フラグ'
/
COMMENT ON COLUMN ED4162M_TBL.KAIYAKUKIN_KEISU IS '解約金係数'
/
COMMENT ON COLUMN ED4162M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4162M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4162M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4162M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4162M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4162M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4162M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4162M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4162M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4162M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4162M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4162M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4162M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4162M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
