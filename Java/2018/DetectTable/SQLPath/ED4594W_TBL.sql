﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4594W_TBL.sql
-- 物理名：ED4594W_TBL
-- 論理名：ＧＳ保険オプション金額マスタＣＳＶファイルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4594W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4594W_TBL (
	 SEKISAN_RECORD_SOSA_KBN  CHAR(1) --「積算レコード操作区分」
	,WK_SKSN_RECORD_SOSA_KBN_NM  VARCHAR2(60) --「ワーク用積算レコード操作区分名称」
	,GS_HOKEN_KANYU_TYPE_CD  CHAR(4) NOT NULL --「ＧＳ保険加入タイプコード」
	,WK_GS_HOKEN_KANYU_TYPE_NM  VARCHAR2(30) --「ワーク用ＧＳ保険加入タイプ名称」
	,GS_HOKEN_OPTION_HOSHO_NAIYO_SN  CHAR(14) NOT NULL --「ＧＳ保険オプション補償内容連番」
	,GS_HOKEN_OPTION_AMT_SN  CHAR(14) NOT NULL --「ＧＳ保険オプション金額連番」
	,HOKEN_AMT_HYOJI_NAIYO  VARCHAR2(60) --「保険金額表示内容」
	,GETSUGAKU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「月額金額」
	,GS_HOKEN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「ＧＳ保険金額」
	,SISIHSH_KSN_HKNRY_SNSHTS_KEISU  NUMBER(8,5) DEFAULT '0.00000' NOT NULL --「水災補償加算保険料算出係数」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,ZENKAI_TEKIYO_KAISHI_YMD  DATE --「前回適用開始年月日」
	,ZENKAI_TEKIYO_SHURYO_YMD  DATE --「前回適用終了年月日」
	,UPLOAD_TABLE_ID  CHAR(11) NOT NULL --「アップロードテーブルＩＤ」
	,TH_GS_HOKEN_KANYU_TYPE_CD  CHAR(4) --「退避用ＧＳ保険加入タイプコード」
	,TH_GS_HKN_OPTION_HSO_NYO_SN  CHAR(14) --「退避用ＧＳ保険オプション補償内容連番」
	,TH_GS_HOKEN_OPTION_AMT_SN  CHAR(14) --「退避用ＧＳ保険オプション金額連番」
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
	,CONSTRAINT ED4594W_PK PRIMARY KEY(
	 GS_HOKEN_KANYU_TYPE_CD
	,  GS_HOKEN_OPTION_HOSHO_NAIYO_SN
	,  GS_HOKEN_OPTION_AMT_SN
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4594W_TBL IS 'ＧＳ保険オプション金額マスタＣＳＶファイルワーク'
/

COMMENT ON COLUMN ED4594W_TBL.SEKISAN_RECORD_SOSA_KBN IS '積算レコード操作区分'
/
COMMENT ON COLUMN ED4594W_TBL.WK_SKSN_RECORD_SOSA_KBN_NM IS 'ワーク用積算レコード操作区分名称'
/
COMMENT ON COLUMN ED4594W_TBL.GS_HOKEN_KANYU_TYPE_CD IS 'ＧＳ保険加入タイプコード'
/
COMMENT ON COLUMN ED4594W_TBL.WK_GS_HOKEN_KANYU_TYPE_NM IS 'ワーク用ＧＳ保険加入タイプ名称'
/
COMMENT ON COLUMN ED4594W_TBL.GS_HOKEN_OPTION_HOSHO_NAIYO_SN IS 'ＧＳ保険オプション補償内容連番'
/
COMMENT ON COLUMN ED4594W_TBL.GS_HOKEN_OPTION_AMT_SN IS 'ＧＳ保険オプション金額連番'
/
COMMENT ON COLUMN ED4594W_TBL.HOKEN_AMT_HYOJI_NAIYO IS '保険金額表示内容'
/
COMMENT ON COLUMN ED4594W_TBL.GETSUGAKU_AMT IS '月額金額'
/
COMMENT ON COLUMN ED4594W_TBL.GS_HOKEN_AMT IS 'ＧＳ保険金額'
/
COMMENT ON COLUMN ED4594W_TBL.SISIHSH_KSN_HKNRY_SNSHTS_KEISU IS '水災補償加算保険料算出係数'
/
COMMENT ON COLUMN ED4594W_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4594W_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4594W_TBL.ZENKAI_TEKIYO_KAISHI_YMD IS '前回適用開始年月日'
/
COMMENT ON COLUMN ED4594W_TBL.ZENKAI_TEKIYO_SHURYO_YMD IS '前回適用終了年月日'
/
COMMENT ON COLUMN ED4594W_TBL.UPLOAD_TABLE_ID IS 'アップロードテーブルＩＤ'
/
COMMENT ON COLUMN ED4594W_TBL.TH_GS_HOKEN_KANYU_TYPE_CD IS '退避用ＧＳ保険加入タイプコード'
/
COMMENT ON COLUMN ED4594W_TBL.TH_GS_HKN_OPTION_HSO_NYO_SN IS '退避用ＧＳ保険オプション補償内容連番'
/
COMMENT ON COLUMN ED4594W_TBL.TH_GS_HOKEN_OPTION_AMT_SN IS '退避用ＧＳ保険オプション金額連番'
/
COMMENT ON COLUMN ED4594W_TBL.IKKATSU_TORIKOMIYO_TS IS '一括取込用タイムスタンプ'
/
COMMENT ON COLUMN ED4594W_TBL.IKKATSU_TORIKOMIYO_KAISHA_CD IS '一括取込用会社コード'
/
COMMENT ON COLUMN ED4594W_TBL.IKKATSU_TORIKOMIYO_SOSHIKI_CD IS '一括取込用組織コード'
/
COMMENT ON COLUMN ED4594W_TBL.IKKATSU_TORIKOMIYO_SHAIN_NO IS '一括取込用社員番号'
/
COMMENT ON COLUMN ED4594W_TBL.CSV_WK_GYO_NO IS 'ＣＳＶワーク行番号'
/
COMMENT ON COLUMN ED4594W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4594W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4594W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4594W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4594W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4594W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4594W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4594W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4594W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4594W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4594W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4594W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
