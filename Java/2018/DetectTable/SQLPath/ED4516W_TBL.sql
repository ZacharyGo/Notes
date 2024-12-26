﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4516W_TBL.sql
-- 物理名：ED4516W_TBL
-- 論理名：報奨金マスタＣＳＶファイルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4516W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4516W_TBL (
	 SEKISAN_RECORD_SOSA_KBN  CHAR(1) --「積算レコード操作区分」
	,WK_SKSN_RECORD_SOSA_KBN_NM  VARCHAR2(60) --「ワーク用積算レコード操作区分名称」
	,SHOHIN_SERVICE_CD  CHAR(3) NOT NULL --「商品サービスコード」
	,WK_SHOHIN_SERVICE_NM  VARCHAR2(60) --「ワーク用商品サービス名称」
	,HOSHOKIN_CD  CHAR(3) NOT NULL --「報奨金コード」
	,KEIYAKU_BUNRUI_KBN  CHAR(1) DEFAULT '0' NOT NULL --「契約分類区分」
	,WK_KEIYAKU_BUNRUI_KBN_NM  VARCHAR2(60) --「ワーク用契約分類区分名称」
	,HOSHOKIN_KEISANSHIKI_NAIYO  VARCHAR2(500) NOT NULL --「報奨金計算式内容」
	,KIYK_HSHKN_KEISANSHIKI_NAIYO  VARCHAR2(500) NOT NULL --「契約報奨金計算式内容」
	,GYOMU_ITAKU_SERVICE_CD  CHAR(3) --「業務委託サービスコード」
	,GYOMU_ITAKU_SERVICE_NAIYO  VARCHAR2(100) --「業務委託サービス内容」
	,KEIYAKU_KIKAN_JOGEN_TSUKISU  NUMBER(12,3) DEFAULT '0' NOT NULL --「契約期間上限月数」
	,HASU_SHORI_KBN  CHAR(1) DEFAULT '0' NOT NULL --「端数処理区分」
	,WK_HASU_SHORI_KBN_NM  VARCHAR2(60) --「ワーク用端数処理区分名称」
	,HASU_SHORI_KETASU  NUMBER(9,0) DEFAULT '0' NOT NULL --「端数処理桁数」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,ZENKAI_TEKIYO_KAISHI_YMD  DATE --「前回適用開始年月日」
	,ZENKAI_TEKIYO_SHURYO_YMD  DATE --「前回適用終了年月日」
	,UPLOAD_TABLE_ID  CHAR(11) NOT NULL --「アップロードテーブルＩＤ」
	,TH_SHOHIN_SERVICE_CD  CHAR(3) --「退避用商品サービスコード」
	,TH_HOSHOKIN_CD  CHAR(3) --「退避用報奨金コード」
	,TH_KEIYAKU_BUNRUI_KBN  CHAR(1) --「退避用契約分類区分」
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
	,CONSTRAINT ED4516W_PK PRIMARY KEY(
	 SHOHIN_SERVICE_CD
	,  HOSHOKIN_CD
	,  KEIYAKU_BUNRUI_KBN
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4516W_TBL IS '報奨金マスタＣＳＶファイルワーク'
/

COMMENT ON COLUMN ED4516W_TBL.SEKISAN_RECORD_SOSA_KBN IS '積算レコード操作区分'
/
COMMENT ON COLUMN ED4516W_TBL.WK_SKSN_RECORD_SOSA_KBN_NM IS 'ワーク用積算レコード操作区分名称'
/
COMMENT ON COLUMN ED4516W_TBL.SHOHIN_SERVICE_CD IS '商品サービスコード'
/
COMMENT ON COLUMN ED4516W_TBL.WK_SHOHIN_SERVICE_NM IS 'ワーク用商品サービス名称'
/
COMMENT ON COLUMN ED4516W_TBL.HOSHOKIN_CD IS '報奨金コード'
/
COMMENT ON COLUMN ED4516W_TBL.KEIYAKU_BUNRUI_KBN IS '契約分類区分'
/
COMMENT ON COLUMN ED4516W_TBL.WK_KEIYAKU_BUNRUI_KBN_NM IS 'ワーク用契約分類区分名称'
/
COMMENT ON COLUMN ED4516W_TBL.HOSHOKIN_KEISANSHIKI_NAIYO IS '報奨金計算式内容'
/
COMMENT ON COLUMN ED4516W_TBL.KIYK_HSHKN_KEISANSHIKI_NAIYO IS '契約報奨金計算式内容'
/
COMMENT ON COLUMN ED4516W_TBL.GYOMU_ITAKU_SERVICE_CD IS '業務委託サービスコード'
/
COMMENT ON COLUMN ED4516W_TBL.GYOMU_ITAKU_SERVICE_NAIYO IS '業務委託サービス内容'
/
COMMENT ON COLUMN ED4516W_TBL.KEIYAKU_KIKAN_JOGEN_TSUKISU IS '契約期間上限月数'
/
COMMENT ON COLUMN ED4516W_TBL.HASU_SHORI_KBN IS '端数処理区分'
/
COMMENT ON COLUMN ED4516W_TBL.WK_HASU_SHORI_KBN_NM IS 'ワーク用端数処理区分名称'
/
COMMENT ON COLUMN ED4516W_TBL.HASU_SHORI_KETASU IS '端数処理桁数'
/
COMMENT ON COLUMN ED4516W_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4516W_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4516W_TBL.ZENKAI_TEKIYO_KAISHI_YMD IS '前回適用開始年月日'
/
COMMENT ON COLUMN ED4516W_TBL.ZENKAI_TEKIYO_SHURYO_YMD IS '前回適用終了年月日'
/
COMMENT ON COLUMN ED4516W_TBL.UPLOAD_TABLE_ID IS 'アップロードテーブルＩＤ'
/
COMMENT ON COLUMN ED4516W_TBL.TH_SHOHIN_SERVICE_CD IS '退避用商品サービスコード'
/
COMMENT ON COLUMN ED4516W_TBL.TH_HOSHOKIN_CD IS '退避用報奨金コード'
/
COMMENT ON COLUMN ED4516W_TBL.TH_KEIYAKU_BUNRUI_KBN IS '退避用契約分類区分'
/
COMMENT ON COLUMN ED4516W_TBL.IKKATSU_TORIKOMIYO_TS IS '一括取込用タイムスタンプ'
/
COMMENT ON COLUMN ED4516W_TBL.IKKATSU_TORIKOMIYO_KAISHA_CD IS '一括取込用会社コード'
/
COMMENT ON COLUMN ED4516W_TBL.IKKATSU_TORIKOMIYO_SOSHIKI_CD IS '一括取込用組織コード'
/
COMMENT ON COLUMN ED4516W_TBL.IKKATSU_TORIKOMIYO_SHAIN_NO IS '一括取込用社員番号'
/
COMMENT ON COLUMN ED4516W_TBL.CSV_WK_GYO_NO IS 'ＣＳＶワーク行番号'
/
COMMENT ON COLUMN ED4516W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4516W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4516W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4516W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4516W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4516W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4516W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4516W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4516W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4516W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4516W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4516W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/