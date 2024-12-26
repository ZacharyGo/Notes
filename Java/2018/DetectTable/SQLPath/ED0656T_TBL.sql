﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0656T_TBL.sql
-- 物理名：ED0656T_TBL
-- 論理名：受注工事詳細テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0656T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0656T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) NOT NULL --「受注契約変更番号」
	,KOJI_SHOSAI_SN  CHAR(14) NOT NULL --「工事詳細連番」
	,JIGYO_SEGMENT_CD  CHAR(3) --「事業セグメントコード」
	,KOJI_KBN  CHAR(1) NOT NULL --「工事区分」
	,GYM_ITKSK_TRHKSK_CD  CHAR(9) --「業務委託先取引先コード」
	,GYM_ITKSK_TRHKSK_BSH_CD  CHAR(4) --「業務委託先取引先部署コード」
	,KOJI_KYORYOKU_KAISHA_KBN  CHAR(1) NOT NULL --「工事協力会社区分」
	,KOJI_IRAISAKI_KBN  CHAR(1) NOT NULL --「工事依頼先区分」
	,MITSUMORI_NO  CHAR(15) --「見積番号」
	,SEKISAN_GENKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「積算原価金額」
	,KANRIHI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「管理費金額」
	,KOJI_GOKEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「工事合計金額」
	,ITAKU_SHUBETSU_CD  CHAR(4) --「委託種別コード」
	,ITAKU_KOJI_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「委託工事数量」
	,MITSUMORI_KBN  CHAR(1) NOT NULL --「見積区分」
	,SAISEKISAN_FLG  CHAR(1) DEFAULT '0' NOT NULL --「再積算フラグ」
	,HYOJUN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「標準金額」
	,GENKA_KNGK_KJGK_KISN_HOHO_KBN  CHAR(1) DEFAULT '0' NOT NULL --「原価金額工事額計算方法区分」
	,HYOJUN_KNGK_KJGK_KISN_HOHO_KBN  CHAR(1) DEFAULT '0' NOT NULL --「標準金額工事額計算方法区分」
	,RNJ_GYM_ITK_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「臨時業務委託料金金額」
	,GYOMU_ITAKU_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「業務委託率」
	,TEIKEI_MITSUMORI_NM  VARCHAR2(30) --「定型見積名称」
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
	,CONSTRAINT ED0656T_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  JUCHU_KEIYAKU_HENKO_NO
	,  KAISHA_CD
	,  KOJI_SHOSAI_SN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0656T_TBL IS '受注工事詳細テーブル'
/

COMMENT ON COLUMN ED0656T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0656T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED0656T_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED0656T_TBL.KOJI_SHOSAI_SN IS '工事詳細連番'
/
COMMENT ON COLUMN ED0656T_TBL.JIGYO_SEGMENT_CD IS '事業セグメントコード'
/
COMMENT ON COLUMN ED0656T_TBL.KOJI_KBN IS '工事区分'
/
COMMENT ON COLUMN ED0656T_TBL.GYM_ITKSK_TRHKSK_CD IS '業務委託先取引先コード'
/
COMMENT ON COLUMN ED0656T_TBL.GYM_ITKSK_TRHKSK_BSH_CD IS '業務委託先取引先部署コード'
/
COMMENT ON COLUMN ED0656T_TBL.KOJI_KYORYOKU_KAISHA_KBN IS '工事協力会社区分'
/
COMMENT ON COLUMN ED0656T_TBL.KOJI_IRAISAKI_KBN IS '工事依頼先区分'
/
COMMENT ON COLUMN ED0656T_TBL.MITSUMORI_NO IS '見積番号'
/
COMMENT ON COLUMN ED0656T_TBL.SEKISAN_GENKA_AMT IS '積算原価金額'
/
COMMENT ON COLUMN ED0656T_TBL.KANRIHI_AMT IS '管理費金額'
/
COMMENT ON COLUMN ED0656T_TBL.KOJI_GOKEI_AMT IS '工事合計金額'
/
COMMENT ON COLUMN ED0656T_TBL.ITAKU_SHUBETSU_CD IS '委託種別コード'
/
COMMENT ON COLUMN ED0656T_TBL.ITAKU_KOJI_SURYO IS '委託工事数量'
/
COMMENT ON COLUMN ED0656T_TBL.MITSUMORI_KBN IS '見積区分'
/
COMMENT ON COLUMN ED0656T_TBL.SAISEKISAN_FLG IS '再積算フラグ'
/
COMMENT ON COLUMN ED0656T_TBL.HYOJUN_AMT IS '標準金額'
/
COMMENT ON COLUMN ED0656T_TBL.GENKA_KNGK_KJGK_KISN_HOHO_KBN IS '原価金額工事額計算方法区分'
/
COMMENT ON COLUMN ED0656T_TBL.HYOJUN_KNGK_KJGK_KISN_HOHO_KBN IS '標準金額工事額計算方法区分'
/
COMMENT ON COLUMN ED0656T_TBL.RNJ_GYM_ITK_RYOKIN_AMT IS '臨時業務委託料金金額'
/
COMMENT ON COLUMN ED0656T_TBL.GYOMU_ITAKU_RITSU IS '業務委託率'
/
COMMENT ON COLUMN ED0656T_TBL.TEIKEI_MITSUMORI_NM IS '定型見積名称'
/
COMMENT ON COLUMN ED0656T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0656T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0656T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0656T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0656T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0656T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0656T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0656T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0656T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0656T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0656T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0656T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/