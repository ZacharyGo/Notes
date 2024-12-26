﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0560T_TBL.sql
-- 物理名：ED0560T_TBL
-- 論理名：契約稼働表配置ポストテーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0560T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0560T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KEIYAKU_ID  CHAR(18) NOT NULL --「契約ＩＤ」
	,KDHY_HICH_POST_SN  CHAR(14) NOT NULL --「稼働表配置ポスト連番」
	,HAICHI_POST_NM  VARCHAR2(30) --「配置ポスト名称」
	,UNYO_KBN  CHAR(1) NOT NULL --「運用区分」
	,KADO_KAISHI_YOTEI_YMD  DATE --「稼働開始予定年月日」
	,KADO_YOTEI_KAISHI_TM  CHAR(4) --「稼働予定開始時刻」
	,KADO_SHURYO_YOTEI_YMD  DATE --「稼働終了予定年月日」
	,KADO_YOTEI_SHURYO_TM  CHAR(4) --「稼働予定終了時刻」
	,OMONA_NIMMU_NAIYO_KBN  CHAR(2) NOT NULL --「主な任務内容区分」
	,JOCHU_KEIBI_JOKEN_1_JIKAN  NUMBER(9,0) DEFAULT '0' NOT NULL --「常駐警備条件１時間」
	,JOCHU_KEIBI_JOKEN_1_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「常駐警備条件１金額」
	,JCH_KIB_JKN_2_SHRY_JIKAN  NUMBER(9,0) DEFAULT '0' NOT NULL --「常駐警備条件２終了時間」
	,JOCHU_KEIBI_JOKEN_2_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「常駐警備条件２金額」
	,JCH_KIB_JKN_2_KISH_JIKAN  NUMBER(9,0) DEFAULT '0' NOT NULL --「常駐警備条件２開始時間」
	,JOCHU_KEIBI_JOKEN_3_JIKAN  NUMBER(9,0) DEFAULT '0' NOT NULL --「常駐警備条件３時間」
	,JOCHU_KEIBI_JOKEN_3_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「常駐警備条件３金額」
	,KEIBIIN_SEIFUKU_KBN  CHAR(1) NOT NULL --「警備員制服区分」
	,SONOTA_KEIBIIN_SEIFUKU_NAIYO  VARCHAR2(30) --「その他警備員制服内容」
	,HEIJITSU_HAICHI_NISSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「平日配置日数」
	,GETSUYO_HAICHI_NISSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「月曜配置日数」
	,KAYO_HAICHI_NISSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「火曜配置日数」
	,SUIYO_HAICHI_NISSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「水曜配置日数」
	,MOKUYO_HAICHI_NISSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「木曜配置日数」
	,KINYO_HAICHI_NISSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「金曜配置日数」
	,DOYO_HAICHI_NISSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「土曜配置日数」
	,NICHIYO_HAICHI_NISSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「日曜配置日数」
	,SHUKUJITSU_HAICHI_NISSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「祝日配置日数」
	,NICHISAIJITSU_HAICHI_NISSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「日祭日配置日数」
	,NENKAN_HAITCHI_NISSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「年間配置日数」
	,GYM_ITKSK_TRHKSK_CD  CHAR(9) --「業務委託先取引先コード」
	,GYM_ITKSK_TRHKSK_BSH_CD  CHAR(4) --「業務委託先取引先部署コード」
	,GYOMU_ITAKUSAKI_MITSUMORI_NO  CHAR(15) --「業務委託先見積番号」
	,EIGYO_KEISU  NUMBER(12,3) DEFAULT '0' NOT NULL --「営業係数」
	,MITSUMORI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「見積金額」
	,HAICHI_POST_BIKO  VARCHAR2(100) --「配置ポスト備考」
	,D_TANI_KEIBI_JISSEKI_JIKAN  NUMBER(9,0) DEFAULT '0' NOT NULL --「日単位警備実績時間」
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
	,CONSTRAINT ED0560T_PK PRIMARY KEY(
	 KEIYAKU_ID
	,  KDHY_HICH_POST_SN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0560T_TBL IS '契約稼働表配置ポストテーブル'
/

COMMENT ON COLUMN ED0560T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0560T_TBL.KEIYAKU_ID IS '契約ＩＤ'
/
COMMENT ON COLUMN ED0560T_TBL.KDHY_HICH_POST_SN IS '稼働表配置ポスト連番'
/
COMMENT ON COLUMN ED0560T_TBL.HAICHI_POST_NM IS '配置ポスト名称'
/
COMMENT ON COLUMN ED0560T_TBL.UNYO_KBN IS '運用区分'
/
COMMENT ON COLUMN ED0560T_TBL.KADO_KAISHI_YOTEI_YMD IS '稼働開始予定年月日'
/
COMMENT ON COLUMN ED0560T_TBL.KADO_YOTEI_KAISHI_TM IS '稼働予定開始時刻'
/
COMMENT ON COLUMN ED0560T_TBL.KADO_SHURYO_YOTEI_YMD IS '稼働終了予定年月日'
/
COMMENT ON COLUMN ED0560T_TBL.KADO_YOTEI_SHURYO_TM IS '稼働予定終了時刻'
/
COMMENT ON COLUMN ED0560T_TBL.OMONA_NIMMU_NAIYO_KBN IS '主な任務内容区分'
/
COMMENT ON COLUMN ED0560T_TBL.JOCHU_KEIBI_JOKEN_1_JIKAN IS '常駐警備条件１時間'
/
COMMENT ON COLUMN ED0560T_TBL.JOCHU_KEIBI_JOKEN_1_AMT IS '常駐警備条件１金額'
/
COMMENT ON COLUMN ED0560T_TBL.JCH_KIB_JKN_2_SHRY_JIKAN IS '常駐警備条件２終了時間'
/
COMMENT ON COLUMN ED0560T_TBL.JOCHU_KEIBI_JOKEN_2_AMT IS '常駐警備条件２金額'
/
COMMENT ON COLUMN ED0560T_TBL.JCH_KIB_JKN_2_KISH_JIKAN IS '常駐警備条件２開始時間'
/
COMMENT ON COLUMN ED0560T_TBL.JOCHU_KEIBI_JOKEN_3_JIKAN IS '常駐警備条件３時間'
/
COMMENT ON COLUMN ED0560T_TBL.JOCHU_KEIBI_JOKEN_3_AMT IS '常駐警備条件３金額'
/
COMMENT ON COLUMN ED0560T_TBL.KEIBIIN_SEIFUKU_KBN IS '警備員制服区分'
/
COMMENT ON COLUMN ED0560T_TBL.SONOTA_KEIBIIN_SEIFUKU_NAIYO IS 'その他警備員制服内容'
/
COMMENT ON COLUMN ED0560T_TBL.HEIJITSU_HAICHI_NISSU IS '平日配置日数'
/
COMMENT ON COLUMN ED0560T_TBL.GETSUYO_HAICHI_NISSU IS '月曜配置日数'
/
COMMENT ON COLUMN ED0560T_TBL.KAYO_HAICHI_NISSU IS '火曜配置日数'
/
COMMENT ON COLUMN ED0560T_TBL.SUIYO_HAICHI_NISSU IS '水曜配置日数'
/
COMMENT ON COLUMN ED0560T_TBL.MOKUYO_HAICHI_NISSU IS '木曜配置日数'
/
COMMENT ON COLUMN ED0560T_TBL.KINYO_HAICHI_NISSU IS '金曜配置日数'
/
COMMENT ON COLUMN ED0560T_TBL.DOYO_HAICHI_NISSU IS '土曜配置日数'
/
COMMENT ON COLUMN ED0560T_TBL.NICHIYO_HAICHI_NISSU IS '日曜配置日数'
/
COMMENT ON COLUMN ED0560T_TBL.SHUKUJITSU_HAICHI_NISSU IS '祝日配置日数'
/
COMMENT ON COLUMN ED0560T_TBL.NICHISAIJITSU_HAICHI_NISSU IS '日祭日配置日数'
/
COMMENT ON COLUMN ED0560T_TBL.NENKAN_HAITCHI_NISSU IS '年間配置日数'
/
COMMENT ON COLUMN ED0560T_TBL.GYM_ITKSK_TRHKSK_CD IS '業務委託先取引先コード'
/
COMMENT ON COLUMN ED0560T_TBL.GYM_ITKSK_TRHKSK_BSH_CD IS '業務委託先取引先部署コード'
/
COMMENT ON COLUMN ED0560T_TBL.GYOMU_ITAKUSAKI_MITSUMORI_NO IS '業務委託先見積番号'
/
COMMENT ON COLUMN ED0560T_TBL.EIGYO_KEISU IS '営業係数'
/
COMMENT ON COLUMN ED0560T_TBL.MITSUMORI_AMT IS '見積金額'
/
COMMENT ON COLUMN ED0560T_TBL.HAICHI_POST_BIKO IS '配置ポスト備考'
/
COMMENT ON COLUMN ED0560T_TBL.D_TANI_KEIBI_JISSEKI_JIKAN IS '日単位警備実績時間'
/
COMMENT ON COLUMN ED0560T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0560T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0560T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0560T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0560T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0560T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0560T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0560T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0560T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0560T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0560T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0560T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/