﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4199M_TBL.sql
-- 物理名：ED4199M_TBL
-- 論理名：課金種別マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4199M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4199M_TBL (
	 SHOHIN_SERVICE_CD  CHAR(3) NOT NULL --「商品サービスコード」
	,KAKIN_BUNRUI_KBN  CHAR(1) NOT NULL --「課金分類区分」
	,KAKIN_KBN  CHAR(1) NOT NULL --「課金区分」
	,KAKIN_SHUBETSU_CD  CHAR(3) NOT NULL --「課金種別コード」
	,KAKIN_SHUBETSU_NM  VARCHAR2(60) --「課金種別名称」
	,TORIHIKISAKI_CD  CHAR(9) NOT NULL --「取引先コード」
	,HYOJI_JUN_1  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順１」
	,KAKIN_JOKEN_NAIYO  VARCHAR2(30) --「課金条件内容」
	,HYOJI_JUN_2  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順２」
	,TANKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「単価金額」
	,SHOKI_HYOJI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「初期表示フラグ」
	,HEIJITSU_KYUJITSU_KBN  CHAR(1) NOT NULL --「平日休日区分」
	,NYUSHUKKINKI_RYOGAEKI_KISHU_CD  CHAR(8) --「入出金機両替機機種コード」
	,KISHU_NM  VARCHAR2(30) --「機種名称」
	,JIGYO_SEGMENT_CD  CHAR(3) --「事業セグメントコード」
	,JUCHU_SHORI_KBN  CHAR(2) NOT NULL --「受注処理区分」
	,RYOKIN_KBN  CHAR(5) NOT NULL --「料金区分」
	,HISSU_FLG  CHAR(1) DEFAULT '0' NOT NULL --「必須フラグ」
	,SEIKYU_SHIHARAI_CD  CHAR(3) --「請求支払コード」
	,KIHON_RYOKIN_TYPE_CD  CHAR(3) --「基本料金タイプコード」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
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
	,CONSTRAINT ED4199M_PK PRIMARY KEY(
	 SHOHIN_SERVICE_CD
	,  KAKIN_BUNRUI_KBN
	,  KAKIN_KBN
	,  KAKIN_SHUBETSU_CD
	,  TORIHIKISAKI_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4199M_TBL IS '課金種別マスタ'
/

COMMENT ON COLUMN ED4199M_TBL.SHOHIN_SERVICE_CD IS '商品サービスコード'
/
COMMENT ON COLUMN ED4199M_TBL.KAKIN_BUNRUI_KBN IS '課金分類区分'
/
COMMENT ON COLUMN ED4199M_TBL.KAKIN_KBN IS '課金区分'
/
COMMENT ON COLUMN ED4199M_TBL.KAKIN_SHUBETSU_CD IS '課金種別コード'
/
COMMENT ON COLUMN ED4199M_TBL.KAKIN_SHUBETSU_NM IS '課金種別名称'
/
COMMENT ON COLUMN ED4199M_TBL.TORIHIKISAKI_CD IS '取引先コード'
/
COMMENT ON COLUMN ED4199M_TBL.HYOJI_JUN_1 IS '表示順１'
/
COMMENT ON COLUMN ED4199M_TBL.KAKIN_JOKEN_NAIYO IS '課金条件内容'
/
COMMENT ON COLUMN ED4199M_TBL.HYOJI_JUN_2 IS '表示順２'
/
COMMENT ON COLUMN ED4199M_TBL.TANKA_AMT IS '単価金額'
/
COMMENT ON COLUMN ED4199M_TBL.SHOKI_HYOJI_FLG IS '初期表示フラグ'
/
COMMENT ON COLUMN ED4199M_TBL.HEIJITSU_KYUJITSU_KBN IS '平日休日区分'
/
COMMENT ON COLUMN ED4199M_TBL.NYUSHUKKINKI_RYOGAEKI_KISHU_CD IS '入出金機両替機機種コード'
/
COMMENT ON COLUMN ED4199M_TBL.KISHU_NM IS '機種名称'
/
COMMENT ON COLUMN ED4199M_TBL.JIGYO_SEGMENT_CD IS '事業セグメントコード'
/
COMMENT ON COLUMN ED4199M_TBL.JUCHU_SHORI_KBN IS '受注処理区分'
/
COMMENT ON COLUMN ED4199M_TBL.RYOKIN_KBN IS '料金区分'
/
COMMENT ON COLUMN ED4199M_TBL.HISSU_FLG IS '必須フラグ'
/
COMMENT ON COLUMN ED4199M_TBL.SEIKYU_SHIHARAI_CD IS '請求支払コード'
/
COMMENT ON COLUMN ED4199M_TBL.KIHON_RYOKIN_TYPE_CD IS '基本料金タイプコード'
/
COMMENT ON COLUMN ED4199M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4199M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4199M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4199M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4199M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4199M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4199M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4199M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4199M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4199M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4199M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4199M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4199M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4199M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
