﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1059T_TBL.sql
-- 物理名：ED1059T_TBL
-- 論理名：工事発注承認テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1059T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1059T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,KOJI_HATCHU_SHONIN_SN  CHAR(3) NOT NULL --「工事発注承認連番」
	,KOJI_KAISHI_YOTEI_YMD  DATE --「工事開始予定年月日」
	,KOJI_YOTEI_SHURYO_YMD  DATE --「工事予定終了年月日」
	,GENDOGAKU_SHONIN_D  DATE --「限度額承認日」
	,SHONIN_GENDO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「承認限度金額」
	,SEKISAN_AMT_KENSHO_NAIYO  VARCHAR2(80) --「積算金額検証内容」
	,KJ_KYRYK_KISH_TRHKSK_CD  CHAR(9) --「工事協力会社取引先コード」
	,KOJI_TORIHIKISAKI_BUSHO_CD  CHAR(4) --「工事取引先部署コード」
	,KOJI_HATCHU_BIKO  VARCHAR2(100) --「工事発注備考」
	,GENDOGAKU_SHINSEI_D  DATE --「限度額申請日」
	,GENDOGAKU_SHONINSHA_SHAIN_NO  VARCHAR2(8) --「限度額承認者社員番号」
	,KOJI_HATCHU_SHONIN_KBN  CHAR(1) NOT NULL --「工事発注承認区分」
	,SHINSEI_SHONIN_CMNT  VARCHAR2(200) --「申請承認コメント」
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
	,CONSTRAINT ED1059T_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  KOJI_HATCHU_SHONIN_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1059T_TBL IS '工事発注承認テーブル'
/

COMMENT ON COLUMN ED1059T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1059T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED1059T_TBL.KOJI_HATCHU_SHONIN_SN IS '工事発注承認連番'
/
COMMENT ON COLUMN ED1059T_TBL.KOJI_KAISHI_YOTEI_YMD IS '工事開始予定年月日'
/
COMMENT ON COLUMN ED1059T_TBL.KOJI_YOTEI_SHURYO_YMD IS '工事予定終了年月日'
/
COMMENT ON COLUMN ED1059T_TBL.GENDOGAKU_SHONIN_D IS '限度額承認日'
/
COMMENT ON COLUMN ED1059T_TBL.SHONIN_GENDO_AMT IS '承認限度金額'
/
COMMENT ON COLUMN ED1059T_TBL.SEKISAN_AMT_KENSHO_NAIYO IS '積算金額検証内容'
/
COMMENT ON COLUMN ED1059T_TBL.KJ_KYRYK_KISH_TRHKSK_CD IS '工事協力会社取引先コード'
/
COMMENT ON COLUMN ED1059T_TBL.KOJI_TORIHIKISAKI_BUSHO_CD IS '工事取引先部署コード'
/
COMMENT ON COLUMN ED1059T_TBL.KOJI_HATCHU_BIKO IS '工事発注備考'
/
COMMENT ON COLUMN ED1059T_TBL.GENDOGAKU_SHINSEI_D IS '限度額申請日'
/
COMMENT ON COLUMN ED1059T_TBL.GENDOGAKU_SHONINSHA_SHAIN_NO IS '限度額承認者社員番号'
/
COMMENT ON COLUMN ED1059T_TBL.KOJI_HATCHU_SHONIN_KBN IS '工事発注承認区分'
/
COMMENT ON COLUMN ED1059T_TBL.SHINSEI_SHONIN_CMNT IS '申請承認コメント'
/
COMMENT ON COLUMN ED1059T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED1059T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED1059T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1059T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1059T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1059T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1059T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1059T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1059T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1059T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1059T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1059T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1059T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1059T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
