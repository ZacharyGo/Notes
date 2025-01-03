﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED2555W_TBL.sql
-- 物理名：ED2555W_TBL
-- 論理名：常駐警備処理月実施受注契約臨時ワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED2555W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED2555W_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) NOT NULL --「受注契約変更番号」
	,UNY_JSS_JK_HKKSH_SKSI_TISH_YM  CHAR(6) NOT NULL --「運用実施状況報告書作成対象年月」
	,GYOMU_KAISHI_YMD  DATE --「業務開始年月日」
	,GYOMU_SHURYO_YMD  DATE --「業務終了年月日」
	,KEIBI_SHONICHI_KAISHI_TM  CHAR(4) --「警備初日開始時刻」
	,KEIBI_SAISHUBI_SHURYO_TM  CHAR(4) --「警備最終日終了時刻」
	,SHOHIN_SERVICE_CD  CHAR(3) --「商品サービスコード」
	,KEIYAKU_CHOKI_RINJI_KBN  CHAR(1) NOT NULL --「契約長期臨時区分」
	,JUCHU_JIGYOSHO_CD  CHAR(6) NOT NULL --「受注事業所コード」
	,JISSHI_JIGYOSHO_CD  CHAR(6) NOT NULL --「実施事業所コード」
	,KEIYAKUSAKI_TORIHIKISAKI_CD  CHAR(9) NOT NULL --「契約先取引先コード」
	,KIYKSK_TRHKSK_BSH_CD  CHAR(4) --「契約先取引先部署コード」
	,TAISHOSAKI_CD  CHAR(9) NOT NULL --「対象先コード」
	,GETSUGAKU_KEIBI_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「月額警備料金金額」
	,JCHRNJ_HIKN_JKN_TNK_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「常駐臨時平均時間単価金額」
	,DIHY_GYMITKMT_JUCHU_KEIYAKU_NO  CHAR(15) --「代表業務委託元受注契約番号」
	,DIHY_GYMITKSK_JUCHU_KEIYAKU_NO  CHAR(15) --「代表業務委託先受注契約番号」
	,DIHY_GYMITKSK_KAISHA_CD  CHAR(5) --「代表業務委託先会社コード」
	,DIHY_GYMITKSK_TORIHIKISAKI_CD  CHAR(9) --「代表業務委託先取引先コード」
	,GYOMUITAKU_RYOKIN_SOGAKU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「業務委託料金総額金額」
	,HEIKIN_GYOMUITAU_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「平均業務委託率」
	,KEIBI_NIMMU_NAIYO  VARCHAR2(30) --「警備任務内容」
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
	,CONSTRAINT ED2555W_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  JUCHU_KEIYAKU_HENKO_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED2555W_TBL IS '常駐警備処理月実施受注契約臨時ワーク'
/

COMMENT ON COLUMN ED2555W_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED2555W_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED2555W_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED2555W_TBL.UNY_JSS_JK_HKKSH_SKSI_TISH_YM IS '運用実施状況報告書作成対象年月'
/
COMMENT ON COLUMN ED2555W_TBL.GYOMU_KAISHI_YMD IS '業務開始年月日'
/
COMMENT ON COLUMN ED2555W_TBL.GYOMU_SHURYO_YMD IS '業務終了年月日'
/
COMMENT ON COLUMN ED2555W_TBL.KEIBI_SHONICHI_KAISHI_TM IS '警備初日開始時刻'
/
COMMENT ON COLUMN ED2555W_TBL.KEIBI_SAISHUBI_SHURYO_TM IS '警備最終日終了時刻'
/
COMMENT ON COLUMN ED2555W_TBL.SHOHIN_SERVICE_CD IS '商品サービスコード'
/
COMMENT ON COLUMN ED2555W_TBL.KEIYAKU_CHOKI_RINJI_KBN IS '契約長期臨時区分'
/
COMMENT ON COLUMN ED2555W_TBL.JUCHU_JIGYOSHO_CD IS '受注事業所コード'
/
COMMENT ON COLUMN ED2555W_TBL.JISSHI_JIGYOSHO_CD IS '実施事業所コード'
/
COMMENT ON COLUMN ED2555W_TBL.KEIYAKUSAKI_TORIHIKISAKI_CD IS '契約先取引先コード'
/
COMMENT ON COLUMN ED2555W_TBL.KIYKSK_TRHKSK_BSH_CD IS '契約先取引先部署コード'
/
COMMENT ON COLUMN ED2555W_TBL.TAISHOSAKI_CD IS '対象先コード'
/
COMMENT ON COLUMN ED2555W_TBL.GETSUGAKU_KEIBI_RYOKIN_AMT IS '月額警備料金金額'
/
COMMENT ON COLUMN ED2555W_TBL.JCHRNJ_HIKN_JKN_TNK_AMT IS '常駐臨時平均時間単価金額'
/
COMMENT ON COLUMN ED2555W_TBL.DIHY_GYMITKMT_JUCHU_KEIYAKU_NO IS '代表業務委託元受注契約番号'
/
COMMENT ON COLUMN ED2555W_TBL.DIHY_GYMITKSK_JUCHU_KEIYAKU_NO IS '代表業務委託先受注契約番号'
/
COMMENT ON COLUMN ED2555W_TBL.DIHY_GYMITKSK_KAISHA_CD IS '代表業務委託先会社コード'
/
COMMENT ON COLUMN ED2555W_TBL.DIHY_GYMITKSK_TORIHIKISAKI_CD IS '代表業務委託先取引先コード'
/
COMMENT ON COLUMN ED2555W_TBL.GYOMUITAKU_RYOKIN_SOGAKU_AMT IS '業務委託料金総額金額'
/
COMMENT ON COLUMN ED2555W_TBL.HEIKIN_GYOMUITAU_RITSU IS '平均業務委託率'
/
COMMENT ON COLUMN ED2555W_TBL.KEIBI_NIMMU_NAIYO IS '警備任務内容'
/
COMMENT ON COLUMN ED2555W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED2555W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED2555W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED2555W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED2555W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED2555W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED2555W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED2555W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED2555W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED2555W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED2555W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED2555W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
