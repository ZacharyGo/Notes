﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4410T_TBL.sql
-- 物理名：ED4410T_TBL
-- 論理名：積算常駐資格要件テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4410T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4410T_TBL (
	 KEIYAKU_ID  CHAR(18) NOT NULL --「契約ＩＤ」
	,JOCHU_SHIKAKU_YOKEN_CD  CHAR(4) NOT NULL --「常駐資格要件コード」
	,JOCHU_SHIKAKU_YOKEN_KOMOKU_CD  CHAR(2) NOT NULL --「常駐資格要件項目コード」
	,JOCHU_SHIKAKU_YOKEN_NAIYO_CD  CHAR(2) NOT NULL --「常駐資格要件内容コード」
	,SONOTA_SHIKAKU_YOKEN_NAIYO  VARCHAR2(100) --「その他資格要件内容」
	,SHIKAKU_YOKEN_KAITO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「資格要件回答フラグ」
	,SHIKAKU_YOKEN_KAITO_NINZU  NUMBER(9,0) DEFAULT '0' NOT NULL --「資格要件回答人数」
	,SHIKAKU_YOKEN_KAITO_NAIYO  VARCHAR2(500) --「資格要件回答内容」
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
	,CONSTRAINT ED4410T_PK PRIMARY KEY(
	 KEIYAKU_ID
	,  JOCHU_SHIKAKU_YOKEN_CD
	,  JOCHU_SHIKAKU_YOKEN_KOMOKU_CD
	,  JOCHU_SHIKAKU_YOKEN_NAIYO_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4410T_TBL IS '積算常駐資格要件テーブル'
/

COMMENT ON COLUMN ED4410T_TBL.KEIYAKU_ID IS '契約ＩＤ'
/
COMMENT ON COLUMN ED4410T_TBL.JOCHU_SHIKAKU_YOKEN_CD IS '常駐資格要件コード'
/
COMMENT ON COLUMN ED4410T_TBL.JOCHU_SHIKAKU_YOKEN_KOMOKU_CD IS '常駐資格要件項目コード'
/
COMMENT ON COLUMN ED4410T_TBL.JOCHU_SHIKAKU_YOKEN_NAIYO_CD IS '常駐資格要件内容コード'
/
COMMENT ON COLUMN ED4410T_TBL.SONOTA_SHIKAKU_YOKEN_NAIYO IS 'その他資格要件内容'
/
COMMENT ON COLUMN ED4410T_TBL.SHIKAKU_YOKEN_KAITO_FLG IS '資格要件回答フラグ'
/
COMMENT ON COLUMN ED4410T_TBL.SHIKAKU_YOKEN_KAITO_NINZU IS '資格要件回答人数'
/
COMMENT ON COLUMN ED4410T_TBL.SHIKAKU_YOKEN_KAITO_NAIYO IS '資格要件回答内容'
/
COMMENT ON COLUMN ED4410T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4410T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4410T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4410T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4410T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4410T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4410T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4410T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4410T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4410T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4410T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4410T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
