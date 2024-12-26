﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4562W_TBL.sql
-- 物理名：ED4562W_TBL
-- 論理名：積算管理項目中項目マスタＣＳＶファイルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4562W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4562W_TBL (
	 SEKISAN_RECORD_SOSA_KBN  CHAR(1) --「積算レコード操作区分」
	,WK_SKSN_RECORD_SOSA_KBN_NM  VARCHAR2(60) --「ワーク用積算レコード操作区分名称」
	,SKSN_KNR_KOMOKU_CHKMK_CD  CHAR(10) NOT NULL --「積算管理項目中項目コード」
	,SKSN_KNR_KOMOKU_CHKMK_NM  VARCHAR2(100) --「積算管理項目中項目名称」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,RONRI_SAKUJO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「論理削除フラグ」
	,UNYO_KBN  CHAR(1) NOT NULL --「運用区分」
	,WK_UNYO_KBN_NM  VARCHAR2(60) --「ワーク用運用区分名称」
	,SHUKI_TANI_KBN  CHAR(2) NOT NULL --「周期単位区分」
	,WK_SHUKI_TANI_KBN_NM  VARCHAR2(60) --「ワーク用周期単位区分名称」
	,KANRI_KOMOKU_SETTEI_KAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「管理項目設定回数」
	,SHIHARAI_JOKEN_KBN  CHAR(1) NOT NULL --「支払条件区分」
	,WK_SHIHARAI_JOKEN_KBN_NM  VARCHAR2(60) --「ワーク用支払条件区分名称」
	,SEIKYU_HOHO_KBN  CHAR(1) NOT NULL --「請求方法区分」
	,WK_SEIKYU_HOHO_KBN_NM  VARCHAR2(60) --「ワーク用請求方法区分名称」
	,SEIKYU_KEITAI_KBN  CHAR(2) NOT NULL --「請求形態区分」
	,WK_SEIKYU_KEITAI_KBN_NM  VARCHAR2(60) --「ワーク用請求形態区分名称」
	,KIYK_KITI_KBN  CHAR(1) NOT NULL --「契約形態区分」
	,WK_KIYK_KITI_KBN_NM  VARCHAR2(60) --「ワーク用契約形態区分名称」
	,GENKA_HNSH_KN_FLG  CHAR(1) DEFAULT '0' NOT NULL --「原価編集可能フラグ」
	,WK_GENKA_HNWK_KN_FLG_NM  VARCHAR2(60) --「ワーク用原価編集可能フラグ名称」
	,TANKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「単価金額」
	,HYJNGAKU_HNSH_KN_FLG  CHAR(1) DEFAULT '0' NOT NULL --「標準額編集可能フラグ」
	,WK_HYJNGAKU_HNWK_KN_FLG_NM  VARCHAR2(60) --「ワーク用標準額編集可能フラグ名称」
	,HYOJUN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「標準金額」
	,KANRI_KOMOKU_HIYO_TANI_NM  VARCHAR2(5) --「管理項目費用単位名称」
	,HOSHU_MAINTENANCE_KEISU  NUMBER(12,3) DEFAULT '0' NOT NULL --「保守メンテナンス係数」
	,ZENKAI_TEKIYO_KAISHI_YMD  DATE --「前回適用開始年月日」
	,ZENKAI_TEKIYO_SHURYO_YMD  DATE --「前回適用終了年月日」
	,UPLOAD_TABLE_ID  CHAR(11) NOT NULL --「アップロードテーブルＩＤ」
	,TH_SKSN_KNR_KOMOKU_CHKMK_CD  CHAR(10) --「退避用積算管理項目中項目コード」
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
	,CONSTRAINT ED4562W_PK PRIMARY KEY(
	 SKSN_KNR_KOMOKU_CHKMK_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4562W_TBL IS '積算管理項目中項目マスタＣＳＶファイルワーク'
/

COMMENT ON COLUMN ED4562W_TBL.SEKISAN_RECORD_SOSA_KBN IS '積算レコード操作区分'
/
COMMENT ON COLUMN ED4562W_TBL.WK_SKSN_RECORD_SOSA_KBN_NM IS 'ワーク用積算レコード操作区分名称'
/
COMMENT ON COLUMN ED4562W_TBL.SKSN_KNR_KOMOKU_CHKMK_CD IS '積算管理項目中項目コード'
/
COMMENT ON COLUMN ED4562W_TBL.SKSN_KNR_KOMOKU_CHKMK_NM IS '積算管理項目中項目名称'
/
COMMENT ON COLUMN ED4562W_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4562W_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4562W_TBL.RONRI_SAKUJO_FLG IS '論理削除フラグ'
/
COMMENT ON COLUMN ED4562W_TBL.UNYO_KBN IS '運用区分'
/
COMMENT ON COLUMN ED4562W_TBL.WK_UNYO_KBN_NM IS 'ワーク用運用区分名称'
/
COMMENT ON COLUMN ED4562W_TBL.SHUKI_TANI_KBN IS '周期単位区分'
/
COMMENT ON COLUMN ED4562W_TBL.WK_SHUKI_TANI_KBN_NM IS 'ワーク用周期単位区分名称'
/
COMMENT ON COLUMN ED4562W_TBL.KANRI_KOMOKU_SETTEI_KAISU IS '管理項目設定回数'
/
COMMENT ON COLUMN ED4562W_TBL.SHIHARAI_JOKEN_KBN IS '支払条件区分'
/
COMMENT ON COLUMN ED4562W_TBL.WK_SHIHARAI_JOKEN_KBN_NM IS 'ワーク用支払条件区分名称'
/
COMMENT ON COLUMN ED4562W_TBL.SEIKYU_HOHO_KBN IS '請求方法区分'
/
COMMENT ON COLUMN ED4562W_TBL.WK_SEIKYU_HOHO_KBN_NM IS 'ワーク用請求方法区分名称'
/
COMMENT ON COLUMN ED4562W_TBL.SEIKYU_KEITAI_KBN IS '請求形態区分'
/
COMMENT ON COLUMN ED4562W_TBL.WK_SEIKYU_KEITAI_KBN_NM IS 'ワーク用請求形態区分名称'
/
COMMENT ON COLUMN ED4562W_TBL.KIYK_KITI_KBN IS '契約形態区分'
/
COMMENT ON COLUMN ED4562W_TBL.WK_KIYK_KITI_KBN_NM IS 'ワーク用契約形態区分名称'
/
COMMENT ON COLUMN ED4562W_TBL.GENKA_HNSH_KN_FLG IS '原価編集可能フラグ'
/
COMMENT ON COLUMN ED4562W_TBL.WK_GENKA_HNWK_KN_FLG_NM IS 'ワーク用原価編集可能フラグ名称'
/
COMMENT ON COLUMN ED4562W_TBL.TANKA_AMT IS '単価金額'
/
COMMENT ON COLUMN ED4562W_TBL.HYJNGAKU_HNSH_KN_FLG IS '標準額編集可能フラグ'
/
COMMENT ON COLUMN ED4562W_TBL.WK_HYJNGAKU_HNWK_KN_FLG_NM IS 'ワーク用標準額編集可能フラグ名称'
/
COMMENT ON COLUMN ED4562W_TBL.HYOJUN_AMT IS '標準金額'
/
COMMENT ON COLUMN ED4562W_TBL.KANRI_KOMOKU_HIYO_TANI_NM IS '管理項目費用単位名称'
/
COMMENT ON COLUMN ED4562W_TBL.HOSHU_MAINTENANCE_KEISU IS '保守メンテナンス係数'
/
COMMENT ON COLUMN ED4562W_TBL.ZENKAI_TEKIYO_KAISHI_YMD IS '前回適用開始年月日'
/
COMMENT ON COLUMN ED4562W_TBL.ZENKAI_TEKIYO_SHURYO_YMD IS '前回適用終了年月日'
/
COMMENT ON COLUMN ED4562W_TBL.UPLOAD_TABLE_ID IS 'アップロードテーブルＩＤ'
/
COMMENT ON COLUMN ED4562W_TBL.TH_SKSN_KNR_KOMOKU_CHKMK_CD IS '退避用積算管理項目中項目コード'
/
COMMENT ON COLUMN ED4562W_TBL.IKKATSU_TORIKOMIYO_TS IS '一括取込用タイムスタンプ'
/
COMMENT ON COLUMN ED4562W_TBL.IKKATSU_TORIKOMIYO_KAISHA_CD IS '一括取込用会社コード'
/
COMMENT ON COLUMN ED4562W_TBL.IKKATSU_TORIKOMIYO_SOSHIKI_CD IS '一括取込用組織コード'
/
COMMENT ON COLUMN ED4562W_TBL.IKKATSU_TORIKOMIYO_SHAIN_NO IS '一括取込用社員番号'
/
COMMENT ON COLUMN ED4562W_TBL.CSV_WK_GYO_NO IS 'ＣＳＶワーク行番号'
/
COMMENT ON COLUMN ED4562W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4562W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4562W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4562W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4562W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4562W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4562W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4562W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4562W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4562W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4562W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4562W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/