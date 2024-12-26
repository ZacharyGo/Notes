﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1019T_TBL.sql
-- 物理名：ED1019T_TBL
-- 論理名：入退工修正テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1019T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1019T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KOJI_SHIGOTO_SN  CHAR(14) NOT NULL --「工事仕事連番」
	,KOJI_KOTEI_SN  CHAR(14) NOT NULL --「工事工程連番」
	,TAISHOSAKI_CD  CHAR(9) NOT NULL --「対象先コード」
	,NYUTAIKO_SHUSEI_SN  CHAR(14) NOT NULL --「入退工修正連番」
	,SHUSEI_RIYU_KBN  CHAR(1) NOT NULL --「修正理由区分」
	,SHUSEI_LOG_DT  TIMESTAMP --「修正ログ日時」
	,SHUSEI_HOKOKU_KBN  CHAR(1) NOT NULL --「修正報告区分」
	,SHUSEI_TAISHO_JISSHI_YMD  DATE --「修正対象実施年月日」
	,SHUSEI_TAISHO_TAISHOSAKI_CD  CHAR(9) --「修正対象対象先コード」
	,SHUSEIMAE_HOKOKU_DT  TIMESTAMP --「修正前報告日時」
	,SHUSEIGO_HOKOKU_DT  TIMESTAMP --「修正後報告日時」
	,SHUSEISHA_NM  VARCHAR2(60) --「修正者氏名」
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
	,CONSTRAINT ED1019T_PK PRIMARY KEY(
	 KOJI_SHIGOTO_SN
	,  KOJI_KOTEI_SN
	,  TAISHOSAKI_CD
	,  NYUTAIKO_SHUSEI_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1019T_TBL IS '入退工修正テーブル'
/

COMMENT ON COLUMN ED1019T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1019T_TBL.KOJI_SHIGOTO_SN IS '工事仕事連番'
/
COMMENT ON COLUMN ED1019T_TBL.KOJI_KOTEI_SN IS '工事工程連番'
/
COMMENT ON COLUMN ED1019T_TBL.TAISHOSAKI_CD IS '対象先コード'
/
COMMENT ON COLUMN ED1019T_TBL.NYUTAIKO_SHUSEI_SN IS '入退工修正連番'
/
COMMENT ON COLUMN ED1019T_TBL.SHUSEI_RIYU_KBN IS '修正理由区分'
/
COMMENT ON COLUMN ED1019T_TBL.SHUSEI_LOG_DT IS '修正ログ日時'
/
COMMENT ON COLUMN ED1019T_TBL.SHUSEI_HOKOKU_KBN IS '修正報告区分'
/
COMMENT ON COLUMN ED1019T_TBL.SHUSEI_TAISHO_JISSHI_YMD IS '修正対象実施年月日'
/
COMMENT ON COLUMN ED1019T_TBL.SHUSEI_TAISHO_TAISHOSAKI_CD IS '修正対象対象先コード'
/
COMMENT ON COLUMN ED1019T_TBL.SHUSEIMAE_HOKOKU_DT IS '修正前報告日時'
/
COMMENT ON COLUMN ED1019T_TBL.SHUSEIGO_HOKOKU_DT IS '修正後報告日時'
/
COMMENT ON COLUMN ED1019T_TBL.SHUSEISHA_NM IS '修正者氏名'
/
COMMENT ON COLUMN ED1019T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED1019T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED1019T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1019T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1019T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1019T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1019T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1019T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1019T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1019T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1019T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1019T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1019T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1019T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
