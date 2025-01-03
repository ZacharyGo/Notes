﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4555W_TBL.sql
-- 物理名：ED4555W_TBL
-- 論理名：提示価格料金構成マスタＣＳＶファイルワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4555W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4555W_TBL (
	 SEKISAN_RECORD_SOSA_KBN  CHAR(1) --「積算レコード操作区分」
	,WK_SKSN_RECORD_SOSA_KBN_NM  VARCHAR2(60) --「ワーク用積算レコード操作区分名称」
	,SHOHIN_SERVICE_CD  CHAR(3) NOT NULL --「商品サービスコード」
	,WK_SHOHIN_SERVICE_NM  VARCHAR2(60) --「ワーク用商品サービス名称」
	,MTSMR_SKSI_M_GMN_KNGK_KMK_KBN  CHAR(2) NOT NULL --「見積作成明細画面金額項目区分」
	,WK_M_SKSI_M_GMN_KNGK_K_KBN_NM  VARCHAR2(60) --「ワーク用見積作成明細画面金額項目区分名称」
	,TEIJI_KAKAKU_HIYO_KBN  CHAR(2) NOT NULL --「提示価格費用区分」
	,WK_TEIJI_KAKAKU_HIYO_KBN_NM  VARCHAR2(60) --「ワーク用提示価格費用区分名称」
	,TEIJI_KAKAKU_KBN  CHAR(2) NOT NULL --「提示価格区分」
	,WK_TEIJI_KAKAKU_KBN_NM  VARCHAR2(60) --「ワーク用提示価格区分名称」
	,HYOJI_JUN  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順」
	,UCHWK_TEIJI_KAKAKU_HIYO_KBN  CHAR(2) DEFAULT '00' NOT NULL --「内訳提示価格費用区分」
	,WK_UCHWK_TEJ_KAKK_HYO_KBN_NM  VARCHAR2(60) --「ワーク用内訳提示価格費用区分名称」
	,URIAGE_KEIJO_SHUBETSU_KBN  CHAR(2) NOT NULL --「売上計上種別区分」
	,WK_URIAGE_KEIJO_SHBTS_KBN_NM  VARCHAR2(60) --「ワーク用売上計上種別区分名称」
	,JUCHU_SHORI_KBN  CHAR(2) NOT NULL --「受注処理区分」
	,WK_JUCHU_SHORI_KBN_NM  VARCHAR2(60) --「ワーク用受注処理区分名称」
	,RYOKIN_KBN  CHAR(5) NOT NULL --「料金区分」
	,WK_RYOKIN_KBN_NM  VARCHAR2(60) --「ワーク用料金区分名称」
	,NENGAKU_RYOKIN_KBN  CHAR(5) NOT NULL --「年額料金区分」
	,WK_NENGAKU_RYOKIN_KBN_NM  VARCHAR2(60) --「ワーク用年額料金区分名称」
	,SKSN_PATTERN_KBN  CHAR(3) NOT NULL --「積算パターン区分」
	,WK_SKSN_PATTERN_KBN_NM  VARCHAR2(60) --「ワーク用積算パターン区分名称」
	,KIYK_R_KNGK_SKSN_R_KISN_KMK_CD  CHAR(8) --「契約料金金額積算料金計算項目コード」
	,SHNSI_KNGK_SKSN_R_KISN_KMK_CD  CHAR(8) --「申請金額積算料金計算項目コード」
	,HYOJUN_KNGK_SKSN_R_KISN_KMK_CD  CHAR(8) --「標準金額積算料金計算項目コード」
	,GENKA_KNGK_SKSN_R_KISN_KMK_CD  CHAR(8) --「原価金額積算料金計算項目コード」
	,NNGK_S_KNGK_SKSN_R_KISN_KMK_CD  CHAR(8) --「年額申請金額積算料金計算項目コード」
	,KIYK_KITI_KBN  CHAR(1) DEFAULT '0' NOT NULL --「契約形態区分」
	,WK_KIYK_KITI_KBN_NM  VARCHAR2(60) --「ワーク用契約形態区分名称」
	,TEIJI_KAKAKU_HIHYOJI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「提示価格非表示フラグ」
	,WK_TEIJI_KAKAKU_HIHYOJI_FLG_NM  VARCHAR2(60) --「ワーク用提示価格非表示フラグ名称」
	,TEIJI_KAKAKU_HENKOFUKA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「提示価格変更不可フラグ」
	,WK_TIJ_KAKAKU_HENKOFUKA_FLG_NM  VARCHAR2(60) --「ワーク用提示価格変更不可フラグ名称」
	,GOKEIGYO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「合計行フラグ」
	,WK_GOKEIGYO_FLG_NM  VARCHAR2(60) --「ワーク用合計行フラグ名称」
	,HASU_CHOSEI_TAISHO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「端数調整対象フラグ」
	,WK_HASU_CHOSEI_TAISHO_FLG_NM  VARCHAR2(60) --「ワーク用端数調整対象フラグ名称」
	,NEBIKI_TAISHOGAI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「値引対象外フラグ」
	,WK_NEBIKI_TAISHOGAI_FLG_NM  VARCHAR2(60) --「ワーク用値引対象外フラグ名称」
	,YOSHIN_JOGEN_KISN_TISH_FLG  CHAR(1) DEFAULT '0' NOT NULL --「与信上限額計算対象フラグ」
	,WK_YSHN_JGN_KISN_TISH_FLG_NM  VARCHAR2(60) --「ワーク用与信上限額計算対象フラグ名称」
	,YOSHIN_JOGEN_KISN_TISH_AMT_KBN  CHAR(2) DEFAULT '00' NOT NULL --「与信上限額計算対象金額区分」
	,WK_YSHN_JGN_KISN_TISH_A_KBN_NM  VARCHAR2(60) --「ワーク用与信上限額計算対象金額区分名称」
	,SHONIN_KIJUN_AMT_KBN  CHAR(2) DEFAULT '00' NOT NULL --「承認基準金額区分」
	,WK_SHONIN_KIJUN_AMT_KBN_NM  VARCHAR2(60) --「ワーク用承認基準金額区分名称」
	,KIYK_JH_TRK_HYJSK_GMN_KMK_NO  NUMBER(3,0) DEFAULT '0' NOT NULL --「契約情報登録表示先画面項目番号」
	,JSSH_JGYSH_GYM_SHBTS_KBN  CHAR(2) DEFAULT '00' NOT NULL --「実施事業所業務種別区分」
	,WK_JSSH_JGYS_GYM_SHBT_KBN_NM  VARCHAR2(60) --「ワーク用実施事業所業務種別区分名称」
	,KEIJOSAKI_NAIYO  VARCHAR2(60) --「計上先内容」
	,SHIKIN_KANRI_TAISHO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「資金管理対象フラグ」
	,WK_SHIKIN_KANRI_TAISHO_FLG_NM  VARCHAR2(60) --「ワーク用資金管理対象フラグ名称」
	,GYM_ITK_TISH_FLG  CHAR(1) DEFAULT '0' NOT NULL --「業務委託対象フラグ」
	,WK_GYM_ITK_TISH_FLG_NM  VARCHAR2(60) --「ワーク用業務委託対象フラグ名称」
	,SEIKYU_SHIHARAI_CD  CHAR(3) --「請求支払コード」
	,WK_SEIKYU_SHIHARAI_CD_NM  VARCHAR2(50) --「ワーク用請求支払コード名称」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,ZENKAI_TEKIYO_KAISHI_YMD  DATE --「前回適用開始年月日」
	,ZENKAI_TEKIYO_SHURYO_YMD  DATE --「前回適用終了年月日」
	,UPLOAD_TABLE_ID  CHAR(11) NOT NULL --「アップロードテーブルＩＤ」
	,TH_SHOHIN_SERVICE_CD  CHAR(3) --「退避用商品サービスコード」
	,TH_TEIJI_KAKAKU_HIYO_KBN  CHAR(2) --「退避用提示価格費用区分」
	,TH_TEIJI_KAKAKU_KBN  CHAR(2) --「退避用提示価格区分」
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
	,CONSTRAINT ED4555W_PK PRIMARY KEY(
	 SHOHIN_SERVICE_CD
	,  TEIJI_KAKAKU_HIYO_KBN
	,  TEIJI_KAKAKU_KBN
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4555W_TBL IS '提示価格料金構成マスタＣＳＶファイルワーク'
/

COMMENT ON COLUMN ED4555W_TBL.SEKISAN_RECORD_SOSA_KBN IS '積算レコード操作区分'
/
COMMENT ON COLUMN ED4555W_TBL.WK_SKSN_RECORD_SOSA_KBN_NM IS 'ワーク用積算レコード操作区分名称'
/
COMMENT ON COLUMN ED4555W_TBL.SHOHIN_SERVICE_CD IS '商品サービスコード'
/
COMMENT ON COLUMN ED4555W_TBL.WK_SHOHIN_SERVICE_NM IS 'ワーク用商品サービス名称'
/
COMMENT ON COLUMN ED4555W_TBL.MTSMR_SKSI_M_GMN_KNGK_KMK_KBN IS '見積作成明細画面金額項目区分'
/
COMMENT ON COLUMN ED4555W_TBL.WK_M_SKSI_M_GMN_KNGK_K_KBN_NM IS 'ワーク用見積作成明細画面金額項目区分名称'
/
COMMENT ON COLUMN ED4555W_TBL.TEIJI_KAKAKU_HIYO_KBN IS '提示価格費用区分'
/
COMMENT ON COLUMN ED4555W_TBL.WK_TEIJI_KAKAKU_HIYO_KBN_NM IS 'ワーク用提示価格費用区分名称'
/
COMMENT ON COLUMN ED4555W_TBL.TEIJI_KAKAKU_KBN IS '提示価格区分'
/
COMMENT ON COLUMN ED4555W_TBL.WK_TEIJI_KAKAKU_KBN_NM IS 'ワーク用提示価格区分名称'
/
COMMENT ON COLUMN ED4555W_TBL.HYOJI_JUN IS '表示順'
/
COMMENT ON COLUMN ED4555W_TBL.UCHWK_TEIJI_KAKAKU_HIYO_KBN IS '内訳提示価格費用区分'
/
COMMENT ON COLUMN ED4555W_TBL.WK_UCHWK_TEJ_KAKK_HYO_KBN_NM IS 'ワーク用内訳提示価格費用区分名称'
/
COMMENT ON COLUMN ED4555W_TBL.URIAGE_KEIJO_SHUBETSU_KBN IS '売上計上種別区分'
/
COMMENT ON COLUMN ED4555W_TBL.WK_URIAGE_KEIJO_SHBTS_KBN_NM IS 'ワーク用売上計上種別区分名称'
/
COMMENT ON COLUMN ED4555W_TBL.JUCHU_SHORI_KBN IS '受注処理区分'
/
COMMENT ON COLUMN ED4555W_TBL.WK_JUCHU_SHORI_KBN_NM IS 'ワーク用受注処理区分名称'
/
COMMENT ON COLUMN ED4555W_TBL.RYOKIN_KBN IS '料金区分'
/
COMMENT ON COLUMN ED4555W_TBL.WK_RYOKIN_KBN_NM IS 'ワーク用料金区分名称'
/
COMMENT ON COLUMN ED4555W_TBL.NENGAKU_RYOKIN_KBN IS '年額料金区分'
/
COMMENT ON COLUMN ED4555W_TBL.WK_NENGAKU_RYOKIN_KBN_NM IS 'ワーク用年額料金区分名称'
/
COMMENT ON COLUMN ED4555W_TBL.SKSN_PATTERN_KBN IS '積算パターン区分'
/
COMMENT ON COLUMN ED4555W_TBL.WK_SKSN_PATTERN_KBN_NM IS 'ワーク用積算パターン区分名称'
/
COMMENT ON COLUMN ED4555W_TBL.KIYK_R_KNGK_SKSN_R_KISN_KMK_CD IS '契約料金金額積算料金計算項目コード'
/
COMMENT ON COLUMN ED4555W_TBL.SHNSI_KNGK_SKSN_R_KISN_KMK_CD IS '申請金額積算料金計算項目コード'
/
COMMENT ON COLUMN ED4555W_TBL.HYOJUN_KNGK_SKSN_R_KISN_KMK_CD IS '標準金額積算料金計算項目コード'
/
COMMENT ON COLUMN ED4555W_TBL.GENKA_KNGK_SKSN_R_KISN_KMK_CD IS '原価金額積算料金計算項目コード'
/
COMMENT ON COLUMN ED4555W_TBL.NNGK_S_KNGK_SKSN_R_KISN_KMK_CD IS '年額申請金額積算料金計算項目コード'
/
COMMENT ON COLUMN ED4555W_TBL.KIYK_KITI_KBN IS '契約形態区分'
/
COMMENT ON COLUMN ED4555W_TBL.WK_KIYK_KITI_KBN_NM IS 'ワーク用契約形態区分名称'
/
COMMENT ON COLUMN ED4555W_TBL.TEIJI_KAKAKU_HIHYOJI_FLG IS '提示価格非表示フラグ'
/
COMMENT ON COLUMN ED4555W_TBL.WK_TEIJI_KAKAKU_HIHYOJI_FLG_NM IS 'ワーク用提示価格非表示フラグ名称'
/
COMMENT ON COLUMN ED4555W_TBL.TEIJI_KAKAKU_HENKOFUKA_FLG IS '提示価格変更不可フラグ'
/
COMMENT ON COLUMN ED4555W_TBL.WK_TIJ_KAKAKU_HENKOFUKA_FLG_NM IS 'ワーク用提示価格変更不可フラグ名称'
/
COMMENT ON COLUMN ED4555W_TBL.GOKEIGYO_FLG IS '合計行フラグ'
/
COMMENT ON COLUMN ED4555W_TBL.WK_GOKEIGYO_FLG_NM IS 'ワーク用合計行フラグ名称'
/
COMMENT ON COLUMN ED4555W_TBL.HASU_CHOSEI_TAISHO_FLG IS '端数調整対象フラグ'
/
COMMENT ON COLUMN ED4555W_TBL.WK_HASU_CHOSEI_TAISHO_FLG_NM IS 'ワーク用端数調整対象フラグ名称'
/
COMMENT ON COLUMN ED4555W_TBL.NEBIKI_TAISHOGAI_FLG IS '値引対象外フラグ'
/
COMMENT ON COLUMN ED4555W_TBL.WK_NEBIKI_TAISHOGAI_FLG_NM IS 'ワーク用値引対象外フラグ名称'
/
COMMENT ON COLUMN ED4555W_TBL.YOSHIN_JOGEN_KISN_TISH_FLG IS '与信上限額計算対象フラグ'
/
COMMENT ON COLUMN ED4555W_TBL.WK_YSHN_JGN_KISN_TISH_FLG_NM IS 'ワーク用与信上限額計算対象フラグ名称'
/
COMMENT ON COLUMN ED4555W_TBL.YOSHIN_JOGEN_KISN_TISH_AMT_KBN IS '与信上限額計算対象金額区分'
/
COMMENT ON COLUMN ED4555W_TBL.WK_YSHN_JGN_KISN_TISH_A_KBN_NM IS 'ワーク用与信上限額計算対象金額区分名称'
/
COMMENT ON COLUMN ED4555W_TBL.SHONIN_KIJUN_AMT_KBN IS '承認基準金額区分'
/
COMMENT ON COLUMN ED4555W_TBL.WK_SHONIN_KIJUN_AMT_KBN_NM IS 'ワーク用承認基準金額区分名称'
/
COMMENT ON COLUMN ED4555W_TBL.KIYK_JH_TRK_HYJSK_GMN_KMK_NO IS '契約情報登録表示先画面項目番号'
/
COMMENT ON COLUMN ED4555W_TBL.JSSH_JGYSH_GYM_SHBTS_KBN IS '実施事業所業務種別区分'
/
COMMENT ON COLUMN ED4555W_TBL.WK_JSSH_JGYS_GYM_SHBT_KBN_NM IS 'ワーク用実施事業所業務種別区分名称'
/
COMMENT ON COLUMN ED4555W_TBL.KEIJOSAKI_NAIYO IS '計上先内容'
/
COMMENT ON COLUMN ED4555W_TBL.SHIKIN_KANRI_TAISHO_FLG IS '資金管理対象フラグ'
/
COMMENT ON COLUMN ED4555W_TBL.WK_SHIKIN_KANRI_TAISHO_FLG_NM IS 'ワーク用資金管理対象フラグ名称'
/
COMMENT ON COLUMN ED4555W_TBL.GYM_ITK_TISH_FLG IS '業務委託対象フラグ'
/
COMMENT ON COLUMN ED4555W_TBL.WK_GYM_ITK_TISH_FLG_NM IS 'ワーク用業務委託対象フラグ名称'
/
COMMENT ON COLUMN ED4555W_TBL.SEIKYU_SHIHARAI_CD IS '請求支払コード'
/
COMMENT ON COLUMN ED4555W_TBL.WK_SEIKYU_SHIHARAI_CD_NM IS 'ワーク用請求支払コード名称'
/
COMMENT ON COLUMN ED4555W_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4555W_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4555W_TBL.ZENKAI_TEKIYO_KAISHI_YMD IS '前回適用開始年月日'
/
COMMENT ON COLUMN ED4555W_TBL.ZENKAI_TEKIYO_SHURYO_YMD IS '前回適用終了年月日'
/
COMMENT ON COLUMN ED4555W_TBL.UPLOAD_TABLE_ID IS 'アップロードテーブルＩＤ'
/
COMMENT ON COLUMN ED4555W_TBL.TH_SHOHIN_SERVICE_CD IS '退避用商品サービスコード'
/
COMMENT ON COLUMN ED4555W_TBL.TH_TEIJI_KAKAKU_HIYO_KBN IS '退避用提示価格費用区分'
/
COMMENT ON COLUMN ED4555W_TBL.TH_TEIJI_KAKAKU_KBN IS '退避用提示価格区分'
/
COMMENT ON COLUMN ED4555W_TBL.IKKATSU_TORIKOMIYO_TS IS '一括取込用タイムスタンプ'
/
COMMENT ON COLUMN ED4555W_TBL.IKKATSU_TORIKOMIYO_KAISHA_CD IS '一括取込用会社コード'
/
COMMENT ON COLUMN ED4555W_TBL.IKKATSU_TORIKOMIYO_SOSHIKI_CD IS '一括取込用組織コード'
/
COMMENT ON COLUMN ED4555W_TBL.IKKATSU_TORIKOMIYO_SHAIN_NO IS '一括取込用社員番号'
/
COMMENT ON COLUMN ED4555W_TBL.CSV_WK_GYO_NO IS 'ＣＳＶワーク行番号'
/
COMMENT ON COLUMN ED4555W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4555W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4555W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4555W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4555W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4555W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4555W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4555W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4555W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4555W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4555W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4555W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
