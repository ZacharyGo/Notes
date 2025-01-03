﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0632T_TBL.sql
-- 物理名：ED0632T_TBL
-- 論理名：受注通貨テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0632T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0632T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) NOT NULL --「受注契約変更番号」
	,TSURISEN_SAKUSEI_GYOMUARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「釣銭作成業務有フラグ」
	,URIAGEKIN_SEISA_GYOMUARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「売上金精査業務有フラグ」
	,MOCHIKOMI_KINYU_KIKAN_NM  VARCHAR2(30) --「持込金融機関名称」
	,URIAGEKIN_KAISHU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「売上金回収金額」
	,SEISA_JISSHIKAI_KBN  CHAR(1) NOT NULL --「精査実施回区分」
	,SONOTA_SEISA_JISSHI_KAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「その他精査実施回数」
	,SISRY_STTI_URAGKN_SHHI_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「精査料設定売上金紙幣枚数」
	,SISRY_STTI_URAGKN_KK_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「精査料設定売上金硬貨枚数」
	,SISRY_STTI_ASBKR_SHR_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「精査料設定麻袋処理数量」
	,RYOGAEKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「両替金金額」
	,RYOGAEKIN_JISSHI_KAISU_KBN  CHAR(1) NOT NULL --「両替金実施回数区分」
	,SONOTA_RYOGAEKIN_JISSHI_KAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「その他両替金実施回数」
	,RYOGAEKIN_SHIHEI_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「両替金紙幣枚数」
	,RYOGAEKIN_KOKA_BOKIN_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「両替金硬貨棒金数量」
	,RYOGAEKIN_KOKA_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「両替金硬貨枚数」
	,RYGEKN_ASBKR_SHR_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「両替金麻袋処理数量」
	,GNS_KIS_YSHN_GNKNAR_FLG  CHAR(1) DEFAULT '0' NOT NULL --「現送警送輸送品現金有フラグ」
	,SNT_GNS_KIS_YSHNAR_FLG  CHAR(1) DEFAULT '0' NOT NULL --「その他現送警送輸送品有フラグ」
	,SONOTA_GENSO_KEISO_YUSOHIN_NM  VARCHAR2(10) --「その他現送警送輸送品名称」
	,TSURISEN_SHIKIN_UKTR_HOHO_KBN  CHAR(1) DEFAULT '0' --「釣銭資金受取方法区分」
	,YOTAKU_AMT  NUMBER(13,0) DEFAULT '0' --「預託金額」
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
	,CONSTRAINT ED0632T_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  JUCHU_KEIYAKU_HENKO_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0632T_TBL IS '受注通貨テーブル'
/

COMMENT ON COLUMN ED0632T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0632T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED0632T_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED0632T_TBL.TSURISEN_SAKUSEI_GYOMUARI_FLG IS '釣銭作成業務有フラグ'
/
COMMENT ON COLUMN ED0632T_TBL.URIAGEKIN_SEISA_GYOMUARI_FLG IS '売上金精査業務有フラグ'
/
COMMENT ON COLUMN ED0632T_TBL.MOCHIKOMI_KINYU_KIKAN_NM IS '持込金融機関名称'
/
COMMENT ON COLUMN ED0632T_TBL.URIAGEKIN_KAISHU_AMT IS '売上金回収金額'
/
COMMENT ON COLUMN ED0632T_TBL.SEISA_JISSHIKAI_KBN IS '精査実施回区分'
/
COMMENT ON COLUMN ED0632T_TBL.SONOTA_SEISA_JISSHI_KAISU IS 'その他精査実施回数'
/
COMMENT ON COLUMN ED0632T_TBL.SISRY_STTI_URAGKN_SHHI_MAISU IS '精査料設定売上金紙幣枚数'
/
COMMENT ON COLUMN ED0632T_TBL.SISRY_STTI_URAGKN_KK_MAISU IS '精査料設定売上金硬貨枚数'
/
COMMENT ON COLUMN ED0632T_TBL.SISRY_STTI_ASBKR_SHR_SURYO IS '精査料設定麻袋処理数量'
/
COMMENT ON COLUMN ED0632T_TBL.RYOGAEKIN_AMT IS '両替金金額'
/
COMMENT ON COLUMN ED0632T_TBL.RYOGAEKIN_JISSHI_KAISU_KBN IS '両替金実施回数区分'
/
COMMENT ON COLUMN ED0632T_TBL.SONOTA_RYOGAEKIN_JISSHI_KAISU IS 'その他両替金実施回数'
/
COMMENT ON COLUMN ED0632T_TBL.RYOGAEKIN_SHIHEI_MAISU IS '両替金紙幣枚数'
/
COMMENT ON COLUMN ED0632T_TBL.RYOGAEKIN_KOKA_BOKIN_SURYO IS '両替金硬貨棒金数量'
/
COMMENT ON COLUMN ED0632T_TBL.RYOGAEKIN_KOKA_MAISU IS '両替金硬貨枚数'
/
COMMENT ON COLUMN ED0632T_TBL.RYGEKN_ASBKR_SHR_SURYO IS '両替金麻袋処理数量'
/
COMMENT ON COLUMN ED0632T_TBL.GNS_KIS_YSHN_GNKNAR_FLG IS '現送警送輸送品現金有フラグ'
/
COMMENT ON COLUMN ED0632T_TBL.SNT_GNS_KIS_YSHNAR_FLG IS 'その他現送警送輸送品有フラグ'
/
COMMENT ON COLUMN ED0632T_TBL.SONOTA_GENSO_KEISO_YUSOHIN_NM IS 'その他現送警送輸送品名称'
/
COMMENT ON COLUMN ED0632T_TBL.TSURISEN_SHIKIN_UKTR_HOHO_KBN IS '釣銭資金受取方法区分'
/
COMMENT ON COLUMN ED0632T_TBL.YOTAKU_AMT IS '預託金額'
/
COMMENT ON COLUMN ED0632T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0632T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0632T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0632T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0632T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0632T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0632T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0632T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0632T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0632T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0632T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0632T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
