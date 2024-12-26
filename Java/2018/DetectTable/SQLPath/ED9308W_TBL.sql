﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9308W_TBL.sql
-- 物理名：ED9308W_TBL
-- 論理名：商品サービス分類変更ワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9308W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9308W_TBL (
	 SHOHIN_SERVICE_CD  CHAR(3) NOT NULL --「商品サービスコード」
	,SHOHIN_SERVICE_NM  VARCHAR2(60) --「商品サービス名称」
	,JIGYO_SEGMENT_CD  CHAR(3) --「事業セグメントコード」
	,SHOHIN_SERVICE_SHUBETSU_CD  CHAR(3) --「商品サービス種別コード」
	,SHOHIN_SERVICE_BUNRUI_CD  CHAR(6) --「商品サービス分類コード」
	,KEIYAKU_CHOKI_RINJI_KBN  CHAR(1) NOT NULL --「契約長期臨時区分」
	,HOKEN_SHOHIN_FLG  CHAR(1) DEFAULT '0' NOT NULL --「保険商品フラグ」
	,SHOHIN_SERVICE_CHOHYO_NM  VARCHAR2(60) --「商品サービス帳票名称」
	,SHHN_SERVICE_SHKN_JGYSH_CD  CHAR(6) --「商品サービス主管事業所コード」
	,SHHN_SERVICE_HMBI_JTI_KBN  CHAR(2) NOT NULL --「商品サービス販売状態区分」
	,KYUSHOHIN_SERVICE_CD  CHAR(3) --「旧商品サービスコード」
	,DAIHYO_SHOHIN_SERVICE_CD  CHAR(3) --「代表商品サービスコード」
	,SHOHIN_SERVICE_PLAN_KBN  CHAR(1) NOT NULL --「商品サービスプラン区分」
	,YAKKAN_CD  CHAR(5) --「約款コード」
	,URIAGE_KOGAKU_JUCHU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「売上高額受注金額」
	,SKSN_SHOKI_DATA_SAKUSEI_KBN  CHAR(2) NOT NULL --「積算初期データ作成区分」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,RONRI_SAKUJO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「論理削除フラグ」
	,SHOHIN_SERVICE_SHORI_YMD  DATE --「商品サービス処理年月日」
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
	,CONSTRAINT ED9308W_PK PRIMARY KEY(
	 SHOHIN_SERVICE_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9308W_TBL IS '商品サービス分類変更ワーク'
/

COMMENT ON COLUMN ED9308W_TBL.SHOHIN_SERVICE_CD IS '商品サービスコード'
/
COMMENT ON COLUMN ED9308W_TBL.SHOHIN_SERVICE_NM IS '商品サービス名称'
/
COMMENT ON COLUMN ED9308W_TBL.JIGYO_SEGMENT_CD IS '事業セグメントコード'
/
COMMENT ON COLUMN ED9308W_TBL.SHOHIN_SERVICE_SHUBETSU_CD IS '商品サービス種別コード'
/
COMMENT ON COLUMN ED9308W_TBL.SHOHIN_SERVICE_BUNRUI_CD IS '商品サービス分類コード'
/
COMMENT ON COLUMN ED9308W_TBL.KEIYAKU_CHOKI_RINJI_KBN IS '契約長期臨時区分'
/
COMMENT ON COLUMN ED9308W_TBL.HOKEN_SHOHIN_FLG IS '保険商品フラグ'
/
COMMENT ON COLUMN ED9308W_TBL.SHOHIN_SERVICE_CHOHYO_NM IS '商品サービス帳票名称'
/
COMMENT ON COLUMN ED9308W_TBL.SHHN_SERVICE_SHKN_JGYSH_CD IS '商品サービス主管事業所コード'
/
COMMENT ON COLUMN ED9308W_TBL.SHHN_SERVICE_HMBI_JTI_KBN IS '商品サービス販売状態区分'
/
COMMENT ON COLUMN ED9308W_TBL.KYUSHOHIN_SERVICE_CD IS '旧商品サービスコード'
/
COMMENT ON COLUMN ED9308W_TBL.DAIHYO_SHOHIN_SERVICE_CD IS '代表商品サービスコード'
/
COMMENT ON COLUMN ED9308W_TBL.SHOHIN_SERVICE_PLAN_KBN IS '商品サービスプラン区分'
/
COMMENT ON COLUMN ED9308W_TBL.YAKKAN_CD IS '約款コード'
/
COMMENT ON COLUMN ED9308W_TBL.URIAGE_KOGAKU_JUCHU_AMT IS '売上高額受注金額'
/
COMMENT ON COLUMN ED9308W_TBL.SKSN_SHOKI_DATA_SAKUSEI_KBN IS '積算初期データ作成区分'
/
COMMENT ON COLUMN ED9308W_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED9308W_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED9308W_TBL.RONRI_SAKUJO_FLG IS '論理削除フラグ'
/
COMMENT ON COLUMN ED9308W_TBL.SHOHIN_SERVICE_SHORI_YMD IS '商品サービス処理年月日'
/
COMMENT ON COLUMN ED9308W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9308W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9308W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9308W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9308W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9308W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9308W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9308W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9308W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9308W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9308W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9308W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
