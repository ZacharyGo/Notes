﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4365T_TBL.sql
-- 物理名：ED4365T_TBL
-- 論理名：警備診断警送入出金機テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4365T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4365T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KEIBI_SHINDAN_NO  CHAR(17) NOT NULL --「警備診断番号」
	,KIKAI_KEIBI_SHUBETSU_KBN  CHAR(1) NOT NULL --「機械警備種別区分」
	,TONYU_TSUIKA_CARD_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「投入追加カード枚数」
	,SHIME_TSUIKA_CARD_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「締め追加カード枚数」
	,NYSHKKNK_GYOSHU_CD  CHAR(4) --「入出金機業種コード」
	,HEIKIN_1_D_URIAGE_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「平均１日売上金額」
	,SHIHEI_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「紙幣枚数」
	,KOKA_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「硬貨枚数」
	,FURIKOMI_HOSHIKI_KBN  CHAR(1) NOT NULL --「振込方式区分」
	,SHUYAKU_TEMPOSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「集約店舗数」
	,NYSHKKNK_FURIKOMI_D_SHITEI_CD  CHAR(3) --「入出金機振込日指定コード」
	,NYKNK_URAGKN_KAISHU_KEISU_CD  CHAR(3) --「入金機売上金回収係数コード」
	,URIAGEKIN_KAISHU_HINDO_NAIYO  VARCHAR2(100) --「売上金回収頻度内容」
	,TSURISENARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「釣銭有フラグ」
	,TSURISEN_HAIKIN_HINDO_CD  CHAR(3) --「釣銭配金頻度コード」
	,SHIKIN_CHOTATSU_HOHO_KBN  CHAR(1) NOT NULL --「資金調達方法区分」
	,TSURISEN_KOFU_HOHO_KBN  CHAR(1) NOT NULL --「釣銭交付方法区分」
	,SHIHEI_1_MAN_EN_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「紙幣１万円枚数」
	,SHIHEI_5_SEN_EN_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「紙幣５千円枚数」
	,SHIHEI_SEN_EN_MAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「紙幣千円枚数」
	,RYGEKN_500_EMB_KMB_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「両替金５００円棒金棒数量」
	,RYGEKN_100_EMB_KMB_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「両替金１００円棒金棒数量」
	,RYOGAEKIN_50_EMBO_KANABO_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「両替金５０円棒金棒数量」
	,RYOGAEKIN_10_EMBO_KANABO_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「両替金１０円棒金棒数量」
	,RYOGAEKIN_5_EMBO_KANABO_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「両替金５円棒金棒数量」
	,RYOGAEKIN_1_EMBO_KANABO_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「両替金１円棒金棒数量」
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
	,CONSTRAINT ED4365T_PK PRIMARY KEY(
	 KEIBI_SHINDAN_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4365T_TBL IS '警備診断警送入出金機テーブル'
/

COMMENT ON COLUMN ED4365T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED4365T_TBL.KEIBI_SHINDAN_NO IS '警備診断番号'
/
COMMENT ON COLUMN ED4365T_TBL.KIKAI_KEIBI_SHUBETSU_KBN IS '機械警備種別区分'
/
COMMENT ON COLUMN ED4365T_TBL.TONYU_TSUIKA_CARD_MAISU IS '投入追加カード枚数'
/
COMMENT ON COLUMN ED4365T_TBL.SHIME_TSUIKA_CARD_MAISU IS '締め追加カード枚数'
/
COMMENT ON COLUMN ED4365T_TBL.NYSHKKNK_GYOSHU_CD IS '入出金機業種コード'
/
COMMENT ON COLUMN ED4365T_TBL.HEIKIN_1_D_URIAGE_AMT IS '平均１日売上金額'
/
COMMENT ON COLUMN ED4365T_TBL.SHIHEI_MAISU IS '紙幣枚数'
/
COMMENT ON COLUMN ED4365T_TBL.KOKA_MAISU IS '硬貨枚数'
/
COMMENT ON COLUMN ED4365T_TBL.FURIKOMI_HOSHIKI_KBN IS '振込方式区分'
/
COMMENT ON COLUMN ED4365T_TBL.SHUYAKU_TEMPOSU IS '集約店舗数'
/
COMMENT ON COLUMN ED4365T_TBL.NYSHKKNK_FURIKOMI_D_SHITEI_CD IS '入出金機振込日指定コード'
/
COMMENT ON COLUMN ED4365T_TBL.NYKNK_URAGKN_KAISHU_KEISU_CD IS '入金機売上金回収係数コード'
/
COMMENT ON COLUMN ED4365T_TBL.URIAGEKIN_KAISHU_HINDO_NAIYO IS '売上金回収頻度内容'
/
COMMENT ON COLUMN ED4365T_TBL.TSURISENARI_FLG IS '釣銭有フラグ'
/
COMMENT ON COLUMN ED4365T_TBL.TSURISEN_HAIKIN_HINDO_CD IS '釣銭配金頻度コード'
/
COMMENT ON COLUMN ED4365T_TBL.SHIKIN_CHOTATSU_HOHO_KBN IS '資金調達方法区分'
/
COMMENT ON COLUMN ED4365T_TBL.TSURISEN_KOFU_HOHO_KBN IS '釣銭交付方法区分'
/
COMMENT ON COLUMN ED4365T_TBL.SHIHEI_1_MAN_EN_MAISU IS '紙幣１万円枚数'
/
COMMENT ON COLUMN ED4365T_TBL.SHIHEI_5_SEN_EN_MAISU IS '紙幣５千円枚数'
/
COMMENT ON COLUMN ED4365T_TBL.SHIHEI_SEN_EN_MAISU IS '紙幣千円枚数'
/
COMMENT ON COLUMN ED4365T_TBL.RYGEKN_500_EMB_KMB_SURYO IS '両替金５００円棒金棒数量'
/
COMMENT ON COLUMN ED4365T_TBL.RYGEKN_100_EMB_KMB_SURYO IS '両替金１００円棒金棒数量'
/
COMMENT ON COLUMN ED4365T_TBL.RYOGAEKIN_50_EMBO_KANABO_SURYO IS '両替金５０円棒金棒数量'
/
COMMENT ON COLUMN ED4365T_TBL.RYOGAEKIN_10_EMBO_KANABO_SURYO IS '両替金１０円棒金棒数量'
/
COMMENT ON COLUMN ED4365T_TBL.RYOGAEKIN_5_EMBO_KANABO_SURYO IS '両替金５円棒金棒数量'
/
COMMENT ON COLUMN ED4365T_TBL.RYOGAEKIN_1_EMBO_KANABO_SURYO IS '両替金１円棒金棒数量'
/
COMMENT ON COLUMN ED4365T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4365T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4365T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4365T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4365T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4365T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4365T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4365T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4365T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4365T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4365T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4365T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
