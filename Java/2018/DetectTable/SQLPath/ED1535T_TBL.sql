﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1535T_TBL.sql
-- 物理名：ED1535T_TBL
-- 論理名：出荷伝票明細テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1535T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1535T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SHUKKA_DEMPYO_NO  CHAR(17) NOT NULL --「出荷伝票番号」
	,SHUKKA_DEMPYO_MEISAI_SN  CHAR(14) NOT NULL --「出荷伝票明細連番」
	,HIMMEI_CD  CHAR(8) --「品名コード」
	,SHIMPIN_KBN  CHAR(1) --「新品区分」
	,SHUKKA_NYURYOKU_KBN  CHAR(1) NOT NULL --「出荷入力区分」
	,SHUKKA_KAKUNIN_KBN  CHAR(1) --「出荷確認区分」
	,SHUKKA_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「出荷数量」
	,SHUKKA_TANKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「出荷単価金額」
	,SHUKKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「出荷金額」
	,SHIWAKE_PATTERN_HOJO_CD  CHAR(6) --「仕訳パターン補助コード」
	,KENKARI_ID  CHAR(12) --「建仮ＩＤ」
	,TAIYO_KIKAN_TSUKISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「貸与期間月数」
	,JUCHU_KEIYAKU_NO  CHAR(15) --「受注契約番号」
	,JUCHU_KEIYAKU_MEISAI_SN  CHAR(14) --「受注契約明細連番」
	,CHUMON_NO  CHAR(17) --「注文番号」
	,CHUMON_DEMPYO_MEISAI_SN  CHAR(14) --「注文伝票明細連番」
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
	,CONSTRAINT ED1535T_PK PRIMARY KEY(
	 SHUKKA_DEMPYO_NO
	,  SHUKKA_DEMPYO_MEISAI_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1535T_TBL IS '出荷伝票明細テーブル'
/

COMMENT ON COLUMN ED1535T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1535T_TBL.SHUKKA_DEMPYO_NO IS '出荷伝票番号'
/
COMMENT ON COLUMN ED1535T_TBL.SHUKKA_DEMPYO_MEISAI_SN IS '出荷伝票明細連番'
/
COMMENT ON COLUMN ED1535T_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED1535T_TBL.SHIMPIN_KBN IS '新品区分'
/
COMMENT ON COLUMN ED1535T_TBL.SHUKKA_NYURYOKU_KBN IS '出荷入力区分'
/
COMMENT ON COLUMN ED1535T_TBL.SHUKKA_KAKUNIN_KBN IS '出荷確認区分'
/
COMMENT ON COLUMN ED1535T_TBL.SHUKKA_SURYO IS '出荷数量'
/
COMMENT ON COLUMN ED1535T_TBL.SHUKKA_TANKA_AMT IS '出荷単価金額'
/
COMMENT ON COLUMN ED1535T_TBL.SHUKKA_AMT IS '出荷金額'
/
COMMENT ON COLUMN ED1535T_TBL.SHIWAKE_PATTERN_HOJO_CD IS '仕訳パターン補助コード'
/
COMMENT ON COLUMN ED1535T_TBL.KENKARI_ID IS '建仮ＩＤ'
/
COMMENT ON COLUMN ED1535T_TBL.TAIYO_KIKAN_TSUKISU IS '貸与期間月数'
/
COMMENT ON COLUMN ED1535T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED1535T_TBL.JUCHU_KEIYAKU_MEISAI_SN IS '受注契約明細連番'
/
COMMENT ON COLUMN ED1535T_TBL.CHUMON_NO IS '注文番号'
/
COMMENT ON COLUMN ED1535T_TBL.CHUMON_DEMPYO_MEISAI_SN IS '注文伝票明細連番'
/
COMMENT ON COLUMN ED1535T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED1535T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED1535T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1535T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1535T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1535T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1535T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1535T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1535T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1535T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1535T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1535T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1535T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1535T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/