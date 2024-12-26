﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1051T_TBL.sql
-- 物理名：ED1051T_TBL
-- 論理名：工事工程任意テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1051T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1051T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KJ_KYRYK_KISH_TRHKSK_CD  CHAR(9) NOT NULL --「工事協力会社取引先コード」
	,KOJI_TORIHIKISAKI_BUSHO_CD  CHAR(4) NOT NULL --「工事取引先部署コード」
	,KOJI_KYORYOKU_KAISHA_HAN_CD  CHAR(9) NOT NULL --「工事協力会社班コード」
	,KOJI_KOTEI_NINI_SN  CHAR(9) NOT NULL --「工事工程任意連番」
	,KOJI_KOTEI_SHUBETSU_KBN  CHAR(1) NOT NULL --「工事工程種別区分」
	,KOJI_KAISHI_DT  TIMESTAMP --「工事開始日時」
	,KOJI_SHURYO_DT  TIMESTAMP --「工事終了日時」
	,TAISHOSAKI_NM  VARCHAR2(40) --「対象先名称」
	,KOJI_KOTEI_NINI_NAIYO  VARCHAR2(100) --「工事工程任意内容」
	,KOJI_KOTEI_NINI_BIKO  VARCHAR2(100) --「工事工程任意備考」
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
	,CONSTRAINT ED1051T_PK PRIMARY KEY(
	 KJ_KYRYK_KISH_TRHKSK_CD
	,  KOJI_TORIHIKISAKI_BUSHO_CD
	,  KOJI_KYORYOKU_KAISHA_HAN_CD
	,  KOJI_KOTEI_NINI_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1051T_TBL IS '工事工程任意テーブル'
/

COMMENT ON COLUMN ED1051T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1051T_TBL.KJ_KYRYK_KISH_TRHKSK_CD IS '工事協力会社取引先コード'
/
COMMENT ON COLUMN ED1051T_TBL.KOJI_TORIHIKISAKI_BUSHO_CD IS '工事取引先部署コード'
/
COMMENT ON COLUMN ED1051T_TBL.KOJI_KYORYOKU_KAISHA_HAN_CD IS '工事協力会社班コード'
/
COMMENT ON COLUMN ED1051T_TBL.KOJI_KOTEI_NINI_SN IS '工事工程任意連番'
/
COMMENT ON COLUMN ED1051T_TBL.KOJI_KOTEI_SHUBETSU_KBN IS '工事工程種別区分'
/
COMMENT ON COLUMN ED1051T_TBL.KOJI_KAISHI_DT IS '工事開始日時'
/
COMMENT ON COLUMN ED1051T_TBL.KOJI_SHURYO_DT IS '工事終了日時'
/
COMMENT ON COLUMN ED1051T_TBL.TAISHOSAKI_NM IS '対象先名称'
/
COMMENT ON COLUMN ED1051T_TBL.KOJI_KOTEI_NINI_NAIYO IS '工事工程任意内容'
/
COMMENT ON COLUMN ED1051T_TBL.KOJI_KOTEI_NINI_BIKO IS '工事工程任意備考'
/
COMMENT ON COLUMN ED1051T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED1051T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED1051T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1051T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1051T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1051T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1051T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1051T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1051T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1051T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1051T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1051T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1051T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1051T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/