﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4444T_TBL.sql
-- 物理名：ED4444T_TBL
-- 論理名：詳細積算稼働表配置ポストテーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4444T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4444T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SHOSAI_SEKISAN_NO  CHAR(17) NOT NULL --「詳細積算番号」
	,SHSI_SKSN_KDHY_HICH_POST_SN  CHAR(14) NOT NULL --「詳細積算稼働表配置ポスト連番」
	,HAICHI_POST_NM  VARCHAR2(30) --「配置ポスト名称」
	,UNYO_KBN  CHAR(1) NOT NULL --「運用区分」
	,KAISHI_YOTEI_YMD  DATE --「開始予定年月日」
	,KADO_YOTEI_KAISHI_TM  CHAR(4) --「稼働予定開始時刻」
	,SHURYO_YOTEI_YMD  DATE --「終了予定年月日」
	,KADO_YOTEI_SHURYO_TM  CHAR(4) --「稼働予定終了時刻」
	,GETSUYO_HAICHI_NISSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「月曜配置日数」
	,KAYO_HAICHI_NISSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「火曜配置日数」
	,SUIYO_HAICHI_NISSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「水曜配置日数」
	,MOKUYO_HAICHI_NISSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「木曜配置日数」
	,KINYO_HAICHI_NISSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「金曜配置日数」
	,DOYO_HAICHI_NISSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「土曜配置日数」
	,NICHIYO_HAICHI_NISSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「日曜配置日数」
	,SHUKUJITSU_HAICHI_NISSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「祝日配置日数」
	,OMONA_NIMMU_NAIYO_KBN  CHAR(2) NOT NULL --「主な任務内容区分」
	,KEIBIIN_SEIFUKU_KBN  CHAR(1) NOT NULL --「警備員制服区分」
	,SONOTA_KEIBIIN_SEIFUKU_NAIYO  VARCHAR2(30) --「その他警備員制服内容」
	,GYM_ITKSK_TRHKSK_CD  CHAR(9) --「業務委託先取引先コード」
	,GYM_ITKSK_TRHKSK_BSH_CD  CHAR(4) --「業務委託先取引先部署コード」
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
	,CONSTRAINT ED4444T_PK PRIMARY KEY(
	 SHOSAI_SEKISAN_NO
	,  SHSI_SKSN_KDHY_HICH_POST_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4444T_TBL IS '詳細積算稼働表配置ポストテーブル'
/

COMMENT ON COLUMN ED4444T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED4444T_TBL.SHOSAI_SEKISAN_NO IS '詳細積算番号'
/
COMMENT ON COLUMN ED4444T_TBL.SHSI_SKSN_KDHY_HICH_POST_SN IS '詳細積算稼働表配置ポスト連番'
/
COMMENT ON COLUMN ED4444T_TBL.HAICHI_POST_NM IS '配置ポスト名称'
/
COMMENT ON COLUMN ED4444T_TBL.UNYO_KBN IS '運用区分'
/
COMMENT ON COLUMN ED4444T_TBL.KAISHI_YOTEI_YMD IS '開始予定年月日'
/
COMMENT ON COLUMN ED4444T_TBL.KADO_YOTEI_KAISHI_TM IS '稼働予定開始時刻'
/
COMMENT ON COLUMN ED4444T_TBL.SHURYO_YOTEI_YMD IS '終了予定年月日'
/
COMMENT ON COLUMN ED4444T_TBL.KADO_YOTEI_SHURYO_TM IS '稼働予定終了時刻'
/
COMMENT ON COLUMN ED4444T_TBL.GETSUYO_HAICHI_NISSU IS '月曜配置日数'
/
COMMENT ON COLUMN ED4444T_TBL.KAYO_HAICHI_NISSU IS '火曜配置日数'
/
COMMENT ON COLUMN ED4444T_TBL.SUIYO_HAICHI_NISSU IS '水曜配置日数'
/
COMMENT ON COLUMN ED4444T_TBL.MOKUYO_HAICHI_NISSU IS '木曜配置日数'
/
COMMENT ON COLUMN ED4444T_TBL.KINYO_HAICHI_NISSU IS '金曜配置日数'
/
COMMENT ON COLUMN ED4444T_TBL.DOYO_HAICHI_NISSU IS '土曜配置日数'
/
COMMENT ON COLUMN ED4444T_TBL.NICHIYO_HAICHI_NISSU IS '日曜配置日数'
/
COMMENT ON COLUMN ED4444T_TBL.SHUKUJITSU_HAICHI_NISSU IS '祝日配置日数'
/
COMMENT ON COLUMN ED4444T_TBL.OMONA_NIMMU_NAIYO_KBN IS '主な任務内容区分'
/
COMMENT ON COLUMN ED4444T_TBL.KEIBIIN_SEIFUKU_KBN IS '警備員制服区分'
/
COMMENT ON COLUMN ED4444T_TBL.SONOTA_KEIBIIN_SEIFUKU_NAIYO IS 'その他警備員制服内容'
/
COMMENT ON COLUMN ED4444T_TBL.GYM_ITKSK_TRHKSK_CD IS '業務委託先取引先コード'
/
COMMENT ON COLUMN ED4444T_TBL.GYM_ITKSK_TRHKSK_BSH_CD IS '業務委託先取引先部署コード'
/
COMMENT ON COLUMN ED4444T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4444T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4444T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4444T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4444T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4444T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4444T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4444T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4444T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4444T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4444T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4444T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/