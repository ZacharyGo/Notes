﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1565T_TBL.sql
-- 物理名：ED1565T_TBL
-- 論理名：ＥＤＩ受発注出荷テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1565T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1565T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUHATCHU_NO  CHAR(10) NOT NULL --「受発注番号」
	,JUHATCHU_MEISAI_SN  NUMBER(3,0) DEFAULT '0' NOT NULL --「受発注明細連番」
	,SHUKKA_TOROKU_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「出荷登録数量」
	,SHUKKA_KAKUTEI_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「出荷確定数量」
	,SAIDAI_BUNNO_KAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「最大分納回数」
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
	,CONSTRAINT ED1565T_PK PRIMARY KEY(
	 JUHATCHU_NO
	,  JUHATCHU_MEISAI_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1565T_TBL IS 'ＥＤＩ受発注出荷テーブル'
/

COMMENT ON COLUMN ED1565T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1565T_TBL.JUHATCHU_NO IS '受発注番号'
/
COMMENT ON COLUMN ED1565T_TBL.JUHATCHU_MEISAI_SN IS '受発注明細連番'
/
COMMENT ON COLUMN ED1565T_TBL.SHUKKA_TOROKU_SURYO IS '出荷登録数量'
/
COMMENT ON COLUMN ED1565T_TBL.SHUKKA_KAKUTEI_SURYO IS '出荷確定数量'
/
COMMENT ON COLUMN ED1565T_TBL.SAIDAI_BUNNO_KAISU IS '最大分納回数'
/
COMMENT ON COLUMN ED1565T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED1565T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED1565T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1565T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1565T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1565T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1565T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1565T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1565T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1565T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1565T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1565T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1565T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1565T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
