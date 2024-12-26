﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0667T_TBL.sql
-- 物理名：ED0667T_TBL
-- 論理名：運用機械オプションサービステーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0667T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0667T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) NOT NULL --「受注契約変更番号」
	,UNYO_HENKO_RIREKI_NO  CHAR(10) NOT NULL --「運用変更履歴番号」
	,UNYO_OPTION_SERVICE_CD  CHAR(4) NOT NULL --「運用オプションサービスコード」
	,UYOKIKI_OPTION_SERVICE_SN  CHAR(14) NOT NULL --「運用機械オプションサービス連番」
	,KKKB_OPTION_SERVICE_DBR_KBN  CHAR(2) NOT NULL --「機械警備オプションサービス大分類区分」
	,OPTION_SETTEI_NAIYO  VARCHAR2(20) --「オプション設定内容」
	,KANI_SETSUBI_SEIGYO_SOCHI_NO  VARCHAR2(14) --「簡易設備制御装置番号」
	,GZ_JNKI_STSZK_CAMERA_NO  VARCHAR2(100) --「画像巡回接続カメラ番号」
	,SETSUZOKU_CAMERA_NO  NUMBER(9,0) DEFAULT '0' NOT NULL --「接続カメラ番号」
	,CAMERA_NM  VARCHAR2(15) --「カメラ名称」
	,GAZO_KANSHI_EVENT_NM  VARCHAR2(40) --「画像監視イベント名称」
	,KANSHI_CAMERA_SHURUI_KBN  CHAR(2) --「監視カメラ種類区分」
	,KANSHI_CAMERA_RENDO_KIKI_KBN  CHAR(2) --「監視カメラ連動機器区分」
	,KAIZODO_KBN  CHAR(1) --「解像度区分」
	,KK_TSH_SHMP_HNDNAR_FLG  CHAR(1) DEFAULT '0' NOT NULL --「機器通報真報判断有フラグ」
	,KANSHI_CAMERA_KANSHI_NAIYO_KBN  CHAR(1) --「監視カメラ監視内容区分」
	,CHKSK_GZ_SKJ_KJN_KBN  CHAR(1) --「蓄積画像削除基準区分」
	,CHKSK_GZ_CHKSK_KKN_KBN  CHAR(2) --「蓄積画像蓄積期間区分」
	,CHIKUSEKI_DISK_YORYO_KBN  CHAR(2) --「蓄積ディスク容量区分」
	,CHIKUSEKI_EVENT_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「蓄積イベント数量」
	,ALSOK_GAZO_ETSURANKA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「ＡＬＳＯＫ画像閲覧可フラグ」
	,GZ_JNKI_SERVICE_JSSH_KAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「画像巡回サービス実施回数」
	,YOBI_KBN  CHAR(1) --「曜日区分」
	,GAZO_JUNKAI_JISSHI_TM_1  CHAR(4) --「画像巡回実施時刻１」
	,GAZO_JUNKAI_JISSHI_TM_2  CHAR(4) --「画像巡回実施時刻２」
	,GAZO_JUNKAI_JISSHI_TM_3  CHAR(4) --「画像巡回実施時刻３」
	,KEIBI_KAISHI_SETTEI_TM  CHAR(4) --「警備開始設定時刻」
	,KEIBI_SHURYO_SETTEI_TM  CHAR(4) --「警備終了設定時刻」
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
	,CONSTRAINT ED0667T_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  JUCHU_KEIYAKU_HENKO_NO
	,  KAISHA_CD
	,  UNYO_HENKO_RIREKI_NO
	,  UNYO_OPTION_SERVICE_CD
	,  UYOKIKI_OPTION_SERVICE_SN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0667T_TBL IS '運用機械オプションサービステーブル'
/

COMMENT ON COLUMN ED0667T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0667T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED0667T_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED0667T_TBL.UNYO_HENKO_RIREKI_NO IS '運用変更履歴番号'
/
COMMENT ON COLUMN ED0667T_TBL.UNYO_OPTION_SERVICE_CD IS '運用オプションサービスコード'
/
COMMENT ON COLUMN ED0667T_TBL.UYOKIKI_OPTION_SERVICE_SN IS '運用機械オプションサービス連番'
/
COMMENT ON COLUMN ED0667T_TBL.KKKB_OPTION_SERVICE_DBR_KBN IS '機械警備オプションサービス大分類区分'
/
COMMENT ON COLUMN ED0667T_TBL.OPTION_SETTEI_NAIYO IS 'オプション設定内容'
/
COMMENT ON COLUMN ED0667T_TBL.KANI_SETSUBI_SEIGYO_SOCHI_NO IS '簡易設備制御装置番号'
/
COMMENT ON COLUMN ED0667T_TBL.GZ_JNKI_STSZK_CAMERA_NO IS '画像巡回接続カメラ番号'
/
COMMENT ON COLUMN ED0667T_TBL.SETSUZOKU_CAMERA_NO IS '接続カメラ番号'
/
COMMENT ON COLUMN ED0667T_TBL.CAMERA_NM IS 'カメラ名称'
/
COMMENT ON COLUMN ED0667T_TBL.GAZO_KANSHI_EVENT_NM IS '画像監視イベント名称'
/
COMMENT ON COLUMN ED0667T_TBL.KANSHI_CAMERA_SHURUI_KBN IS '監視カメラ種類区分'
/
COMMENT ON COLUMN ED0667T_TBL.KANSHI_CAMERA_RENDO_KIKI_KBN IS '監視カメラ連動機器区分'
/
COMMENT ON COLUMN ED0667T_TBL.KAIZODO_KBN IS '解像度区分'
/
COMMENT ON COLUMN ED0667T_TBL.KK_TSH_SHMP_HNDNAR_FLG IS '機器通報真報判断有フラグ'
/
COMMENT ON COLUMN ED0667T_TBL.KANSHI_CAMERA_KANSHI_NAIYO_KBN IS '監視カメラ監視内容区分'
/
COMMENT ON COLUMN ED0667T_TBL.CHKSK_GZ_SKJ_KJN_KBN IS '蓄積画像削除基準区分'
/
COMMENT ON COLUMN ED0667T_TBL.CHKSK_GZ_CHKSK_KKN_KBN IS '蓄積画像蓄積期間区分'
/
COMMENT ON COLUMN ED0667T_TBL.CHIKUSEKI_DISK_YORYO_KBN IS '蓄積ディスク容量区分'
/
COMMENT ON COLUMN ED0667T_TBL.CHIKUSEKI_EVENT_SURYO IS '蓄積イベント数量'
/
COMMENT ON COLUMN ED0667T_TBL.ALSOK_GAZO_ETSURANKA_FLG IS 'ＡＬＳＯＫ画像閲覧可フラグ'
/
COMMENT ON COLUMN ED0667T_TBL.GZ_JNKI_SERVICE_JSSH_KAISU IS '画像巡回サービス実施回数'
/
COMMENT ON COLUMN ED0667T_TBL.YOBI_KBN IS '曜日区分'
/
COMMENT ON COLUMN ED0667T_TBL.GAZO_JUNKAI_JISSHI_TM_1 IS '画像巡回実施時刻１'
/
COMMENT ON COLUMN ED0667T_TBL.GAZO_JUNKAI_JISSHI_TM_2 IS '画像巡回実施時刻２'
/
COMMENT ON COLUMN ED0667T_TBL.GAZO_JUNKAI_JISSHI_TM_3 IS '画像巡回実施時刻３'
/
COMMENT ON COLUMN ED0667T_TBL.KEIBI_KAISHI_SETTEI_TM IS '警備開始設定時刻'
/
COMMENT ON COLUMN ED0667T_TBL.KEIBI_SHURYO_SETTEI_TM IS '警備終了設定時刻'
/
COMMENT ON COLUMN ED0667T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0667T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0667T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0667T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0667T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0667T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0667T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0667T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0667T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0667T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0667T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0667T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/