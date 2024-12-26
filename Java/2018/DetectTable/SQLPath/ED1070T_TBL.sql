﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1070T_TBL.sql
-- 物理名：ED1070T_TBL
-- 論理名：工事完了検査設備制御発停テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1070T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1070T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KOJI_KANRYO_KENSA_NO  CHAR(16) NOT NULL --「工事完了検査番号」
	,KOJI_KANRYO_KENSA_RIREKI_NO  CHAR(2) NOT NULL --「工事完了検査履歴番号」
	,SETSUBI_SEIGYO_HATSUTEI_SN  CHAR(5) NOT NULL --「設備制御発停連番」
	,KJ_KNR_KNS_STB_SIG_HTTI_HJ_JUN  NUMBER(4,0) DEFAULT '0' NOT NULL --「工事完了検査設備制御発停表示順」
	,TM_NO  CHAR(5) --「ＴＭ番号」
	,SEIGYO_NO  VARCHAR2(10) --「制御番号」
	,SEIGYO_SETSUBI_NM  VARCHAR2(20) --「制御設備名称」
	,SEIGYO_SETSUZOKU_TANSHI_NM  VARCHAR2(20) --「制御接続端子名称」
	,SEIGYO_SHIKEN_KEKKA_KBN  CHAR(1) NOT NULL --「制御試験結果区分」
	,ANSWER_SHINGO_KBN  CHAR(1) NOT NULL --「アンサ信号区分」
	,SETSUBI_SEIGYO_HATSUTEI_BIKO  VARCHAR2(20) --「設備制御発停備考」
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
	,CONSTRAINT ED1070T_PK PRIMARY KEY(
	 KOJI_KANRYO_KENSA_NO
	,  KOJI_KANRYO_KENSA_RIREKI_NO
	,  SETSUBI_SEIGYO_HATSUTEI_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1070T_TBL IS '工事完了検査設備制御発停テーブル'
/

COMMENT ON COLUMN ED1070T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1070T_TBL.KOJI_KANRYO_KENSA_NO IS '工事完了検査番号'
/
COMMENT ON COLUMN ED1070T_TBL.KOJI_KANRYO_KENSA_RIREKI_NO IS '工事完了検査履歴番号'
/
COMMENT ON COLUMN ED1070T_TBL.SETSUBI_SEIGYO_HATSUTEI_SN IS '設備制御発停連番'
/
COMMENT ON COLUMN ED1070T_TBL.KJ_KNR_KNS_STB_SIG_HTTI_HJ_JUN IS '工事完了検査設備制御発停表示順'
/
COMMENT ON COLUMN ED1070T_TBL.TM_NO IS 'ＴＭ番号'
/
COMMENT ON COLUMN ED1070T_TBL.SEIGYO_NO IS '制御番号'
/
COMMENT ON COLUMN ED1070T_TBL.SEIGYO_SETSUBI_NM IS '制御設備名称'
/
COMMENT ON COLUMN ED1070T_TBL.SEIGYO_SETSUZOKU_TANSHI_NM IS '制御接続端子名称'
/
COMMENT ON COLUMN ED1070T_TBL.SEIGYO_SHIKEN_KEKKA_KBN IS '制御試験結果区分'
/
COMMENT ON COLUMN ED1070T_TBL.ANSWER_SHINGO_KBN IS 'アンサ信号区分'
/
COMMENT ON COLUMN ED1070T_TBL.SETSUBI_SEIGYO_HATSUTEI_BIKO IS '設備制御発停備考'
/
COMMENT ON COLUMN ED1070T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED1070T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED1070T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1070T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1070T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1070T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1070T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1070T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1070T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1070T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1070T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1070T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1070T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1070T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/