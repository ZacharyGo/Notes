﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED2018M_TBL.sql
-- 物理名：ED2018M_TBL
-- 論理名：契約進捗照会コンディション制御マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED2018M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED2018M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KSHSH_HYOJI_SEIGYO_ID  CHAR(16) NOT NULL --「契約進捗照会表示制御ＩＤ」
	,KSHSH_TASK_SEIGYO_SN  CHAR(14) NOT NULL --「契約進捗照会タスク制御連番」
	,KSHSH_CONDITION_SEIGYO_SN  CHAR(14) NOT NULL --「契約進捗照会コンディション制御連番」
	,KSHSH_HYJ_SEIGYO_CONDITION_ID  VARCHAR2(40) --「契約進捗照会表示制御コンディションＩＤ」
	,KSHSH_HYJ_SEIGYO_CONDITION_CHI  VARCHAR2(30) --「契約進捗照会表示制御コンディション値」
	,KSHSH_MIMTS_TAISHO_SECTION_NM  VARCHAR2(15) --「契約進捗照会明滅対象セクション名称」
	,KSHSH_MIMTS_TAISHO_TASK_NM  VARCHAR2(15) --「契約進捗照会明滅対象タスク名称」
	,GUIDE_MESSAGE_NAIYO  VARCHAR2(300) --「ガイドメッセージ内容」
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
	,CONSTRAINT ED2018M_PK PRIMARY KEY(
	 KSHSH_HYOJI_SEIGYO_ID
	,  KSHSH_TASK_SEIGYO_SN
	,  KSHSH_CONDITION_SEIGYO_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED2018M_TBL IS '契約進捗照会コンディション制御マスタ'
/

COMMENT ON COLUMN ED2018M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED2018M_TBL.KSHSH_HYOJI_SEIGYO_ID IS '契約進捗照会表示制御ＩＤ'
/
COMMENT ON COLUMN ED2018M_TBL.KSHSH_TASK_SEIGYO_SN IS '契約進捗照会タスク制御連番'
/
COMMENT ON COLUMN ED2018M_TBL.KSHSH_CONDITION_SEIGYO_SN IS '契約進捗照会コンディション制御連番'
/
COMMENT ON COLUMN ED2018M_TBL.KSHSH_HYJ_SEIGYO_CONDITION_ID IS '契約進捗照会表示制御コンディションＩＤ'
/
COMMENT ON COLUMN ED2018M_TBL.KSHSH_HYJ_SEIGYO_CONDITION_CHI IS '契約進捗照会表示制御コンディション値'
/
COMMENT ON COLUMN ED2018M_TBL.KSHSH_MIMTS_TAISHO_SECTION_NM IS '契約進捗照会明滅対象セクション名称'
/
COMMENT ON COLUMN ED2018M_TBL.KSHSH_MIMTS_TAISHO_TASK_NM IS '契約進捗照会明滅対象タスク名称'
/
COMMENT ON COLUMN ED2018M_TBL.GUIDE_MESSAGE_NAIYO IS 'ガイドメッセージ内容'
/
COMMENT ON COLUMN ED2018M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED2018M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED2018M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED2018M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED2018M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED2018M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED2018M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED2018M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED2018M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED2018M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED2018M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED2018M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
