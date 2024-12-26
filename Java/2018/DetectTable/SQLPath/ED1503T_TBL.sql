﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1503T_TBL.sql
-- 物理名：ED1503T_TBL
-- 論理名：ＥＤＩ注文明細テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1503T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1503T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,EDI_CHUMON_NO  CHAR(10) NOT NULL --「ＥＤＩ注文番号」
	,EDI_CHUMON_MEISAI_NO  CHAR(3) NOT NULL --「ＥＤＩ注文明細番号」
	,HIMMEI_CD  CHAR(8) --「品名コード」
	,JUCHU_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「受注数量」
	,JUCHU_TANKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「受注単価金額」
	,JUCHU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「受注金額」
	,NOHIN_KIBO_YMD  DATE --「納品希望年月日」
	,SHIIRESAKI_TORIHIKISAKI_CD  CHAR(9) --「仕入先取引先コード」
	,SHIRSK_TRHKSK_BSH_CD  CHAR(4) --「仕入先取引先部署コード」
	,SETCHI_BASHO_NM  VARCHAR2(60) --「設置場所名称」
	,SETCHI_BASHO_YUBIN_NO  CHAR(7) --「設置場所郵便番号」
	,SETCHI_BASHO_JUSHO  VARCHAR2(60) --「設置場所住所」
	,SETCHI_BASHO_DENWA_NO  VARCHAR2(20) --「設置場所電話番号」
	,TKTI_SHHN_FILE_SHKBTS_KEY  VARCHAR2(255) --「特定商品ファイル識別キー」
	,TOKUTEI_SHOHIN_FILE_NM  VARCHAR2(60) --「特定商品ファイル名称」
	,HITCHAKUBI_SHITEI_CMNT  VARCHAR2(30) --「必着日指定コメント」
	,SHOHIN_SHIYO_CMNT  VARCHAR2(30) --「商品仕様コメント」
	,CHOTATSUBU_ATE_CMNT  VARCHAR2(60) --「調達部宛てコメント」
	,CHUMON_TEISEI_HORYU_KBN  CHAR(1) --「注文訂正保留区分」
	,EDI_CHUMON_FILE_NO  CHAR(10) --「ＥＤＩ注文ファイル番号」
	,EDI_CHUMON_GROUP_NO  NUMBER(4,0) DEFAULT '0' NOT NULL --「ＥＤＩ注文グループ番号」
	,EDI_CHUMON_FILE_MEISAI_SN  CHAR(14) --「ＥＤＩ注文ファイル明細連番」
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
	,CONSTRAINT ED1503T_PK PRIMARY KEY(
	 EDI_CHUMON_NO
	,  EDI_CHUMON_MEISAI_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1503T_TBL IS 'ＥＤＩ注文明細テーブル'
/

COMMENT ON COLUMN ED1503T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1503T_TBL.EDI_CHUMON_NO IS 'ＥＤＩ注文番号'
/
COMMENT ON COLUMN ED1503T_TBL.EDI_CHUMON_MEISAI_NO IS 'ＥＤＩ注文明細番号'
/
COMMENT ON COLUMN ED1503T_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED1503T_TBL.JUCHU_SURYO IS '受注数量'
/
COMMENT ON COLUMN ED1503T_TBL.JUCHU_TANKA_AMT IS '受注単価金額'
/
COMMENT ON COLUMN ED1503T_TBL.JUCHU_AMT IS '受注金額'
/
COMMENT ON COLUMN ED1503T_TBL.NOHIN_KIBO_YMD IS '納品希望年月日'
/
COMMENT ON COLUMN ED1503T_TBL.SHIIRESAKI_TORIHIKISAKI_CD IS '仕入先取引先コード'
/
COMMENT ON COLUMN ED1503T_TBL.SHIRSK_TRHKSK_BSH_CD IS '仕入先取引先部署コード'
/
COMMENT ON COLUMN ED1503T_TBL.SETCHI_BASHO_NM IS '設置場所名称'
/
COMMENT ON COLUMN ED1503T_TBL.SETCHI_BASHO_YUBIN_NO IS '設置場所郵便番号'
/
COMMENT ON COLUMN ED1503T_TBL.SETCHI_BASHO_JUSHO IS '設置場所住所'
/
COMMENT ON COLUMN ED1503T_TBL.SETCHI_BASHO_DENWA_NO IS '設置場所電話番号'
/
COMMENT ON COLUMN ED1503T_TBL.TKTI_SHHN_FILE_SHKBTS_KEY IS '特定商品ファイル識別キー'
/
COMMENT ON COLUMN ED1503T_TBL.TOKUTEI_SHOHIN_FILE_NM IS '特定商品ファイル名称'
/
COMMENT ON COLUMN ED1503T_TBL.HITCHAKUBI_SHITEI_CMNT IS '必着日指定コメント'
/
COMMENT ON COLUMN ED1503T_TBL.SHOHIN_SHIYO_CMNT IS '商品仕様コメント'
/
COMMENT ON COLUMN ED1503T_TBL.CHOTATSUBU_ATE_CMNT IS '調達部宛てコメント'
/
COMMENT ON COLUMN ED1503T_TBL.CHUMON_TEISEI_HORYU_KBN IS '注文訂正保留区分'
/
COMMENT ON COLUMN ED1503T_TBL.EDI_CHUMON_FILE_NO IS 'ＥＤＩ注文ファイル番号'
/
COMMENT ON COLUMN ED1503T_TBL.EDI_CHUMON_GROUP_NO IS 'ＥＤＩ注文グループ番号'
/
COMMENT ON COLUMN ED1503T_TBL.EDI_CHUMON_FILE_MEISAI_SN IS 'ＥＤＩ注文ファイル明細連番'
/
COMMENT ON COLUMN ED1503T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED1503T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED1503T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1503T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1503T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1503T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1503T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1503T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1503T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1503T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1503T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1503T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1503T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1503T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
