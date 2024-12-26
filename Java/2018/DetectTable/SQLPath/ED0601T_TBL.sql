﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0601T_TBL.sql
-- 物理名：ED0601T_TBL
-- 論理名：契約運用資金テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0601T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0601T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KEIYAKU_ID  CHAR(18) NOT NULL --「契約ＩＤ」
	,SHIKIN_KBN  CHAR(1) NOT NULL --「資金区分」
	,UNYO_SHIKIN_KAITEN_KAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「運用資金回転回数」
	,HITSUYO_SHIKIN_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「必要資金数量」
	,JIKO_SHIKIN_UNYO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「自己資金運用金額」
	,TANKI_PRIME_RATE_KEISU  NUMBER(12,3) DEFAULT '0' NOT NULL --「短期プライムレート係数」
	,NENGAKU_HOKENRYO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「年額保険料金額」
	,YOTAKU_YOTEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「預託予定金額」
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
	,CONSTRAINT ED0601T_PK PRIMARY KEY(
	 KEIYAKU_ID
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0601T_TBL IS '契約運用資金テーブル'
/

COMMENT ON COLUMN ED0601T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0601T_TBL.KEIYAKU_ID IS '契約ＩＤ'
/
COMMENT ON COLUMN ED0601T_TBL.SHIKIN_KBN IS '資金区分'
/
COMMENT ON COLUMN ED0601T_TBL.UNYO_SHIKIN_KAITEN_KAISU IS '運用資金回転回数'
/
COMMENT ON COLUMN ED0601T_TBL.HITSUYO_SHIKIN_SURYO IS '必要資金数量'
/
COMMENT ON COLUMN ED0601T_TBL.JIKO_SHIKIN_UNYO_AMT IS '自己資金運用金額'
/
COMMENT ON COLUMN ED0601T_TBL.TANKI_PRIME_RATE_KEISU IS '短期プライムレート係数'
/
COMMENT ON COLUMN ED0601T_TBL.NENGAKU_HOKENRYO_AMT IS '年額保険料金額'
/
COMMENT ON COLUMN ED0601T_TBL.YOTAKU_YOTEI_AMT IS '預託予定金額'
/
COMMENT ON COLUMN ED0601T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0601T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0601T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0601T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0601T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0601T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0601T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0601T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0601T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0601T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0601T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0601T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
