﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4522W_TBL.sql
-- 物理名：ED4522W_TBL
-- 論理名：機器構成フォロー明細マスタＣＳＶファイルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4522W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4522W_TBL (
	 SEKISAN_RECORD_SOSA_KBN  CHAR(1) --「積算レコード操作区分」
	,WK_SKSN_RECORD_SOSA_KBN_NM  VARCHAR2(60) --「ワーク用積算レコード操作区分名称」
	,KANSHI_KOMOKU_CATEGORY_CD  CHAR(3) NOT NULL --「監視項目カテゴリコード」
	,WK_KANSHI_KOMOKU_CATEGORY_NM  VARCHAR2(300) --「ワーク用監視項目カテゴリ名称」
	,KNSH_KOMOKU_KNSH_HSHK_CD  CHAR(5) NOT NULL --「監視項目監視方式コード」
	,KIKI_KOSEI_FOLLOW_SETTEI_CD  CHAR(3) NOT NULL --「機器構成フォロー設定コード」
	,WK_KIKI_KOSEI_FLLW_SETTEI_NM  VARCHAR2(60) --「ワーク用機器構成フォロー設定名称」
	,KK_KSI_FOLLOW_STTI_SHSI_NO  CHAR(8) NOT NULL --「機器構成フォロー設定詳細番号」
	,KIKI_KOSEI_FOLLOW_MEISAI_SN  CHAR(14) NOT NULL --「機器構成フォロー明細連番」
	,HIMMEI_CD  CHAR(8) --「品名コード」
	,WK_HIMMEI_NM  VARCHAR2(60) --「ワーク用品名名称」
	,HYOJI_JUN_1  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順１」
	,JIGYO_SEGMENT_CD  CHAR(3) --「事業セグメントコード」
	,WK_JIGYO_SEGMENT_NM  VARCHAR2(64) --「ワーク用事業セグメント名称」
	,KIKI_HYOJUN_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「機器標準数量」
	,KIKI_BAIKYAKUHIN_FLG  CHAR(1) DEFAULT '0' NOT NULL --「機器売却品フラグ」
	,WK_KIKI_BAIKYAKUHIN_FLG_NM  VARCHAR2(60) --「ワーク用機器売却品フラグ名称」
	,OKUGAI_KANTSU_ARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「屋外貫通有フラグ」
	,WK_OKUGAI_KANTSU_ARI_FLG_NM  VARCHAR2(60) --「ワーク用屋外貫通有フラグ名称」
	,OKUGAI_KANTSU_KASHOSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「屋外貫通箇所数」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,ZENKAI_TEKIYO_KAISHI_YMD  DATE --「前回適用開始年月日」
	,ZENKAI_TEKIYO_SHURYO_YMD  DATE --「前回適用終了年月日」
	,UPLOAD_TABLE_ID  CHAR(11) NOT NULL --「アップロードテーブルＩＤ」
	,TH_KANSHI_KOMOKU_CATEGORY_CD  CHAR(3) --「退避用監視項目カテゴリコード」
	,TH_KNSH_KOMOKU_KNSH_HSHK_CD  CHAR(5) --「退避用監視項目監視方式コード」
	,TH_KIKI_KOSEI_FLLW_SETTEI_CD  CHAR(3) --「退避用機器構成フォロー設定コード」
	,TH_KK_KSI_FLLW_STTI_SHSI_NO  CHAR(8) --「退避用機器構成フォロー設定詳細番号」
	,TH_KIKI_KOSEI_FLLW_MEISAI_SN  CHAR(14) --「退避用機器構成フォロー明細連番」
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
	,CONSTRAINT ED4522W_PK PRIMARY KEY(
	 KANSHI_KOMOKU_CATEGORY_CD
	,  KNSH_KOMOKU_KNSH_HSHK_CD
	,  KIKI_KOSEI_FOLLOW_SETTEI_CD
	,  KK_KSI_FOLLOW_STTI_SHSI_NO
	,  KIKI_KOSEI_FOLLOW_MEISAI_SN
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4522W_TBL IS '機器構成フォロー明細マスタＣＳＶファイルワーク'
/

COMMENT ON COLUMN ED4522W_TBL.SEKISAN_RECORD_SOSA_KBN IS '積算レコード操作区分'
/
COMMENT ON COLUMN ED4522W_TBL.WK_SKSN_RECORD_SOSA_KBN_NM IS 'ワーク用積算レコード操作区分名称'
/
COMMENT ON COLUMN ED4522W_TBL.KANSHI_KOMOKU_CATEGORY_CD IS '監視項目カテゴリコード'
/
COMMENT ON COLUMN ED4522W_TBL.WK_KANSHI_KOMOKU_CATEGORY_NM IS 'ワーク用監視項目カテゴリ名称'
/
COMMENT ON COLUMN ED4522W_TBL.KNSH_KOMOKU_KNSH_HSHK_CD IS '監視項目監視方式コード'
/
COMMENT ON COLUMN ED4522W_TBL.KIKI_KOSEI_FOLLOW_SETTEI_CD IS '機器構成フォロー設定コード'
/
COMMENT ON COLUMN ED4522W_TBL.WK_KIKI_KOSEI_FLLW_SETTEI_NM IS 'ワーク用機器構成フォロー設定名称'
/
COMMENT ON COLUMN ED4522W_TBL.KK_KSI_FOLLOW_STTI_SHSI_NO IS '機器構成フォロー設定詳細番号'
/
COMMENT ON COLUMN ED4522W_TBL.KIKI_KOSEI_FOLLOW_MEISAI_SN IS '機器構成フォロー明細連番'
/
COMMENT ON COLUMN ED4522W_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED4522W_TBL.WK_HIMMEI_NM IS 'ワーク用品名名称'
/
COMMENT ON COLUMN ED4522W_TBL.HYOJI_JUN_1 IS '表示順１'
/
COMMENT ON COLUMN ED4522W_TBL.JIGYO_SEGMENT_CD IS '事業セグメントコード'
/
COMMENT ON COLUMN ED4522W_TBL.WK_JIGYO_SEGMENT_NM IS 'ワーク用事業セグメント名称'
/
COMMENT ON COLUMN ED4522W_TBL.KIKI_HYOJUN_SURYO IS '機器標準数量'
/
COMMENT ON COLUMN ED4522W_TBL.KIKI_BAIKYAKUHIN_FLG IS '機器売却品フラグ'
/
COMMENT ON COLUMN ED4522W_TBL.WK_KIKI_BAIKYAKUHIN_FLG_NM IS 'ワーク用機器売却品フラグ名称'
/
COMMENT ON COLUMN ED4522W_TBL.OKUGAI_KANTSU_ARI_FLG IS '屋外貫通有フラグ'
/
COMMENT ON COLUMN ED4522W_TBL.WK_OKUGAI_KANTSU_ARI_FLG_NM IS 'ワーク用屋外貫通有フラグ名称'
/
COMMENT ON COLUMN ED4522W_TBL.OKUGAI_KANTSU_KASHOSU IS '屋外貫通箇所数'
/
COMMENT ON COLUMN ED4522W_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4522W_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4522W_TBL.ZENKAI_TEKIYO_KAISHI_YMD IS '前回適用開始年月日'
/
COMMENT ON COLUMN ED4522W_TBL.ZENKAI_TEKIYO_SHURYO_YMD IS '前回適用終了年月日'
/
COMMENT ON COLUMN ED4522W_TBL.UPLOAD_TABLE_ID IS 'アップロードテーブルＩＤ'
/
COMMENT ON COLUMN ED4522W_TBL.TH_KANSHI_KOMOKU_CATEGORY_CD IS '退避用監視項目カテゴリコード'
/
COMMENT ON COLUMN ED4522W_TBL.TH_KNSH_KOMOKU_KNSH_HSHK_CD IS '退避用監視項目監視方式コード'
/
COMMENT ON COLUMN ED4522W_TBL.TH_KIKI_KOSEI_FLLW_SETTEI_CD IS '退避用機器構成フォロー設定コード'
/
COMMENT ON COLUMN ED4522W_TBL.TH_KK_KSI_FLLW_STTI_SHSI_NO IS '退避用機器構成フォロー設定詳細番号'
/
COMMENT ON COLUMN ED4522W_TBL.TH_KIKI_KOSEI_FLLW_MEISAI_SN IS '退避用機器構成フォロー明細連番'
/
COMMENT ON COLUMN ED4522W_TBL.IKKATSU_TORIKOMIYO_TS IS '一括取込用タイムスタンプ'
/
COMMENT ON COLUMN ED4522W_TBL.IKKATSU_TORIKOMIYO_KAISHA_CD IS '一括取込用会社コード'
/
COMMENT ON COLUMN ED4522W_TBL.IKKATSU_TORIKOMIYO_SOSHIKI_CD IS '一括取込用組織コード'
/
COMMENT ON COLUMN ED4522W_TBL.IKKATSU_TORIKOMIYO_SHAIN_NO IS '一括取込用社員番号'
/
COMMENT ON COLUMN ED4522W_TBL.CSV_WK_GYO_NO IS 'ＣＳＶワーク行番号'
/
COMMENT ON COLUMN ED4522W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4522W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4522W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4522W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4522W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4522W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4522W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4522W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4522W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4522W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4522W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4522W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/