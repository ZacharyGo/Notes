﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0717W_TBL.sql
-- 物理名：ED0717W_TBL
-- 論理名：警備系＿営業送信＿Ｇ６＿画像巡回サービス＿接続カメラワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0717W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0717W_TBL (
	 KBK_SOSHIN_SHKBTS_KEY  CHAR(9) NOT NULL --「ＫＢＫ＿送信識別キー」
	,KBK_SOSHIN_SHKBTS_SN  CHAR(10) NOT NULL --「ＫＢＫ＿送信識別連番」
	,KBK_SOSHIN_SHKBTS_MEISAI_SN  CHAR(10) NOT NULL --「ＫＢＫ＿明細連番」
	,KBK_SETSUZOKU_CAMERA_NO_01  NUMBER(9,0) DEFAULT '0' NOT NULL --「ＫＢＫ＿接続カメラＮｏ１台目」
	,KBK_SETSUZOKU_CAMERA_NO_02  NUMBER(9,0) DEFAULT '0' NOT NULL --「ＫＢＫ＿接続カメラＮｏ２台目」
	,KBK_SETSUZOKU_CAMERA_NO_03  NUMBER(9,0) DEFAULT '0' NOT NULL --「ＫＢＫ＿接続カメラＮｏ３台目」
	,KBK_SETSUZOKU_CAMERA_NO_04  NUMBER(9,0) DEFAULT '0' NOT NULL --「ＫＢＫ＿接続カメラＮｏ４台目」
	,KBK_SETSUZOKU_CAMERA_NO_05  NUMBER(9,0) DEFAULT '0' NOT NULL --「ＫＢＫ＿接続カメラＮｏ５台目」
	,KBK_SETSUZOKU_CAMERA_NO_06  NUMBER(9,0) DEFAULT '0' NOT NULL --「ＫＢＫ＿接続カメラＮｏ６台目」
	,KBK_SETSUZOKU_CAMERA_NO_07  NUMBER(9,0) DEFAULT '0' NOT NULL --「ＫＢＫ＿接続カメラＮｏ７台目」
	,KBK_SETSUZOKU_CAMERA_NO_08  NUMBER(9,0) DEFAULT '0' NOT NULL --「ＫＢＫ＿接続カメラＮｏ８台目」
	,KBK_SETSUZOKU_CAMERA_NO_09  NUMBER(9,0) DEFAULT '0' NOT NULL --「ＫＢＫ＿接続カメラＮｏ９台目」
	,KBK_SETSUZOKU_CAMERA_NO_10  NUMBER(9,0) DEFAULT '0' NOT NULL --「ＫＢＫ＿接続カメラＮｏ１０台目」
	,KBK_SETSUZOKU_CAMERA_NO_11  NUMBER(9,0) DEFAULT '0' NOT NULL --「ＫＢＫ＿接続カメラＮｏ１１台目」
	,KBK_SETSUZOKU_CAMERA_NO_12  NUMBER(9,0) DEFAULT '0' NOT NULL --「ＫＢＫ＿接続カメラＮｏ１２台目」
	,KBK_SETSUZOKU_CAMERA_NO_13  NUMBER(9,0) DEFAULT '0' NOT NULL --「ＫＢＫ＿接続カメラＮｏ１３台目」
	,KBK_SETSUZOKU_CAMERA_NO_14  NUMBER(9,0) DEFAULT '0' NOT NULL --「ＫＢＫ＿接続カメラＮｏ１４台目」
	,KBK_SETSUZOKU_CAMERA_NO_15  NUMBER(9,0) DEFAULT '0' NOT NULL --「ＫＢＫ＿接続カメラＮｏ１５台目」
	,KBK_SETSUZOKU_CAMERA_NO_16  NUMBER(9,0) DEFAULT '0' NOT NULL --「ＫＢＫ＿接続カメラＮｏ１６台目」
	,KBK_YOBI_KOMOKU_01  VARCHAR2(255) --「ＫＢＫ＿予備項目０１」
	,KBK_YOBI_KOMOKU_02  VARCHAR2(255) --「ＫＢＫ＿予備項目０２」
	,KBK_YOBI_KOMOKU_03  VARCHAR2(255) --「ＫＢＫ＿予備項目０３」
	,KBK_YOBI_KOMOKU_04  VARCHAR2(255) --「ＫＢＫ＿予備項目０４」
	,KBK_YOBI_KOMOKU_05  VARCHAR2(255) --「ＫＢＫ＿予備項目０５」
	,KBK_YOBI_KOMOKU_06  VARCHAR2(255) --「ＫＢＫ＿予備項目０６」
	,KBK_YOBI_KOMOKU_07  VARCHAR2(255) --「ＫＢＫ＿予備項目０７」
	,KBK_YOBI_KOMOKU_08  VARCHAR2(255) --「ＫＢＫ＿予備項目０８」
	,KBK_YOBI_KOMOKU_09  VARCHAR2(255) --「ＫＢＫ＿予備項目０９」
	,KBK_YOBI_KOMOKU_10  VARCHAR2(255) --「ＫＢＫ＿予備項目１０」
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
	,CONSTRAINT ED0717W_PK PRIMARY KEY(
	 KBK_SOSHIN_SHKBTS_KEY
	,  KBK_SOSHIN_SHKBTS_SN
	,  KBK_SOSHIN_SHKBTS_MEISAI_SN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0717W_TBL IS '警備系＿営業送信＿Ｇ６＿画像巡回サービス＿接続カメラワーク'
/

COMMENT ON COLUMN ED0717W_TBL.KBK_SOSHIN_SHKBTS_KEY IS 'ＫＢＫ＿送信識別キー'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_SOSHIN_SHKBTS_SN IS 'ＫＢＫ＿送信識別連番'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_SOSHIN_SHKBTS_MEISAI_SN IS 'ＫＢＫ＿明細連番'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_SETSUZOKU_CAMERA_NO_01 IS 'ＫＢＫ＿接続カメラＮｏ１台目'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_SETSUZOKU_CAMERA_NO_02 IS 'ＫＢＫ＿接続カメラＮｏ２台目'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_SETSUZOKU_CAMERA_NO_03 IS 'ＫＢＫ＿接続カメラＮｏ３台目'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_SETSUZOKU_CAMERA_NO_04 IS 'ＫＢＫ＿接続カメラＮｏ４台目'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_SETSUZOKU_CAMERA_NO_05 IS 'ＫＢＫ＿接続カメラＮｏ５台目'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_SETSUZOKU_CAMERA_NO_06 IS 'ＫＢＫ＿接続カメラＮｏ６台目'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_SETSUZOKU_CAMERA_NO_07 IS 'ＫＢＫ＿接続カメラＮｏ７台目'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_SETSUZOKU_CAMERA_NO_08 IS 'ＫＢＫ＿接続カメラＮｏ８台目'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_SETSUZOKU_CAMERA_NO_09 IS 'ＫＢＫ＿接続カメラＮｏ９台目'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_SETSUZOKU_CAMERA_NO_10 IS 'ＫＢＫ＿接続カメラＮｏ１０台目'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_SETSUZOKU_CAMERA_NO_11 IS 'ＫＢＫ＿接続カメラＮｏ１１台目'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_SETSUZOKU_CAMERA_NO_12 IS 'ＫＢＫ＿接続カメラＮｏ１２台目'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_SETSUZOKU_CAMERA_NO_13 IS 'ＫＢＫ＿接続カメラＮｏ１３台目'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_SETSUZOKU_CAMERA_NO_14 IS 'ＫＢＫ＿接続カメラＮｏ１４台目'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_SETSUZOKU_CAMERA_NO_15 IS 'ＫＢＫ＿接続カメラＮｏ１５台目'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_SETSUZOKU_CAMERA_NO_16 IS 'ＫＢＫ＿接続カメラＮｏ１６台目'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_YOBI_KOMOKU_01 IS 'ＫＢＫ＿予備項目０１'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_YOBI_KOMOKU_02 IS 'ＫＢＫ＿予備項目０２'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_YOBI_KOMOKU_03 IS 'ＫＢＫ＿予備項目０３'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_YOBI_KOMOKU_04 IS 'ＫＢＫ＿予備項目０４'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_YOBI_KOMOKU_05 IS 'ＫＢＫ＿予備項目０５'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_YOBI_KOMOKU_06 IS 'ＫＢＫ＿予備項目０６'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_YOBI_KOMOKU_07 IS 'ＫＢＫ＿予備項目０７'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_YOBI_KOMOKU_08 IS 'ＫＢＫ＿予備項目０８'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_YOBI_KOMOKU_09 IS 'ＫＢＫ＿予備項目０９'
/
COMMENT ON COLUMN ED0717W_TBL.KBK_YOBI_KOMOKU_10 IS 'ＫＢＫ＿予備項目１０'
/
COMMENT ON COLUMN ED0717W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0717W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0717W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0717W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0717W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0717W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0717W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0717W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0717W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0717W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0717W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0717W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
