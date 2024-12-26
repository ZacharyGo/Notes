﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9127T_TBL.sql
-- 物理名：ED9127T_TBL
-- 論理名：申請用社外利用者テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9127T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9127T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SHAGAI_RIYOSHA_NO  CHAR(8) NOT NULL --「社外利用者番号」
	,TORIHIKISAKI_CD  CHAR(9) NOT NULL --「取引先コード」
	,TORIHIKISAKI_BUSHO_CD  CHAR(4) NOT NULL --「取引先部署コード」
	,JIGYOSHO_CD  CHAR(6) --「事業所コード」
	,SOKO_CD  CHAR(6) --「倉庫コード」
	,SHAGAI_RIYOSHASEI_NM  VARCHAR2(30) --「社外利用者姓氏名」
	,SHAGAI_RIYOSHAMEI_NM  VARCHAR2(30) --「社外利用者名氏名」
	,SHAGAI_RIYOSHASEI_KN_NM  VARCHAR2(45) --「社外利用者姓カナ氏名」
	,SHAGAI_RIYOSHAMEI_KN_NM  VARCHAR2(45) --「社外利用者名カナ氏名」
	,SHAGAI_RIYOSHA_NM  VARCHAR2(60) --「社外利用者氏名」
	,SHAGAI_RIYOSHA_KN_NM  VARCHAR2(90) --「社外利用者カナ氏名」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,MAIL_ADDRESS_1  VARCHAR2(200) --「メールアドレス１」
	,MAIL_ADDRESS_2  VARCHAR2(200) --「メールアドレス２」
	,MAIL_ADDRESS_3  VARCHAR2(200) --「メールアドレス３」
	,SHGI_RYSH_TRK_STATUS_KBN  CHAR(1) NOT NULL --「社外利用者登録ステータス区分」
	,SHGI_TRKSH_SHGI_RYSH_NO  CHAR(8) --「社外登録者社外利用者番号」
	,SHGI_KSHNSH_SHGI_RYSH_NO  CHAR(8) --「社外更新者社外利用者番号」
	,SHGI_RYSH_TSK_TSCH_NO_KOMOKU  CLOB --「社外利用者タスク通知番号項目」
	,SISH_KSHNSH_SHGI_RYSH_NO  CHAR(8) --「最終更新者社外利用者番号」
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
	,CONSTRAINT ED9127T_PK PRIMARY KEY(
	 SHAGAI_RIYOSHA_NO
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9127T_TBL IS '申請用社外利用者テーブル'
/

COMMENT ON COLUMN ED9127T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED9127T_TBL.SHAGAI_RIYOSHA_NO IS '社外利用者番号'
/
COMMENT ON COLUMN ED9127T_TBL.TORIHIKISAKI_CD IS '取引先コード'
/
COMMENT ON COLUMN ED9127T_TBL.TORIHIKISAKI_BUSHO_CD IS '取引先部署コード'
/
COMMENT ON COLUMN ED9127T_TBL.JIGYOSHO_CD IS '事業所コード'
/
COMMENT ON COLUMN ED9127T_TBL.SOKO_CD IS '倉庫コード'
/
COMMENT ON COLUMN ED9127T_TBL.SHAGAI_RIYOSHASEI_NM IS '社外利用者姓氏名'
/
COMMENT ON COLUMN ED9127T_TBL.SHAGAI_RIYOSHAMEI_NM IS '社外利用者名氏名'
/
COMMENT ON COLUMN ED9127T_TBL.SHAGAI_RIYOSHASEI_KN_NM IS '社外利用者姓カナ氏名'
/
COMMENT ON COLUMN ED9127T_TBL.SHAGAI_RIYOSHAMEI_KN_NM IS '社外利用者名カナ氏名'
/
COMMENT ON COLUMN ED9127T_TBL.SHAGAI_RIYOSHA_NM IS '社外利用者氏名'
/
COMMENT ON COLUMN ED9127T_TBL.SHAGAI_RIYOSHA_KN_NM IS '社外利用者カナ氏名'
/
COMMENT ON COLUMN ED9127T_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED9127T_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED9127T_TBL.MAIL_ADDRESS_1 IS 'メールアドレス１'
/
COMMENT ON COLUMN ED9127T_TBL.MAIL_ADDRESS_2 IS 'メールアドレス２'
/
COMMENT ON COLUMN ED9127T_TBL.MAIL_ADDRESS_3 IS 'メールアドレス３'
/
COMMENT ON COLUMN ED9127T_TBL.SHGI_RYSH_TRK_STATUS_KBN IS '社外利用者登録ステータス区分'
/
COMMENT ON COLUMN ED9127T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED9127T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED9127T_TBL.SHGI_RYSH_TSK_TSCH_NO_KOMOKU IS '社外利用者タスク通知番号項目'
/
COMMENT ON COLUMN ED9127T_TBL.SISH_KSHNSH_SHGI_RYSH_NO IS '最終更新者社外利用者番号'
/
COMMENT ON COLUMN ED9127T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9127T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9127T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9127T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9127T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9127T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9127T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9127T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9127T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9127T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9127T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9127T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
