﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1073T_TBL.sql
-- 物理名：ED1073T_TBL
-- 論理名：工事完了検査標準機能試験テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1073T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1073T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KOJI_KANRYO_KENSA_NO  CHAR(16) NOT NULL --「工事完了検査番号」
	,KOJI_KANRYO_KENSA_RIREKI_NO  CHAR(2) NOT NULL --「工事完了検査履歴番号」
	,KINO_SHURUI_KBN  CHAR(1) NOT NULL --「機能種類区分」
	,SONOTA_KINO_SHURUI_NM  VARCHAR2(15) --「その他機能種類名称」
	,KJ_KNR_KNS_TIS_KK_ST_BS_KBN  CHAR(1) NOT NULL --「工事完了検査対象機器設置場所区分」
	,KOTEI_SHOCHI_KBN  CHAR(1) NOT NULL --「固定処置区分」
	,SADO_KBN  CHAR(1) NOT NULL --「作動区分」
	,BOHANTOBIRA_RENDO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「防犯扉連動フラグ」
	,KASAI_RENDO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「火災連動フラグ」
	,GAS_RENDO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「ガス連動フラグ」
	,HIJOTOBIRA_RENDO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「非常扉連動フラグ」
	,SETSUBI_RENDO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「設備連動フラグ」
	,TEIDEN_RENDO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「停電連動フラグ」
	,HOGO_RENDO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「保護連動フラグ」
	,TAMPER_RENDO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「タンパー連動フラグ」
	,KAISEN_DANSEN_RENDO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「回線断線連動フラグ」
	,A_SETTEN_DANSEN_RENDO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「Ａ接点断線連動フラグ」
	,TSUSHIN_IJO_RENDO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「通信異常連動フラグ」
	,SADO_JIKAN  NUMBER(9,0) DEFAULT '0' NOT NULL --「作動時間」
	,SADO_JIKAN_KBN  CHAR(1) NOT NULL --「作動時間区分」
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
	,CONSTRAINT ED1073T_PK PRIMARY KEY(
	 KOJI_KANRYO_KENSA_NO
	,  KOJI_KANRYO_KENSA_RIREKI_NO
	,  KINO_SHURUI_KBN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1073T_TBL IS '工事完了検査標準機能試験テーブル'
/

COMMENT ON COLUMN ED1073T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1073T_TBL.KOJI_KANRYO_KENSA_NO IS '工事完了検査番号'
/
COMMENT ON COLUMN ED1073T_TBL.KOJI_KANRYO_KENSA_RIREKI_NO IS '工事完了検査履歴番号'
/
COMMENT ON COLUMN ED1073T_TBL.KINO_SHURUI_KBN IS '機能種類区分'
/
COMMENT ON COLUMN ED1073T_TBL.SONOTA_KINO_SHURUI_NM IS 'その他機能種類名称'
/
COMMENT ON COLUMN ED1073T_TBL.KJ_KNR_KNS_TIS_KK_ST_BS_KBN IS '工事完了検査対象機器設置場所区分'
/
COMMENT ON COLUMN ED1073T_TBL.KOTEI_SHOCHI_KBN IS '固定処置区分'
/
COMMENT ON COLUMN ED1073T_TBL.SADO_KBN IS '作動区分'
/
COMMENT ON COLUMN ED1073T_TBL.BOHANTOBIRA_RENDO_FLG IS '防犯扉連動フラグ'
/
COMMENT ON COLUMN ED1073T_TBL.KASAI_RENDO_FLG IS '火災連動フラグ'
/
COMMENT ON COLUMN ED1073T_TBL.GAS_RENDO_FLG IS 'ガス連動フラグ'
/
COMMENT ON COLUMN ED1073T_TBL.HIJOTOBIRA_RENDO_FLG IS '非常扉連動フラグ'
/
COMMENT ON COLUMN ED1073T_TBL.SETSUBI_RENDO_FLG IS '設備連動フラグ'
/
COMMENT ON COLUMN ED1073T_TBL.TEIDEN_RENDO_FLG IS '停電連動フラグ'
/
COMMENT ON COLUMN ED1073T_TBL.HOGO_RENDO_FLG IS '保護連動フラグ'
/
COMMENT ON COLUMN ED1073T_TBL.TAMPER_RENDO_FLG IS 'タンパー連動フラグ'
/
COMMENT ON COLUMN ED1073T_TBL.KAISEN_DANSEN_RENDO_FLG IS '回線断線連動フラグ'
/
COMMENT ON COLUMN ED1073T_TBL.A_SETTEN_DANSEN_RENDO_FLG IS 'Ａ接点断線連動フラグ'
/
COMMENT ON COLUMN ED1073T_TBL.TSUSHIN_IJO_RENDO_FLG IS '通信異常連動フラグ'
/
COMMENT ON COLUMN ED1073T_TBL.SADO_JIKAN IS '作動時間'
/
COMMENT ON COLUMN ED1073T_TBL.SADO_JIKAN_KBN IS '作動時間区分'
/
COMMENT ON COLUMN ED1073T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED1073T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED1073T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1073T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1073T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1073T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1073T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1073T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1073T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1073T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1073T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1073T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1073T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1073T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
