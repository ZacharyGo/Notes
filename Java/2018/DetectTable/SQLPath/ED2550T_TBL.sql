﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED2550T_TBL.sql
-- 物理名：ED2550T_TBL
-- 論理名：常駐警備現況月次報告長期テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED2550T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED2550T_TBL (
	 JUCHU_KAISHA_CD  CHAR(5) NOT NULL --「受注会社コード」
	,UNY_JSS_JK_HKKSH_SKSI_TISH_YM  CHAR(6) NOT NULL --「運用実施状況報告書作成対象年月」
	,JCHKIB_GNKY_GTSJ_HKK_KBN  CHAR(1) NOT NULL --「常駐警備現況月次報告区分」
	,JCHKIB_GNKY_GTSJ_HKK_KBN_NM  VARCHAR2(60) --「常駐警備現況月次報告区分名称」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,KYCH_EIGYSK_TRHKSK_CD_1  CHAR(9) --「協調営業先取引先コード１」
	,SHOKAISAKI_NM  VARCHAR2(50) --「紹介先名称」
	,DIHY_GYMITKMT_JUCHU_KEIYAKU_NO  CHAR(15) --「代表業務委託元受注契約番号」
	,DIHY_GYMITKSK_JUCHU_KEIYAKU_NO  CHAR(15) --「代表業務委託先受注契約番号」
	,KEIBI_NIMMU_NAIYO  VARCHAR2(30) --「警備任務内容」
	,JUCHUGAISHA_NM  VARCHAR2(40) --「受注会社名称」
	,JUCHU_JIGYOSHO_CD  CHAR(6) --「受注事業所コード」
	,JUCHU_JIGYOSHO_NM  VARCHAR2(200) --「受注事業所名称」
	,JISSHI_JIGYOSHO_CD  CHAR(6) NOT NULL --「実施事業所コード」
	,JISSHI_JIGYOSHO_NM  VARCHAR2(200) --「実施事業所名称」
	,DIHY_GYMITKSK_KAISHA_CD  CHAR(5) --「代表業務委託先会社コード」
	,DIHY_GYMITKSK_KAISHA_NM  VARCHAR2(40) --「代表業務委託先会社名称」
	,DIHY_GYMITKSK_TORIHIKISAKI_CD  CHAR(9) --「代表業務委託先取引先コード」
	,DIHY_GYMITKSK_TORIHIKISAKI_NM  VARCHAR2(40) --「代表業務委託先取引先名称」
	,KEIYAKUSAKI_TORIHIKISAKI_CD  CHAR(9) --「契約先取引先コード」
	,KEIYAKUSAKI_TORIHIKISAKI_NM  VARCHAR2(40) --「契約先取引先名称」
	,KIYKSK_TRHKSK_BSH_CD  CHAR(4) --「契約先取引先部署コード」
	,WK_KIYKSK_TRHKSK_BWK_NM  VARCHAR2(40) --「ワーク用契約先取引先部署名称」
	,TAISHOSAKI_CD  CHAR(9) --「対象先コード」
	,TAISHOSAKI_NM  VARCHAR2(40) --「対象先名称」
	,JUSHO_CD_TAIO_JUSHO  VARCHAR2(61) --「住所コード対応住所」
	,GETSUGAKU_KEIBI_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「月額警備料金金額」
	,GYOMUITAKU_RYOKIN_SOGAKU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「業務委託料金総額金額」
	,HEIKIN_GYOMUITAU_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「平均業務委託率」
	,GYOMU_KAISHI_YMD  DATE --「業務開始年月日」
	,KEIYAKUSAKI_GYOSHU_CD  CHAR(4) --「契約先業種コード」
	,KEIYAKUSAKI_GYOSHU_NM  VARCHAR2(60) --「契約先業種名称」
	,TAISHOSAKI_GYOSHU_KBN  CHAR(3) NOT NULL --「対象先業種区分」
	,KEIBI_TAISHO_GYOSHU_NM  VARCHAR2(60) --「警備対象業種名称」
	,HAICHISAKI_CD  VARCHAR2(6) --「配置先コード」
	,HAICHISAKI_NM  VARCHAR2(200) --「配置先名称」
	,BAISHO_GENDO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「賠償限度金額」
	,NOBEYUKA_MENSEKI  NUMBER(12,3) DEFAULT '0.0' NOT NULL --「延べ床面積」
	,KEIYAKU_HENKO_TEKIYO_YMD  DATE --「契約変更適用年月日」
	,KYU_GETSUGAKU_KEIBI_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「旧月額警備料金金額」
	,GTSGK_KIB_RYKN_KAITEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「月額警備料金改定金額」
	,KICHU_EIKYO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「期中影響金額」
	,KAITEIRIYU_KBN_NM  VARCHAR2(60) --「改定理由区分名称」
	,HENKO_RIYU_NAIYO  VARCHAR2(50) --「変更理由内容」
	,KAIYAKU_YMD  DATE --「解約年月日」
	,KAIYAKU_RIYU  VARCHAR2(50) --「解約理由」
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
	,CONSTRAINT ED2550T_PK PRIMARY KEY(
	 UNY_JSS_JK_HKKSH_SKSI_TISH_YM
	,  JCHKIB_GNKY_GTSJ_HKK_KBN
	,  JUCHU_KEIYAKU_NO
	,  JUCHU_KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED2550T_TBL IS '常駐警備現況月次報告長期テーブル'
/

COMMENT ON COLUMN ED2550T_TBL.JUCHU_KAISHA_CD IS '受注会社コード'
/
COMMENT ON COLUMN ED2550T_TBL.UNY_JSS_JK_HKKSH_SKSI_TISH_YM IS '運用実施状況報告書作成対象年月'
/
COMMENT ON COLUMN ED2550T_TBL.JCHKIB_GNKY_GTSJ_HKK_KBN IS '常駐警備現況月次報告区分'
/
COMMENT ON COLUMN ED2550T_TBL.JCHKIB_GNKY_GTSJ_HKK_KBN_NM IS '常駐警備現況月次報告区分名称'
/
COMMENT ON COLUMN ED2550T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED2550T_TBL.KYCH_EIGYSK_TRHKSK_CD_1 IS '協調営業先取引先コード１'
/
COMMENT ON COLUMN ED2550T_TBL.SHOKAISAKI_NM IS '紹介先名称'
/
COMMENT ON COLUMN ED2550T_TBL.DIHY_GYMITKMT_JUCHU_KEIYAKU_NO IS '代表業務委託元受注契約番号'
/
COMMENT ON COLUMN ED2550T_TBL.DIHY_GYMITKSK_JUCHU_KEIYAKU_NO IS '代表業務委託先受注契約番号'
/
COMMENT ON COLUMN ED2550T_TBL.KEIBI_NIMMU_NAIYO IS '警備任務内容'
/
COMMENT ON COLUMN ED2550T_TBL.JUCHUGAISHA_NM IS '受注会社名称'
/
COMMENT ON COLUMN ED2550T_TBL.JUCHU_JIGYOSHO_CD IS '受注事業所コード'
/
COMMENT ON COLUMN ED2550T_TBL.JUCHU_JIGYOSHO_NM IS '受注事業所名称'
/
COMMENT ON COLUMN ED2550T_TBL.JISSHI_JIGYOSHO_CD IS '実施事業所コード'
/
COMMENT ON COLUMN ED2550T_TBL.JISSHI_JIGYOSHO_NM IS '実施事業所名称'
/
COMMENT ON COLUMN ED2550T_TBL.DIHY_GYMITKSK_KAISHA_CD IS '代表業務委託先会社コード'
/
COMMENT ON COLUMN ED2550T_TBL.DIHY_GYMITKSK_KAISHA_NM IS '代表業務委託先会社名称'
/
COMMENT ON COLUMN ED2550T_TBL.DIHY_GYMITKSK_TORIHIKISAKI_CD IS '代表業務委託先取引先コード'
/
COMMENT ON COLUMN ED2550T_TBL.DIHY_GYMITKSK_TORIHIKISAKI_NM IS '代表業務委託先取引先名称'
/
COMMENT ON COLUMN ED2550T_TBL.KEIYAKUSAKI_TORIHIKISAKI_CD IS '契約先取引先コード'
/
COMMENT ON COLUMN ED2550T_TBL.KEIYAKUSAKI_TORIHIKISAKI_NM IS '契約先取引先名称'
/
COMMENT ON COLUMN ED2550T_TBL.KIYKSK_TRHKSK_BSH_CD IS '契約先取引先部署コード'
/
COMMENT ON COLUMN ED2550T_TBL.WK_KIYKSK_TRHKSK_BWK_NM IS 'ワーク用契約先取引先部署名称'
/
COMMENT ON COLUMN ED2550T_TBL.TAISHOSAKI_CD IS '対象先コード'
/
COMMENT ON COLUMN ED2550T_TBL.TAISHOSAKI_NM IS '対象先名称'
/
COMMENT ON COLUMN ED2550T_TBL.JUSHO_CD_TAIO_JUSHO IS '住所コード対応住所'
/
COMMENT ON COLUMN ED2550T_TBL.GETSUGAKU_KEIBI_RYOKIN_AMT IS '月額警備料金金額'
/
COMMENT ON COLUMN ED2550T_TBL.GYOMUITAKU_RYOKIN_SOGAKU_AMT IS '業務委託料金総額金額'
/
COMMENT ON COLUMN ED2550T_TBL.HEIKIN_GYOMUITAU_RITSU IS '平均業務委託率'
/
COMMENT ON COLUMN ED2550T_TBL.GYOMU_KAISHI_YMD IS '業務開始年月日'
/
COMMENT ON COLUMN ED2550T_TBL.KEIYAKUSAKI_GYOSHU_CD IS '契約先業種コード'
/
COMMENT ON COLUMN ED2550T_TBL.KEIYAKUSAKI_GYOSHU_NM IS '契約先業種名称'
/
COMMENT ON COLUMN ED2550T_TBL.TAISHOSAKI_GYOSHU_KBN IS '対象先業種区分'
/
COMMENT ON COLUMN ED2550T_TBL.KEIBI_TAISHO_GYOSHU_NM IS '警備対象業種名称'
/
COMMENT ON COLUMN ED2550T_TBL.HAICHISAKI_CD IS '配置先コード'
/
COMMENT ON COLUMN ED2550T_TBL.HAICHISAKI_NM IS '配置先名称'
/
COMMENT ON COLUMN ED2550T_TBL.BAISHO_GENDO_AMT IS '賠償限度金額'
/
COMMENT ON COLUMN ED2550T_TBL.NOBEYUKA_MENSEKI IS '延べ床面積'
/
COMMENT ON COLUMN ED2550T_TBL.KEIYAKU_HENKO_TEKIYO_YMD IS '契約変更適用年月日'
/
COMMENT ON COLUMN ED2550T_TBL.KYU_GETSUGAKU_KEIBI_RYOKIN_AMT IS '旧月額警備料金金額'
/
COMMENT ON COLUMN ED2550T_TBL.GTSGK_KIB_RYKN_KAITEI_AMT IS '月額警備料金改定金額'
/
COMMENT ON COLUMN ED2550T_TBL.KICHU_EIKYO_AMT IS '期中影響金額'
/
COMMENT ON COLUMN ED2550T_TBL.KAITEIRIYU_KBN_NM IS '改定理由区分名称'
/
COMMENT ON COLUMN ED2550T_TBL.HENKO_RIYU_NAIYO IS '変更理由内容'
/
COMMENT ON COLUMN ED2550T_TBL.KAIYAKU_YMD IS '解約年月日'
/
COMMENT ON COLUMN ED2550T_TBL.KAIYAKU_RIYU IS '解約理由'
/
COMMENT ON COLUMN ED2550T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED2550T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED2550T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED2550T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED2550T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED2550T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED2550T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED2550T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED2550T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED2550T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED2550T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED2550T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
