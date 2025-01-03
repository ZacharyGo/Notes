﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4536W_TBL.sql
-- 物理名：ED4536W_TBL
-- 論理名：機密文書搬送車チャーター便価格マスタＣＳＶファイルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4536W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4536W_TBL (
	 SEKISAN_RECORD_SOSA_KBN  CHAR(1) --「積算レコード操作区分」
	,WK_SKSN_RECORD_SOSA_KBN_NM  VARCHAR2(60) --「ワーク用積算レコード操作区分名称」
	,HANSOSHA_CHARTER_TYPE_KBN  CHAR(1) NOT NULL --「搬送車チャータータイプ区分」
	,WK_HANSOSHA_CHAR_TYPE_KBN_NM  VARCHAR2(60) --「ワーク用搬送車チャータータイプ区分名称」
	,HYOJI_JUN_2  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順２」
	,HANSOSHA_SEKISAI_KBN  CHAR(1) NOT NULL --「搬送車積載区分」
	,WK_HANSOSHA_SEKISAI_KBN_NM  VARCHAR2(60) --「ワーク用搬送車積載区分名称」
	,HYOJI_JUN_1  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順１」
	,SAIDAI_SEKISAI_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「最大積載数量」
	,TANKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「単価金額」
	,TANKA_GENKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「単価原価金額」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,ZENKAI_TEKIYO_KAISHI_YMD  DATE --「前回適用開始年月日」
	,ZENKAI_TEKIYO_SHURYO_YMD  DATE --「前回適用終了年月日」
	,UPLOAD_TABLE_ID  CHAR(11) NOT NULL --「アップロードテーブルＩＤ」
	,TH_HANSOSHA_CHARTER_TYPE_KBN  CHAR(1) --「退避用搬送車チャータータイプ区分」
	,TH_HANSOSHA_SEKISAI_KBN  CHAR(1) --「退避用搬送車積載区分」
	,TH_SAIDAI_SEKISAI_SURYO  NUMBER(9,0) --「退避用最大積載数量」
	,IKKATSU_TORIKOMIYO_TS  TIMESTAMP --「一括取込用タイムスタンプ」
	,IKKATSU_TORIKOMIYO_KAISHA_CD  CHAR(5) --「一括取込用会社コード」
	,IKKATSU_TORIKOMIYO_SOSHIKI_CD  VARCHAR2(6) --「一括取込用組織コード」
	,IKKATSU_TORIKOMIYO_SHAIN_NO  VARCHAR2(8) --「一括取込用社員番号」
	,CSV_WK_GYO_NO  CHAR(7) --「ＣＳＶワーク行番号」
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
	,CONSTRAINT ED4536W_PK PRIMARY KEY(
	 HANSOSHA_CHARTER_TYPE_KBN
	,  HANSOSHA_SEKISAI_KBN
	,  SAIDAI_SEKISAI_SURYO
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4536W_TBL IS '機密文書搬送車チャーター便価格マスタＣＳＶファイルワーク'
/

COMMENT ON COLUMN ED4536W_TBL.SEKISAN_RECORD_SOSA_KBN IS '積算レコード操作区分'
/
COMMENT ON COLUMN ED4536W_TBL.WK_SKSN_RECORD_SOSA_KBN_NM IS 'ワーク用積算レコード操作区分名称'
/
COMMENT ON COLUMN ED4536W_TBL.HANSOSHA_CHARTER_TYPE_KBN IS '搬送車チャータータイプ区分'
/
COMMENT ON COLUMN ED4536W_TBL.WK_HANSOSHA_CHAR_TYPE_KBN_NM IS 'ワーク用搬送車チャータータイプ区分名称'
/
COMMENT ON COLUMN ED4536W_TBL.HYOJI_JUN_2 IS '表示順２'
/
COMMENT ON COLUMN ED4536W_TBL.HANSOSHA_SEKISAI_KBN IS '搬送車積載区分'
/
COMMENT ON COLUMN ED4536W_TBL.WK_HANSOSHA_SEKISAI_KBN_NM IS 'ワーク用搬送車積載区分名称'
/
COMMENT ON COLUMN ED4536W_TBL.HYOJI_JUN_1 IS '表示順１'
/
COMMENT ON COLUMN ED4536W_TBL.SAIDAI_SEKISAI_SURYO IS '最大積載数量'
/
COMMENT ON COLUMN ED4536W_TBL.TANKA_AMT IS '単価金額'
/
COMMENT ON COLUMN ED4536W_TBL.TANKA_GENKA_AMT IS '単価原価金額'
/
COMMENT ON COLUMN ED4536W_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4536W_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4536W_TBL.ZENKAI_TEKIYO_KAISHI_YMD IS '前回適用開始年月日'
/
COMMENT ON COLUMN ED4536W_TBL.ZENKAI_TEKIYO_SHURYO_YMD IS '前回適用終了年月日'
/
COMMENT ON COLUMN ED4536W_TBL.UPLOAD_TABLE_ID IS 'アップロードテーブルＩＤ'
/
COMMENT ON COLUMN ED4536W_TBL.TH_HANSOSHA_CHARTER_TYPE_KBN IS '退避用搬送車チャータータイプ区分'
/
COMMENT ON COLUMN ED4536W_TBL.TH_HANSOSHA_SEKISAI_KBN IS '退避用搬送車積載区分'
/
COMMENT ON COLUMN ED4536W_TBL.TH_SAIDAI_SEKISAI_SURYO IS '退避用最大積載数量'
/
COMMENT ON COLUMN ED4536W_TBL.IKKATSU_TORIKOMIYO_TS IS '一括取込用タイムスタンプ'
/
COMMENT ON COLUMN ED4536W_TBL.IKKATSU_TORIKOMIYO_KAISHA_CD IS '一括取込用会社コード'
/
COMMENT ON COLUMN ED4536W_TBL.IKKATSU_TORIKOMIYO_SOSHIKI_CD IS '一括取込用組織コード'
/
COMMENT ON COLUMN ED4536W_TBL.IKKATSU_TORIKOMIYO_SHAIN_NO IS '一括取込用社員番号'
/
COMMENT ON COLUMN ED4536W_TBL.CSV_WK_GYO_NO IS 'ＣＳＶワーク行番号'
/
COMMENT ON COLUMN ED4536W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4536W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4536W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4536W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4536W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4536W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4536W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4536W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4536W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4536W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4536W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4536W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
