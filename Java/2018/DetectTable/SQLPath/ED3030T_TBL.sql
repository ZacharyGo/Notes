﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3030T_TBL.sql
-- 物理名：ED3030T_TBL
-- 論理名：図面持出テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3030T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3030T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,ZUMEN_MOCHIDASHI_ID  CHAR(14) NOT NULL --「図面持出ＩＤ」
	,SHINSEI_SHONIN_NO  CHAR(14) --「申請承認番号」
	,JOI_JIGYOSHO_CD  CHAR(6) NOT NULL --「上位事業所コード」
	,ZUMEN_MOCHIDASHISHA_SHAIN_NO  VARCHAR2(8) --「図面持出者社員番号」
	,ZUMEN_MOCHIDASHI_BUMON_KBN  CHAR(1) NOT NULL --「図面持出部門区分」
	,ZUMEN_MOCHIDASHI_YOTO_KBN  CHAR(1) NOT NULL --「図面持出用途区分」
	,ZUMEN_TEISHUTSUSAKI_NM  VARCHAR2(100) --「図面提出先名称」
	,ZUMEN_MOCHIDASHI_KBN  CHAR(1) NOT NULL --「図面持出区分」
	,ZUMEN_FUKUSHA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「図面複写フラグ」
	,ZUMEN_FAX_FLG  CHAR(1) DEFAULT '0' NOT NULL --「図面ＦＡＸフラグ」
	,ZUMEN_MAIL_FLG  CHAR(1) DEFAULT '0' NOT NULL --「図面メールフラグ」
	,ZUMEN_YUSO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「図面郵送フラグ」
	,ZUMEN_NAS_FLG  CHAR(1) DEFAULT '0' NOT NULL --「図面ＮＡＳフラグ」
	,ZUMEN_INSATSU_BUSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「図面印刷部数」
	,ZUMEN_HENKYAKU_FUYO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「図面返却不要フラグ」
	,ZUMEN_HENKYAKU_FUYO_RIYU  VARCHAR2(100) --「図面返却不要理由」
	,ZUMEN_HENKYAKU_KIGEN_YMD  DATE --「図面返却期限年月日」
	,ZUMEN_KINKYU_MOCHIDASHI_RIYU  VARCHAR2(300) --「図面緊急持出理由」
	,ZMN_KNKY_MCHDSH_KKNN_FLG  CHAR(1) DEFAULT '0' NOT NULL --「図面緊急持出確認フラグ」
	,ZMN_KNKY_MCHDSH_KKNN_DT  TIMESTAMP --「図面緊急持出確認日時」
	,ZMN_KNKY_MCHDSH_KKNNSH_SHIN_NO  VARCHAR2(8) --「図面緊急持出確認者社員番号」
	,ZMN_KNK_MCDS_TCAIS_SIN_NO  VARCHAR2(8) --「図面緊急持出立会者社員番号」
	,ZMN_KNK_MCDS_TCAIS_FZI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「図面緊急持出立会者不在フラグ」
	,ZMN_KNKY_MCHDSH_SKNN_SHIN_NO_1  VARCHAR2(8) --「図面緊急持出責任者社員番号１」
	,ZMN_KNKY_MCHDSH_SKNN_SHIN_NO_2  VARCHAR2(8) --「図面緊急持出責任者社員番号２」
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
	,CONSTRAINT ED3030T_PK PRIMARY KEY(
	 ZUMEN_MOCHIDASHI_ID
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3030T_TBL IS '図面持出テーブル'
/

COMMENT ON COLUMN ED3030T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3030T_TBL.ZUMEN_MOCHIDASHI_ID IS '図面持出ＩＤ'
/
COMMENT ON COLUMN ED3030T_TBL.SHINSEI_SHONIN_NO IS '申請承認番号'
/
COMMENT ON COLUMN ED3030T_TBL.JOI_JIGYOSHO_CD IS '上位事業所コード'
/
COMMENT ON COLUMN ED3030T_TBL.ZUMEN_MOCHIDASHISHA_SHAIN_NO IS '図面持出者社員番号'
/
COMMENT ON COLUMN ED3030T_TBL.ZUMEN_MOCHIDASHI_BUMON_KBN IS '図面持出部門区分'
/
COMMENT ON COLUMN ED3030T_TBL.ZUMEN_MOCHIDASHI_YOTO_KBN IS '図面持出用途区分'
/
COMMENT ON COLUMN ED3030T_TBL.ZUMEN_TEISHUTSUSAKI_NM IS '図面提出先名称'
/
COMMENT ON COLUMN ED3030T_TBL.ZUMEN_MOCHIDASHI_KBN IS '図面持出区分'
/
COMMENT ON COLUMN ED3030T_TBL.ZUMEN_FUKUSHA_FLG IS '図面複写フラグ'
/
COMMENT ON COLUMN ED3030T_TBL.ZUMEN_FAX_FLG IS '図面ＦＡＸフラグ'
/
COMMENT ON COLUMN ED3030T_TBL.ZUMEN_MAIL_FLG IS '図面メールフラグ'
/
COMMENT ON COLUMN ED3030T_TBL.ZUMEN_YUSO_FLG IS '図面郵送フラグ'
/
COMMENT ON COLUMN ED3030T_TBL.ZUMEN_NAS_FLG IS '図面ＮＡＳフラグ'
/
COMMENT ON COLUMN ED3030T_TBL.ZUMEN_INSATSU_BUSU IS '図面印刷部数'
/
COMMENT ON COLUMN ED3030T_TBL.ZUMEN_HENKYAKU_FUYO_FLG IS '図面返却不要フラグ'
/
COMMENT ON COLUMN ED3030T_TBL.ZUMEN_HENKYAKU_FUYO_RIYU IS '図面返却不要理由'
/
COMMENT ON COLUMN ED3030T_TBL.ZUMEN_HENKYAKU_KIGEN_YMD IS '図面返却期限年月日'
/
COMMENT ON COLUMN ED3030T_TBL.ZUMEN_KINKYU_MOCHIDASHI_RIYU IS '図面緊急持出理由'
/
COMMENT ON COLUMN ED3030T_TBL.ZMN_KNKY_MCHDSH_KKNN_FLG IS '図面緊急持出確認フラグ'
/
COMMENT ON COLUMN ED3030T_TBL.ZMN_KNKY_MCHDSH_KKNN_DT IS '図面緊急持出確認日時'
/
COMMENT ON COLUMN ED3030T_TBL.ZMN_KNKY_MCHDSH_KKNNSH_SHIN_NO IS '図面緊急持出確認者社員番号'
/
COMMENT ON COLUMN ED3030T_TBL.ZMN_KNK_MCDS_TCAIS_SIN_NO IS '図面緊急持出立会者社員番号'
/
COMMENT ON COLUMN ED3030T_TBL.ZMN_KNK_MCDS_TCAIS_FZI_FLG IS '図面緊急持出立会者不在フラグ'
/
COMMENT ON COLUMN ED3030T_TBL.ZMN_KNKY_MCHDSH_SKNN_SHIN_NO_1 IS '図面緊急持出責任者社員番号１'
/
COMMENT ON COLUMN ED3030T_TBL.ZMN_KNKY_MCHDSH_SKNN_SHIN_NO_2 IS '図面緊急持出責任者社員番号２'
/
COMMENT ON COLUMN ED3030T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3030T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3030T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3030T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3030T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3030T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3030T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3030T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3030T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3030T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3030T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3030T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
