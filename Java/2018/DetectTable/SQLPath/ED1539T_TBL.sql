﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1539T_TBL.sql
-- 物理名：ED1539T_TBL
-- 論理名：受発注明細引当テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1539T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1539T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUHATCHU_NO  CHAR(10) NOT NULL --「受発注番号」
	,JUHATCHU_MEISAI_SN  NUMBER(3,0) DEFAULT '0' NOT NULL --「受発注明細連番」
	,JUHATCHU_MEISAI_HIKIATE_SN  NUMBER(3,0) DEFAULT '0' NOT NULL --「受発注明細引当連番」
	,URIAGE_DEMPYO_NO  CHAR(17) --「売上伝票番号」
	,URIAGE_DEMPYO_MEISAI_SN  NUMBER(3,0) --「売上伝票明細連番」
	,PICKING_KANRI_NO  CHAR(10) --「ピッキング管理番号」
	,SOKONAI_LOCATION_CD  VARCHAR2(10) --「倉庫内ロケーションコード」
	,HIKIATE_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「引当数量」
	,SHUKKA_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「出荷数量」
	,KEPPIN_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「欠品数量」
	,JUCHU_TANKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「受注単価金額」
	,SHIIRE_TANKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「仕入単価金額」
	,TANKA_RIREKI_NO  CHAR(4) --「単価履歴番号」
	,SHUKKA_YOTEI_YMD  DATE --「出荷予定年月日」
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
	,CONSTRAINT ED1539T_PK PRIMARY KEY(
	 JUHATCHU_NO
	,  JUHATCHU_MEISAI_SN
	,  JUHATCHU_MEISAI_HIKIATE_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1539T_TBL IS '受発注明細引当テーブル'
/

COMMENT ON COLUMN ED1539T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1539T_TBL.JUHATCHU_NO IS '受発注番号'
/
COMMENT ON COLUMN ED1539T_TBL.JUHATCHU_MEISAI_SN IS '受発注明細連番'
/
COMMENT ON COLUMN ED1539T_TBL.JUHATCHU_MEISAI_HIKIATE_SN IS '受発注明細引当連番'
/
COMMENT ON COLUMN ED1539T_TBL.URIAGE_DEMPYO_NO IS '売上伝票番号'
/
COMMENT ON COLUMN ED1539T_TBL.URIAGE_DEMPYO_MEISAI_SN IS '売上伝票明細連番'
/
COMMENT ON COLUMN ED1539T_TBL.PICKING_KANRI_NO IS 'ピッキング管理番号'
/
COMMENT ON COLUMN ED1539T_TBL.SOKONAI_LOCATION_CD IS '倉庫内ロケーションコード'
/
COMMENT ON COLUMN ED1539T_TBL.HIKIATE_SURYO IS '引当数量'
/
COMMENT ON COLUMN ED1539T_TBL.SHUKKA_SURYO IS '出荷数量'
/
COMMENT ON COLUMN ED1539T_TBL.KEPPIN_SURYO IS '欠品数量'
/
COMMENT ON COLUMN ED1539T_TBL.JUCHU_TANKA_AMT IS '受注単価金額'
/
COMMENT ON COLUMN ED1539T_TBL.SHIIRE_TANKA_AMT IS '仕入単価金額'
/
COMMENT ON COLUMN ED1539T_TBL.TANKA_RIREKI_NO IS '単価履歴番号'
/
COMMENT ON COLUMN ED1539T_TBL.SHUKKA_YOTEI_YMD IS '出荷予定年月日'
/
COMMENT ON COLUMN ED1539T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED1539T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED1539T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1539T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1539T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1539T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1539T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1539T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1539T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1539T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1539T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1539T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1539T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1539T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
