﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1510T_TBL.sql
-- 物理名：ED1510T_TBL
-- 論理名：ＥＤＩ仕入先品名テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1510T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1510T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,EDI_SHIIRESAKI_HIMMEI_NO  CHAR(14) NOT NULL --「ＥＤＩ仕入先品名番号」
	,SHIIRESAKI_TORIHIKISAKI_CD  CHAR(9) --「仕入先取引先コード」
	,SHIRSK_TRHKSK_BSH_CD  CHAR(4) --「仕入先取引先部署コード」
	,HIMMEI_TOROKU_SHORI_KBN  CHAR(1) NOT NULL --「品名登録処理区分」
	,HIMMEI_CD  CHAR(8) --「品名コード」
	,HIMMEI_NM  VARCHAR2(60) --「品名名称」
	,RIYO_KAISHI_YMD  DATE --「利用開始年月日」
	,CHOTATSU_TEKIYO_SHURYO_YMD  DATE --「調達適用終了年月日」
	,SHURI_TEKIYO_SHURYO_YMD  DATE --「修理適用終了年月日」
	,SHIIRE_GENKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「仕入原価金額」
	,JODAI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「上代金額」
	,HATCHU_TANI_NM  VARCHAR2(5) --「発注単位名称」
	,HATCHU_TANI_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「発注単位数量」
	,SAITEI_HATCHU_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「最低発注数量」
	,SHIIRESAKI_HIMMEI_KAKUNIN_FLG  CHAR(1) DEFAULT '0' NOT NULL --「仕入先品名確認フラグ」
	,MTSMRSH_FILE_SHKBTS_KEY  VARCHAR2(255) --「見積書ファイル識別キー」
	,MITSUMORISHO_FILE_NM  VARCHAR2(60) --「見積書ファイル名称」
	,MAKER_BIKO  VARCHAR2(100) --「メーカー備考」
	,ALSOK_HIMMEI_TOROKU_CMNT  VARCHAR2(100) --「ＡＬＳＯＫ品名登録コメント」
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
	,CONSTRAINT ED1510T_PK PRIMARY KEY(
	 EDI_SHIIRESAKI_HIMMEI_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1510T_TBL IS 'ＥＤＩ仕入先品名テーブル'
/

COMMENT ON COLUMN ED1510T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1510T_TBL.EDI_SHIIRESAKI_HIMMEI_NO IS 'ＥＤＩ仕入先品名番号'
/
COMMENT ON COLUMN ED1510T_TBL.SHIIRESAKI_TORIHIKISAKI_CD IS '仕入先取引先コード'
/
COMMENT ON COLUMN ED1510T_TBL.SHIRSK_TRHKSK_BSH_CD IS '仕入先取引先部署コード'
/
COMMENT ON COLUMN ED1510T_TBL.HIMMEI_TOROKU_SHORI_KBN IS '品名登録処理区分'
/
COMMENT ON COLUMN ED1510T_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED1510T_TBL.HIMMEI_NM IS '品名名称'
/
COMMENT ON COLUMN ED1510T_TBL.RIYO_KAISHI_YMD IS '利用開始年月日'
/
COMMENT ON COLUMN ED1510T_TBL.CHOTATSU_TEKIYO_SHURYO_YMD IS '調達適用終了年月日'
/
COMMENT ON COLUMN ED1510T_TBL.SHURI_TEKIYO_SHURYO_YMD IS '修理適用終了年月日'
/
COMMENT ON COLUMN ED1510T_TBL.SHIIRE_GENKA_AMT IS '仕入原価金額'
/
COMMENT ON COLUMN ED1510T_TBL.JODAI_AMT IS '上代金額'
/
COMMENT ON COLUMN ED1510T_TBL.HATCHU_TANI_NM IS '発注単位名称'
/
COMMENT ON COLUMN ED1510T_TBL.HATCHU_TANI_SURYO IS '発注単位数量'
/
COMMENT ON COLUMN ED1510T_TBL.SAITEI_HATCHU_SURYO IS '最低発注数量'
/
COMMENT ON COLUMN ED1510T_TBL.SHIIRESAKI_HIMMEI_KAKUNIN_FLG IS '仕入先品名確認フラグ'
/
COMMENT ON COLUMN ED1510T_TBL.MTSMRSH_FILE_SHKBTS_KEY IS '見積書ファイル識別キー'
/
COMMENT ON COLUMN ED1510T_TBL.MITSUMORISHO_FILE_NM IS '見積書ファイル名称'
/
COMMENT ON COLUMN ED1510T_TBL.MAKER_BIKO IS 'メーカー備考'
/
COMMENT ON COLUMN ED1510T_TBL.ALSOK_HIMMEI_TOROKU_CMNT IS 'ＡＬＳＯＫ品名登録コメント'
/
COMMENT ON COLUMN ED1510T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED1510T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED1510T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1510T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1510T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1510T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1510T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1510T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1510T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1510T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1510T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1510T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1510T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1510T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/