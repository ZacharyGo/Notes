﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3507T_TBL.sql
-- 物理名：ED3507T_TBL
-- 論理名：メルテック請求書明細テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3507T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3507T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SEIKYUSHO_NO  CHAR(14) NOT NULL --「請求書番号」
	,SEIKYUSHO_MEISAI_SN  CHAR(14) NOT NULL --「請求書明細連番」
	,MELTEC_KOJI_TEISEI_KBN  CHAR(1) --「メルテック工事訂正区分」
	,MELTEC_KOJIKI_NO  CHAR(2) --「メルテック工事期番号」
	,MELTEC_KOJI_BUMON_NO  CHAR(5) --「メルテック工事部門番号」
	,MELTEC_KOJI_KEIYAKUSHU_NO  CHAR(5) --「メルテック工事契約種番号」
	,MELTEC_KOJI_TATEMONO_NO  CHAR(7) --「メルテック工事建物番号」
	,MELTEC_KOJI_HONSU_SN  CHAR(3) --「メルテック工事本数連番」
	,TATEMONO_NM  VARCHAR2(50) --「建物名称」
	,KOJI_KANRYO_YMD  DATE --「工事完了年月日」
	,MELTEC_KOJI_KANRYO_KBN  CHAR(1) --「メルテック工事完了区分」
	,MELTEC_KNKI_KJ_KNSI_RITSU  CHAR(5) --「メルテック今回工事完成率」
	,MELTEC_RIKI_KJ_KNSI_RITSU  CHAR(5) --「メルテック累計工事完成率」
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
	,CONSTRAINT ED3507T_PK PRIMARY KEY(
	 SEIKYUSHO_NO
	,  SEIKYUSHO_MEISAI_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3507T_TBL IS 'メルテック請求書明細テーブル'
/

COMMENT ON COLUMN ED3507T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3507T_TBL.SEIKYUSHO_NO IS '請求書番号'
/
COMMENT ON COLUMN ED3507T_TBL.SEIKYUSHO_MEISAI_SN IS '請求書明細連番'
/
COMMENT ON COLUMN ED3507T_TBL.MELTEC_KOJI_TEISEI_KBN IS 'メルテック工事訂正区分'
/
COMMENT ON COLUMN ED3507T_TBL.MELTEC_KOJIKI_NO IS 'メルテック工事期番号'
/
COMMENT ON COLUMN ED3507T_TBL.MELTEC_KOJI_BUMON_NO IS 'メルテック工事部門番号'
/
COMMENT ON COLUMN ED3507T_TBL.MELTEC_KOJI_KEIYAKUSHU_NO IS 'メルテック工事契約種番号'
/
COMMENT ON COLUMN ED3507T_TBL.MELTEC_KOJI_TATEMONO_NO IS 'メルテック工事建物番号'
/
COMMENT ON COLUMN ED3507T_TBL.MELTEC_KOJI_HONSU_SN IS 'メルテック工事本数連番'
/
COMMENT ON COLUMN ED3507T_TBL.TATEMONO_NM IS '建物名称'
/
COMMENT ON COLUMN ED3507T_TBL.KOJI_KANRYO_YMD IS '工事完了年月日'
/
COMMENT ON COLUMN ED3507T_TBL.MELTEC_KOJI_KANRYO_KBN IS 'メルテック工事完了区分'
/
COMMENT ON COLUMN ED3507T_TBL.MELTEC_KNKI_KJ_KNSI_RITSU IS 'メルテック今回工事完成率'
/
COMMENT ON COLUMN ED3507T_TBL.MELTEC_RIKI_KJ_KNSI_RITSU IS 'メルテック累計工事完成率'
/
COMMENT ON COLUMN ED3507T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3507T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3507T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3507T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3507T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3507T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3507T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3507T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3507T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3507T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3507T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3507T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/