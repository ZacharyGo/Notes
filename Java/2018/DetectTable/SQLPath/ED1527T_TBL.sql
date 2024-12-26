﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1527T_TBL.sql
-- 物理名：ED1527T_TBL
-- 論理名：仕入明細テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1527T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1527T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SHIIRE_DEMPYO_NO  CHAR(17) NOT NULL --「仕入伝票番号」
	,SHIIRE_DEMPYONAI_SN  CHAR(14) NOT NULL --「仕入伝票内連番」
	,SHIIRE_DEMPYO_MEISAI_SN  NUMBER(3,0) DEFAULT '0' NOT NULL --「仕入伝票明細連番」
	,AKAKURO_KBN  CHAR(1) NOT NULL --「赤黒区分」
	,SAISHIN_FLG  CHAR(1) DEFAULT '0' NOT NULL --「最新フラグ」
	,HIMMEI_CD  CHAR(8) --「品名コード」
	,SHIIRE_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「仕入数量」
	,HATCHU_TANKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「発注単価金額」
	,SHIIRE_TANKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「仕入単価金額」
	,SHIIRE_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「仕入金額」
	,SHOHIZEIGYO_SHIKIBETSU_FLG  CHAR(1) DEFAULT '0' NOT NULL --「消費税行識別フラグ」
	,SHOHIZEI_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「消費税率」
	,SHIIRE_DEMPYO_SHOHIZEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「仕入伝票消費税金額」
	,NYUKA_DATA_ARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「入荷データ有フラグ」
	,BUNNO_KAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「分納回数」
	,JUHATCHU_NO  CHAR(10) --「受発注番号」
	,JUHATCHU_DEMPYONAI_SN  CHAR(14) --「受発注伝票内連番」
	,JUHATCHU_MEISAI_SN  NUMBER(3,0) --「受発注明細連番」
	,URIAGE_DEMPYO_NO  CHAR(17) --「売上伝票番号」
	,URIAGE_DEMPYO_MEISAI_SN  NUMBER(3,0) --「売上伝票明細連番」
	,NYUKA_UKETSUKE_NO  CHAR(10) --「入荷受付番号」
	,NYUKA_UKETSUKE_BANGONAI_SN  CHAR(14) --「入荷受付番号内連番」
	,NYUKA_UKETSUKE_MEISAI_NO  CHAR(2) --「入荷受付明細番号」
	,SHIHARAI_SHINSEI_NO  CHAR(12) --「支払申請番号」
	,CHOTATSU_SHIHARAI_SHINSEI_NO  CHAR(12) --「調達支払申請番号」
	,SHGI_TRKSH_SHGI_RYSH_NO  CHAR(8) --「社外登録者社外利用者番号」
	,SHGI_KSHNSH_SHGI_RYSH_NO  CHAR(8) --「社外更新者社外利用者番号」
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
	,CONSTRAINT ED1527T_PK PRIMARY KEY(
	 SHIIRE_DEMPYO_NO
	,  SHIIRE_DEMPYONAI_SN
	,  SHIIRE_DEMPYO_MEISAI_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1527T_TBL IS '仕入明細テーブル'
/

COMMENT ON COLUMN ED1527T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1527T_TBL.SHIIRE_DEMPYO_NO IS '仕入伝票番号'
/
COMMENT ON COLUMN ED1527T_TBL.SHIIRE_DEMPYONAI_SN IS '仕入伝票内連番'
/
COMMENT ON COLUMN ED1527T_TBL.SHIIRE_DEMPYO_MEISAI_SN IS '仕入伝票明細連番'
/
COMMENT ON COLUMN ED1527T_TBL.AKAKURO_KBN IS '赤黒区分'
/
COMMENT ON COLUMN ED1527T_TBL.SAISHIN_FLG IS '最新フラグ'
/
COMMENT ON COLUMN ED1527T_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED1527T_TBL.SHIIRE_SURYO IS '仕入数量'
/
COMMENT ON COLUMN ED1527T_TBL.HATCHU_TANKA_AMT IS '発注単価金額'
/
COMMENT ON COLUMN ED1527T_TBL.SHIIRE_TANKA_AMT IS '仕入単価金額'
/
COMMENT ON COLUMN ED1527T_TBL.SHIIRE_AMT IS '仕入金額'
/
COMMENT ON COLUMN ED1527T_TBL.SHOHIZEIGYO_SHIKIBETSU_FLG IS '消費税行識別フラグ'
/
COMMENT ON COLUMN ED1527T_TBL.SHOHIZEI_RITSU IS '消費税率'
/
COMMENT ON COLUMN ED1527T_TBL.SHIIRE_DEMPYO_SHOHIZEI_AMT IS '仕入伝票消費税金額'
/
COMMENT ON COLUMN ED1527T_TBL.NYUKA_DATA_ARI_FLG IS '入荷データ有フラグ'
/
COMMENT ON COLUMN ED1527T_TBL.BUNNO_KAISU IS '分納回数'
/
COMMENT ON COLUMN ED1527T_TBL.JUHATCHU_NO IS '受発注番号'
/
COMMENT ON COLUMN ED1527T_TBL.JUHATCHU_DEMPYONAI_SN IS '受発注伝票内連番'
/
COMMENT ON COLUMN ED1527T_TBL.JUHATCHU_MEISAI_SN IS '受発注明細連番'
/
COMMENT ON COLUMN ED1527T_TBL.URIAGE_DEMPYO_NO IS '売上伝票番号'
/
COMMENT ON COLUMN ED1527T_TBL.URIAGE_DEMPYO_MEISAI_SN IS '売上伝票明細連番'
/
COMMENT ON COLUMN ED1527T_TBL.NYUKA_UKETSUKE_NO IS '入荷受付番号'
/
COMMENT ON COLUMN ED1527T_TBL.NYUKA_UKETSUKE_BANGONAI_SN IS '入荷受付番号内連番'
/
COMMENT ON COLUMN ED1527T_TBL.NYUKA_UKETSUKE_MEISAI_NO IS '入荷受付明細番号'
/
COMMENT ON COLUMN ED1527T_TBL.SHIHARAI_SHINSEI_NO IS '支払申請番号'
/
COMMENT ON COLUMN ED1527T_TBL.CHOTATSU_SHIHARAI_SHINSEI_NO IS '調達支払申請番号'
/
COMMENT ON COLUMN ED1527T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED1527T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED1527T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1527T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1527T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1527T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1527T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1527T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1527T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1527T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1527T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1527T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1527T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1527T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/