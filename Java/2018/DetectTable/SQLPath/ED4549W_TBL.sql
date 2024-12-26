﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4549W_TBL.sql
-- 物理名：ED4549W_TBL
-- 論理名：入出金機業種マスタＣＳＶファイルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4549W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4549W_TBL (
	 SEKISAN_RECORD_SOSA_KBN  CHAR(1) --「積算レコード操作区分」
	,WK_SKSN_RECORD_SOSA_KBN_NM  VARCHAR2(60) --「ワーク用積算レコード操作区分名称」
	,NYSHKKNK_GYOSHU_CD  CHAR(4) NOT NULL --「入出金機業種コード」
	,NYSHKKNK_GYOSHU_NM  VARCHAR2(60) --「入出金機業種名称」
	,HYOJI_JUN  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順」
	,SHIHEI_1_MANENHI_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「紙幣１万円比率」
	,SHIHEI_5_SENENHI_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「紙幣５千円比率」
	,SHIHEI_2_SENENHI_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「紙幣２千円比率」
	,SHIHEI_SENENHI_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「紙幣千円比率」
	,SHIHEIHI_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「紙幣比率」
	,KOKA_500_ENHI_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「硬貨５００円比率」
	,KOKA_100_ENHI_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「硬貨１００円比率」
	,KOKA_50_ENHI_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「硬貨５０円比率」
	,KOKA_10_ENHI_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「硬貨１０円比率」
	,KOKA_5_ENHI_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「硬貨５円比率」
	,KOKA_1_ENHI_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「硬貨１円比率」
	,KOKAHI_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「硬貨比率」
	,RIYO_FUKA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「利用不可フラグ」
	,WK_RIYO_FUKA_FLG_NM  VARCHAR2(60) --「ワーク用利用不可フラグ名称」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,ZENKAI_TEKIYO_KAISHI_YMD  DATE --「前回適用開始年月日」
	,ZENKAI_TEKIYO_SHURYO_YMD  DATE --「前回適用終了年月日」
	,UPLOAD_TABLE_ID  CHAR(11) NOT NULL --「アップロードテーブルＩＤ」
	,TH_NYSHKKNK_GYOSHU_CD  CHAR(4) --「退避用入出金機業種コード」
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
	,CONSTRAINT ED4549W_PK PRIMARY KEY(
	 NYSHKKNK_GYOSHU_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4549W_TBL IS '入出金機業種マスタＣＳＶファイルワーク'
/

COMMENT ON COLUMN ED4549W_TBL.SEKISAN_RECORD_SOSA_KBN IS '積算レコード操作区分'
/
COMMENT ON COLUMN ED4549W_TBL.WK_SKSN_RECORD_SOSA_KBN_NM IS 'ワーク用積算レコード操作区分名称'
/
COMMENT ON COLUMN ED4549W_TBL.NYSHKKNK_GYOSHU_CD IS '入出金機業種コード'
/
COMMENT ON COLUMN ED4549W_TBL.NYSHKKNK_GYOSHU_NM IS '入出金機業種名称'
/
COMMENT ON COLUMN ED4549W_TBL.HYOJI_JUN IS '表示順'
/
COMMENT ON COLUMN ED4549W_TBL.SHIHEI_1_MANENHI_RITSU IS '紙幣１万円比率'
/
COMMENT ON COLUMN ED4549W_TBL.SHIHEI_5_SENENHI_RITSU IS '紙幣５千円比率'
/
COMMENT ON COLUMN ED4549W_TBL.SHIHEI_2_SENENHI_RITSU IS '紙幣２千円比率'
/
COMMENT ON COLUMN ED4549W_TBL.SHIHEI_SENENHI_RITSU IS '紙幣千円比率'
/
COMMENT ON COLUMN ED4549W_TBL.SHIHEIHI_RITSU IS '紙幣比率'
/
COMMENT ON COLUMN ED4549W_TBL.KOKA_500_ENHI_RITSU IS '硬貨５００円比率'
/
COMMENT ON COLUMN ED4549W_TBL.KOKA_100_ENHI_RITSU IS '硬貨１００円比率'
/
COMMENT ON COLUMN ED4549W_TBL.KOKA_50_ENHI_RITSU IS '硬貨５０円比率'
/
COMMENT ON COLUMN ED4549W_TBL.KOKA_10_ENHI_RITSU IS '硬貨１０円比率'
/
COMMENT ON COLUMN ED4549W_TBL.KOKA_5_ENHI_RITSU IS '硬貨５円比率'
/
COMMENT ON COLUMN ED4549W_TBL.KOKA_1_ENHI_RITSU IS '硬貨１円比率'
/
COMMENT ON COLUMN ED4549W_TBL.KOKAHI_RITSU IS '硬貨比率'
/
COMMENT ON COLUMN ED4549W_TBL.RIYO_FUKA_FLG IS '利用不可フラグ'
/
COMMENT ON COLUMN ED4549W_TBL.WK_RIYO_FUKA_FLG_NM IS 'ワーク用利用不可フラグ名称'
/
COMMENT ON COLUMN ED4549W_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4549W_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4549W_TBL.ZENKAI_TEKIYO_KAISHI_YMD IS '前回適用開始年月日'
/
COMMENT ON COLUMN ED4549W_TBL.ZENKAI_TEKIYO_SHURYO_YMD IS '前回適用終了年月日'
/
COMMENT ON COLUMN ED4549W_TBL.UPLOAD_TABLE_ID IS 'アップロードテーブルＩＤ'
/
COMMENT ON COLUMN ED4549W_TBL.TH_NYSHKKNK_GYOSHU_CD IS '退避用入出金機業種コード'
/
COMMENT ON COLUMN ED4549W_TBL.IKKATSU_TORIKOMIYO_TS IS '一括取込用タイムスタンプ'
/
COMMENT ON COLUMN ED4549W_TBL.IKKATSU_TORIKOMIYO_KAISHA_CD IS '一括取込用会社コード'
/
COMMENT ON COLUMN ED4549W_TBL.IKKATSU_TORIKOMIYO_SOSHIKI_CD IS '一括取込用組織コード'
/
COMMENT ON COLUMN ED4549W_TBL.IKKATSU_TORIKOMIYO_SHAIN_NO IS '一括取込用社員番号'
/
COMMENT ON COLUMN ED4549W_TBL.CSV_WK_GYO_NO IS 'ＣＳＶワーク行番号'
/
COMMENT ON COLUMN ED4549W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4549W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4549W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4549W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4549W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4549W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4549W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4549W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4549W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4549W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4549W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4549W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/