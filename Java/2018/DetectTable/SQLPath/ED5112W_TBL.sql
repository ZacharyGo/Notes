﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED5112W_TBL.sql
-- 物理名：ED5112W_TBL
-- 論理名：ＮＢ障害月報取込用ワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED5112W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED5112W_TBL (
	 NBSG_KAISHA_CD  CHAR(5) NOT NULL --「ＮＢＳＧ＿会社コード」
	,NBSG_SN  NUMBER(14,0) DEFAULT '0' NOT NULL --「ＮＢＳＧ＿連番」
	,NBSG_NO  NUMBER(5,0) DEFAULT '0' NOT NULL --「ＮＢＳＧ＿Ｎｏ」
	,NBSG_ATM_SOCHI_NO  CHAR(7) NOT NULL --「ＮＢＳＧ＿ＡＴＭ装置番号」
	,NBSG_UKETSUKE_NO  CHAR(18) --「ＮＢＳＧ＿受付番号」
	,NBSG_SECCHI_KIGYO  CHAR(2) NOT NULL --「ＮＢＳＧ＿設置企業」
	,NBSG_7BK_MISEBAN  CHAR(6) NOT NULL --「ＮＢＳＧ＿７ＢＫ店番」
	,NBSG_ATM_SECCHI_TEMPOMEI  VARCHAR2(40) --「ＮＢＳＧ＿ＡＴＭ設置店舗名」
	,NBSG_KBN  VARCHAR2(10) --「ＮＢＳＧ＿区分」
	,NBSG_HASSEI_JIKAN  CHAR(8) --「ＮＢＳＧ＿発生時間」
	,NBSG_UKETSUKE_HIZUKE  VARCHAR2(8) NOT NULL --「ＮＢＳＧ＿受付日付」
	,NBSG_UKETSUKE_JIKAN  CHAR(5) --「ＮＢＳＧ＿受付時間」
	,NBSG_SHUTSUDO_HIZUKE  VARCHAR2(8) --「ＮＢＳＧ＿出動日付」
	,NBSG_SHIJI_JIKAN  CHAR(5) --「ＮＢＳＧ＿指示時間」
	,NBSG_TOCHAKU_JIKAN  CHAR(5) --「ＮＢＳＧ＿到着時間」
	,NBSG_NYUKAN_JIKAN  CHAR(5) --「ＮＢＳＧ＿入館時間」
	,NBSG_TAIKAN_JIKAN  CHAR(5) --「ＮＢＳＧ＿退館時間」
	,NBSG_SHURYO_JIKAN  CHAR(5) --「ＮＢＳＧ＿終了時間」
	,NBSG_SHOYO_JIKAN  VARCHAR2(5) --「ＮＢＳＧ＿所要時間」
	,NBSG_SAGYO_JIKAN  VARCHAR2(5) --「ＮＢＳＧ＿作業時間」
	,NBSG_HOSHU_TOCHAKU  VARCHAR2(5) --「ＮＢＳＧ＿保守到着」
	,NBSG_HOSHU_TAIKAN  VARCHAR2(5) --「ＮＢＳＧ＿保守退館」
	,NBSG_TAIIN_SHIMEI  VARCHAR2(40) --「ＮＢＳＧ＿隊員氏名」
	,NBSG_SHUTSUDO_RIREKI_NO  CHAR(2) --「ＮＢＳＧ＿出動履歴ＮＯ」
	,NBSG_SOSHIN_KBN  VARCHAR2(10) --「ＮＢＳＧ＿送信区分」
	,NBSG_YOYAKU  NUMBER(1,0) --「ＮＢＳＧ＿予約」
	,NBSG_SHOGAI_CD  CHAR(3) --「ＮＢＳＧ＿障害コード」
	,NBSG_SHOGAI_CD_MONGON  VARCHAR2(100) --「ＮＢＳＧ＿障害コード文言」
	,NBSG_SHOSAI_ERROR_CD_1  VARCHAR2(16) --「ＮＢＳＧ＿詳細エラーコード１」
	,NBSG_SHOGAI_ERROR_CD_MONGON  VARCHAR2(100) --「ＮＢＳＧ＿障害エラーコード文言」
	,NBSG_SHOGAI_NAIYO  VARCHAR2(40) --「ＮＢＳＧ＿障害内容」
	,NBSG_IRAI_NAIYO_MEMO  VARCHAR2(160) --「ＮＢＳＧ＿依頼内容メモ」
	,NBSG_SHOCHI_NAIYO_TO  VARCHAR2(160) --「ＮＢＳＧ＿処置内容等」
	,NBSG_SHOCHI_NAIYO_TO_2  VARCHAR2(160) --「ＮＢＳＧ＿処置内容等２」
	,NBSG_KAISHUBUTSU_MANKEN  NUMBER(3,0) --「ＮＢＳＧ＿回収物万券」
	,NBSG_KAISHUBUTSU_GOSENKEN  NUMBER(3,0) --「ＮＢＳＧ＿回収物五千券」
	,NBSG_KAISHUBUTSU_NISENKEN  NUMBER(3,0) --「ＮＢＳＧ＿回収物二千券」
	,NBSG_KAISHUBUTSU_SENKEN  NUMBER(3,0) --「ＮＢＳＧ＿回収物千券」
	,NBSG_KAISHUBUTSU_GOHYAKUEN  NUMBER(3,0) --「ＮＢＳＧ＿回収物五百円」
	,NBSG_KAISHUBUTSU_HYAKUEN  NUMBER(3,0) --「ＮＢＳＧ＿回収物百円」
	,NBSG_KAISHUBUTSU_GOJUEN  NUMBER(3,0) --「ＮＢＳＧ＿回収物五十円」
	,NBSG_KAISHUBUTSU_JUEN  NUMBER(3,0) --「ＮＢＳＧ＿回収物十円」
	,NBSG_KAISHUBUTSU_GOEN  NUMBER(3,0) --「ＮＢＳＧ＿回収物五円」
	,NBSG_KAISHUBUTSU_ICHIEN  NUMBER(3,0) --「ＮＢＳＧ＿回収物一円」
	,NBSG_KAISHUBUTSU_GOKEI  NUMBER(8,0) --「ＮＢＳＧ＿回収物合計」
	,NBSG_KISHBTS_GNKN_SHCH_NAIYO  VARCHAR2(60) --「ＮＢＳＧ＿回収物現金処置内容」
	,NBSG_KAISHUBUTSU_CARD_MAISU  NUMBER(2,0) --「ＮＢＳＧ＿回収物カード枚数」
	,NBSG_KISHBTS_CRD_SHCH_NAIYO  VARCHAR2(60) --「ＮＢＳＧ＿回収物カード処置内容」
	,NBSG_KAISHUBUTSU_CARD_NO  VARCHAR2(20) --「ＮＢＳＧ＿回収物カード番号」
	,NBSG_KAISHUBUTSU_MEISAI_MAISU  NUMBER(2,0) --「ＮＢＳＧ＿回収物明細枚数」
	,NBSG_KISHBTS_MISI_SHCH_NAIYO  VARCHAR2(60) --「ＮＢＳＧ＿回収物明細処置内容」
	,NBSG_KAISHUBUTSU_TSUCHO_MAISU  NUMBER(2,0) --「ＮＢＳＧ＿回収物通帳枚数」
	,NBSG_KISHBTS_TSCH_SHCH_NAIYO  VARCHAR2(60) --「ＮＢＳＧ＿回収物通帳処置内容」
	,NBSG_KAISHUBUTSU_JOURNAL_MAISU  NUMBER(2,0) --「ＮＢＳＧ＿回収物ジャーナル枚数」
	,NBSG_KISHBTS_JRNL_SHCH_NAIYO  VARCHAR2(60) --「ＮＢＳＧ＿回収物ジャーナル処置内容」
	,NBSG_KAISHUBUTSU_SONOTA  VARCHAR2(1000) --「ＮＢＳＧ＿回収物その他」
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
	,CONSTRAINT ED5112W_PK PRIMARY KEY(
	 NBSG_SN
	,  NBSG_KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED5112W_TBL IS 'ＮＢ障害月報取込用ワーク'
/

COMMENT ON COLUMN ED5112W_TBL.NBSG_KAISHA_CD IS 'ＮＢＳＧ＿会社コード'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_SN IS 'ＮＢＳＧ＿連番'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_NO IS 'ＮＢＳＧ＿Ｎｏ'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_ATM_SOCHI_NO IS 'ＮＢＳＧ＿ＡＴＭ装置番号'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_UKETSUKE_NO IS 'ＮＢＳＧ＿受付番号'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_SECCHI_KIGYO IS 'ＮＢＳＧ＿設置企業'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_7BK_MISEBAN IS 'ＮＢＳＧ＿７ＢＫ店番'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_ATM_SECCHI_TEMPOMEI IS 'ＮＢＳＧ＿ＡＴＭ設置店舗名'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_KBN IS 'ＮＢＳＧ＿区分'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_HASSEI_JIKAN IS 'ＮＢＳＧ＿発生時間'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_UKETSUKE_HIZUKE IS 'ＮＢＳＧ＿受付日付'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_UKETSUKE_JIKAN IS 'ＮＢＳＧ＿受付時間'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_SHUTSUDO_HIZUKE IS 'ＮＢＳＧ＿出動日付'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_SHIJI_JIKAN IS 'ＮＢＳＧ＿指示時間'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_TOCHAKU_JIKAN IS 'ＮＢＳＧ＿到着時間'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_NYUKAN_JIKAN IS 'ＮＢＳＧ＿入館時間'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_TAIKAN_JIKAN IS 'ＮＢＳＧ＿退館時間'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_SHURYO_JIKAN IS 'ＮＢＳＧ＿終了時間'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_SHOYO_JIKAN IS 'ＮＢＳＧ＿所要時間'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_SAGYO_JIKAN IS 'ＮＢＳＧ＿作業時間'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_HOSHU_TOCHAKU IS 'ＮＢＳＧ＿保守到着'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_HOSHU_TAIKAN IS 'ＮＢＳＧ＿保守退館'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_TAIIN_SHIMEI IS 'ＮＢＳＧ＿隊員氏名'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_SHUTSUDO_RIREKI_NO IS 'ＮＢＳＧ＿出動履歴ＮＯ'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_SOSHIN_KBN IS 'ＮＢＳＧ＿送信区分'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_YOYAKU IS 'ＮＢＳＧ＿予約'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_SHOGAI_CD IS 'ＮＢＳＧ＿障害コード'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_SHOGAI_CD_MONGON IS 'ＮＢＳＧ＿障害コード文言'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_SHOSAI_ERROR_CD_1 IS 'ＮＢＳＧ＿詳細エラーコード１'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_SHOGAI_ERROR_CD_MONGON IS 'ＮＢＳＧ＿障害エラーコード文言'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_SHOGAI_NAIYO IS 'ＮＢＳＧ＿障害内容'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_IRAI_NAIYO_MEMO IS 'ＮＢＳＧ＿依頼内容メモ'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_SHOCHI_NAIYO_TO IS 'ＮＢＳＧ＿処置内容等'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_SHOCHI_NAIYO_TO_2 IS 'ＮＢＳＧ＿処置内容等２'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_KAISHUBUTSU_MANKEN IS 'ＮＢＳＧ＿回収物万券'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_KAISHUBUTSU_GOSENKEN IS 'ＮＢＳＧ＿回収物五千券'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_KAISHUBUTSU_NISENKEN IS 'ＮＢＳＧ＿回収物二千券'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_KAISHUBUTSU_SENKEN IS 'ＮＢＳＧ＿回収物千券'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_KAISHUBUTSU_GOHYAKUEN IS 'ＮＢＳＧ＿回収物五百円'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_KAISHUBUTSU_HYAKUEN IS 'ＮＢＳＧ＿回収物百円'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_KAISHUBUTSU_GOJUEN IS 'ＮＢＳＧ＿回収物五十円'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_KAISHUBUTSU_JUEN IS 'ＮＢＳＧ＿回収物十円'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_KAISHUBUTSU_GOEN IS 'ＮＢＳＧ＿回収物五円'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_KAISHUBUTSU_ICHIEN IS 'ＮＢＳＧ＿回収物一円'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_KAISHUBUTSU_GOKEI IS 'ＮＢＳＧ＿回収物合計'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_KISHBTS_GNKN_SHCH_NAIYO IS 'ＮＢＳＧ＿回収物現金処置内容'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_KAISHUBUTSU_CARD_MAISU IS 'ＮＢＳＧ＿回収物カード枚数'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_KISHBTS_CRD_SHCH_NAIYO IS 'ＮＢＳＧ＿回収物カード処置内容'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_KAISHUBUTSU_CARD_NO IS 'ＮＢＳＧ＿回収物カード番号'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_KAISHUBUTSU_MEISAI_MAISU IS 'ＮＢＳＧ＿回収物明細枚数'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_KISHBTS_MISI_SHCH_NAIYO IS 'ＮＢＳＧ＿回収物明細処置内容'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_KAISHUBUTSU_TSUCHO_MAISU IS 'ＮＢＳＧ＿回収物通帳枚数'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_KISHBTS_TSCH_SHCH_NAIYO IS 'ＮＢＳＧ＿回収物通帳処置内容'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_KAISHUBUTSU_JOURNAL_MAISU IS 'ＮＢＳＧ＿回収物ジャーナル枚数'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_KISHBTS_JRNL_SHCH_NAIYO IS 'ＮＢＳＧ＿回収物ジャーナル処置内容'
/
COMMENT ON COLUMN ED5112W_TBL.NBSG_KAISHUBUTSU_SONOTA IS 'ＮＢＳＧ＿回収物その他'
/
COMMENT ON COLUMN ED5112W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED5112W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED5112W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED5112W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED5112W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED5112W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED5112W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED5112W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED5112W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED5112W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED5112W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED5112W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/