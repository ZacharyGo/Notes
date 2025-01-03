﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1559A_TBL.sql
-- 物理名：ED1559A_TBL
-- 論理名：調達依頼変更履歴
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1559A_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1559A_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,HENKO_RIREKI_NO  CHAR(10) NOT NULL --「変更履歴番号」
	,JUCHU_KEIYAKU_MEISAI_SN  CHAR(14) --「受注契約明細連番」
	,SHOKI_TOROKUSHA_SHAIN_NO  VARCHAR2(8) --「初期登録者社員番号」
	,CHOTATSU_IRAI_KAIHEN_YMD  DATE --「調達依頼改変年月日」
	,CHTTS_IRI_KIHNSH_SHIN_NO  VARCHAR2(8) --「調達依頼改変者社員番号」
	,CHTTS_IRI_KIHN_KOMOKU_KBN  CHAR(2) --「調達依頼改変項目区分」
	,CHOTATSU_IRAI_KAIHEMMAE_NAIYO  VARCHAR2(60) --「調達依頼改変前内容」
	,CHOTATSU_IRAI_KAIHENGO_NAIYO  VARCHAR2(60) --「調達依頼改変後内容」
	,CHTTS_IRI_HNK_RIYU_KBNCH_CD  CHAR(4) --「調達依頼変更理由区分値コード」
	,HIMMEI_CD  CHAR(8) --「品名コード」
	,CHTTS_IRI_KIHMME_GNK_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「調達依頼改変前原価金額」
	,CHTTS_IRI_KIHNG_GNK_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「調達依頼改変後原価金額」
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
	,CONSTRAINT ED1559A_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  HENKO_RIREKI_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1559A_TBL IS '調達依頼変更履歴'
/

COMMENT ON COLUMN ED1559A_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1559A_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED1559A_TBL.HENKO_RIREKI_NO IS '変更履歴番号'
/
COMMENT ON COLUMN ED1559A_TBL.JUCHU_KEIYAKU_MEISAI_SN IS '受注契約明細連番'
/
COMMENT ON COLUMN ED1559A_TBL.SHOKI_TOROKUSHA_SHAIN_NO IS '初期登録者社員番号'
/
COMMENT ON COLUMN ED1559A_TBL.CHOTATSU_IRAI_KAIHEN_YMD IS '調達依頼改変年月日'
/
COMMENT ON COLUMN ED1559A_TBL.CHTTS_IRI_KIHNSH_SHIN_NO IS '調達依頼改変者社員番号'
/
COMMENT ON COLUMN ED1559A_TBL.CHTTS_IRI_KIHN_KOMOKU_KBN IS '調達依頼改変項目区分'
/
COMMENT ON COLUMN ED1559A_TBL.CHOTATSU_IRAI_KAIHEMMAE_NAIYO IS '調達依頼改変前内容'
/
COMMENT ON COLUMN ED1559A_TBL.CHOTATSU_IRAI_KAIHENGO_NAIYO IS '調達依頼改変後内容'
/
COMMENT ON COLUMN ED1559A_TBL.CHTTS_IRI_HNK_RIYU_KBNCH_CD IS '調達依頼変更理由区分値コード'
/
COMMENT ON COLUMN ED1559A_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED1559A_TBL.CHTTS_IRI_KIHMME_GNK_AMT IS '調達依頼改変前原価金額'
/
COMMENT ON COLUMN ED1559A_TBL.CHTTS_IRI_KIHNG_GNK_AMT IS '調達依頼改変後原価金額'
/
COMMENT ON COLUMN ED1559A_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED1559A_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED1559A_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1559A_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1559A_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1559A_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1559A_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1559A_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1559A_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1559A_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1559A_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1559A_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1559A_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1559A_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
