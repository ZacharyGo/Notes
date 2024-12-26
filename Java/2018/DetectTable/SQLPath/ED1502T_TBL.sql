﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1502T_TBL.sql
-- 物理名：ED1502T_TBL
-- 論理名：ＥＤＩ注文テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1502T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1502T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,EDI_CHUMON_NO  CHAR(10) NOT NULL --「ＥＤＩ注文番号」
	,TOKUISAKI_TORIHIKISAKI_CD  CHAR(9) --「得意先取引先コード」
	,TKISK_TRHKSK_BSH_CD  CHAR(4) --「得意先取引先部署コード」
	,ATOSHORI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「後処理フラグ」
	,HATCHUMOTO_CHUMON_NO  VARCHAR2(12) --「発注元注文番号」
	,CHUMON_YMD  DATE --「注文年月日」
	,EDI_NOHINSAKI_SHITEI_HOHO_KBN  CHAR(1) NOT NULL --「ＥＤＩ納品先指定方法区分」
	,EDI_NOHINSAKI_TORIHIKISAKI_CD  CHAR(9) --「ＥＤＩ納品先取引先コード」
	,EDI_NOHINSAKI_CD  CHAR(4) --「ＥＤＩ納品先コード」
	,SONOTA_NOHINSAKI_KN_NM  VARCHAR2(40) --「その他納品先カナ名称」
	,SONOTA_NOHINSAKI_NM  VARCHAR2(30) --「その他納品先名称」
	,SONOTA_NOHINSAKI_YUBIN_NO  CHAR(7) --「その他納品先郵便番号」
	,SONOTA_NOHINSAKI_JUSHO_1  VARCHAR2(60) --「その他納品先住所１」
	,SONOTA_NOHINSAKI_JUSHO_2  VARCHAR2(60) --「その他納品先住所２」
	,SONOTA_NOHINSAKI_BUSHO_NM  VARCHAR2(40) --「その他納品先部署名称」
	,SONOTA_NOHINSAKI_TANTO_NM  VARCHAR2(30) --「その他納品先担当名称」
	,SONOTA_NOHINSAKI_DENWA_NO  VARCHAR2(20) --「その他納品先電話番号」
	,ALSOK_CHUMON_CMNT  VARCHAR2(60) --「ＡＬＳＯＫ注文コメント」
	,CHUMON_JOKYO_KBN  CHAR(1) DEFAULT '1' NOT NULL --「注文状況区分」
	,TORIKOMI_DT  TIMESTAMP --「取込日時」
	,CHUMON_CANCEL_FLG  CHAR(1) DEFAULT '0' NOT NULL --「注文キャンセルフラグ」
	,CHUMON_CANCEL_DT  TIMESTAMP --「注文キャンセル日時」
	,RIYOSAKI_TORIHIKISAKI_CD  CHAR(9) --「利用先取引先コード」
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
	,CONSTRAINT ED1502T_PK PRIMARY KEY(
	 EDI_CHUMON_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1502T_TBL IS 'ＥＤＩ注文テーブル'
/

COMMENT ON COLUMN ED1502T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1502T_TBL.EDI_CHUMON_NO IS 'ＥＤＩ注文番号'
/
COMMENT ON COLUMN ED1502T_TBL.TOKUISAKI_TORIHIKISAKI_CD IS '得意先取引先コード'
/
COMMENT ON COLUMN ED1502T_TBL.TKISK_TRHKSK_BSH_CD IS '得意先取引先部署コード'
/
COMMENT ON COLUMN ED1502T_TBL.ATOSHORI_FLG IS '後処理フラグ'
/
COMMENT ON COLUMN ED1502T_TBL.HATCHUMOTO_CHUMON_NO IS '発注元注文番号'
/
COMMENT ON COLUMN ED1502T_TBL.CHUMON_YMD IS '注文年月日'
/
COMMENT ON COLUMN ED1502T_TBL.EDI_NOHINSAKI_SHITEI_HOHO_KBN IS 'ＥＤＩ納品先指定方法区分'
/
COMMENT ON COLUMN ED1502T_TBL.EDI_NOHINSAKI_TORIHIKISAKI_CD IS 'ＥＤＩ納品先取引先コード'
/
COMMENT ON COLUMN ED1502T_TBL.EDI_NOHINSAKI_CD IS 'ＥＤＩ納品先コード'
/
COMMENT ON COLUMN ED1502T_TBL.SONOTA_NOHINSAKI_KN_NM IS 'その他納品先カナ名称'
/
COMMENT ON COLUMN ED1502T_TBL.SONOTA_NOHINSAKI_NM IS 'その他納品先名称'
/
COMMENT ON COLUMN ED1502T_TBL.SONOTA_NOHINSAKI_YUBIN_NO IS 'その他納品先郵便番号'
/
COMMENT ON COLUMN ED1502T_TBL.SONOTA_NOHINSAKI_JUSHO_1 IS 'その他納品先住所１'
/
COMMENT ON COLUMN ED1502T_TBL.SONOTA_NOHINSAKI_JUSHO_2 IS 'その他納品先住所２'
/
COMMENT ON COLUMN ED1502T_TBL.SONOTA_NOHINSAKI_BUSHO_NM IS 'その他納品先部署名称'
/
COMMENT ON COLUMN ED1502T_TBL.SONOTA_NOHINSAKI_TANTO_NM IS 'その他納品先担当名称'
/
COMMENT ON COLUMN ED1502T_TBL.SONOTA_NOHINSAKI_DENWA_NO IS 'その他納品先電話番号'
/
COMMENT ON COLUMN ED1502T_TBL.ALSOK_CHUMON_CMNT IS 'ＡＬＳＯＫ注文コメント'
/
COMMENT ON COLUMN ED1502T_TBL.CHUMON_JOKYO_KBN IS '注文状況区分'
/
COMMENT ON COLUMN ED1502T_TBL.TORIKOMI_DT IS '取込日時'
/
COMMENT ON COLUMN ED1502T_TBL.CHUMON_CANCEL_FLG IS '注文キャンセルフラグ'
/
COMMENT ON COLUMN ED1502T_TBL.CHUMON_CANCEL_DT IS '注文キャンセル日時'
/
COMMENT ON COLUMN ED1502T_TBL.RIYOSAKI_TORIHIKISAKI_CD IS '利用先取引先コード'
/
COMMENT ON COLUMN ED1502T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED1502T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED1502T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1502T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1502T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1502T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1502T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1502T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1502T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1502T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1502T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1502T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1502T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1502T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
