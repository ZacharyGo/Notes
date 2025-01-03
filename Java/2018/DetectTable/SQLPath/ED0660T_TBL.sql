﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0660T_TBL.sql
-- 物理名：ED0660T_TBL
-- 論理名：受注電報テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0660T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0660T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) NOT NULL --「受注契約変更番号」
	,DEMPO_HAITATSU_KANRYO_YMD  DATE --「電報配達完了年月日」
	,ALSOK_DEMPO_ORDER_ID  CHAR(15) --「ＡＬＳＯＫ電報オーダＩＤ」
	,ALSOK_DEMPO_SHOHIN_NM  VARCHAR2(256) --「ＡＬＳＯＫ電報商品名称」
	,ALSOK_DEMPO_SHOHIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「ＡＬＳＯＫ電報商品金額」
	,ALSOK_DEMPO_ITAKU_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「ＡＬＳＯＫ電報委託金額」
	,ALSOK_DMP_GYM_ITKSK_TRHKSK_CD  CHAR(9) --「ＡＬＳＯＫ電報業務委託先取引先コード」
	,ALSOK_DMP_SIKYSK_TRHKSK_CD  CHAR(9) --「ＡＬＳＯＫ電報請求先取引先コード」
	,CHUMOMMOTO_KAISHA_NM  VARCHAR2(40) --「注文元会社名称」
	,SASHIDASHIMOTO_BUSHO_NM  VARCHAR2(40) --「差出元部署名称」
	,CHUMOMMOTO_MISE_NO  CHAR(15) --「注文元店番号」
	,CHUMOMMOTO_NM  VARCHAR2(60) --「注文元氏名」
	,CHUMOMMOTO_ATENA_NM_1  VARCHAR2(60) --「注文元宛名氏名１」
	,CHUMOMMOTO_ATENA_NM_2  VARCHAR2(60) --「注文元宛名氏名２」
	,CHUMOMMOTO_ATENA_NM_3  VARCHAR2(60) --「注文元宛名氏名３」
	,CHUMOMMOTO_ATENA_NM_4  VARCHAR2(60) --「注文元宛名氏名４」
	,DEMPO_SOFUSAKI_KAISHA_NM  VARCHAR2(40) --「電報送付先会社名称」
	,DEMPO_SOFUSAKI_YAKUSHOKU_NM  VARCHAR2(200) --「電報送付先役職名称」
	,DEMPO_SOFUSAKI_NM_1  VARCHAR2(60) --「電報送付先氏名１」
	,DEMPO_SOFUSAKI_NM_2  VARCHAR2(60) --「電報送付先氏名２」
	,DEMPO_SOFUSAKI_IKKATSU_JUSHO  VARCHAR2(300) --「電報送付先一括住所」
	,DEMPO_SOFUSAKI_SHIKIJO_NM  VARCHAR2(40) --「電報送付先式場名称」
	,ALSOK_DEMPO_KAIIN_NO  CHAR(6) --「ＡＬＳＯＫ電報会員番号」
	,TORIATSUKAITEN_CD  CHAR(10) --「取扱店コード」
	,ALSOK_DEMPO_CHUMON_NO  CHAR(6) --「ＡＬＳＯＫ電報注文番号」
	,ALSOK_DEMPO_KAIIN_KOKYAKU_KBN  CHAR(2) NOT NULL --「ＡＬＳＯＫ電報会員顧客区分」
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
	,CONSTRAINT ED0660T_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  JUCHU_KEIYAKU_HENKO_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0660T_TBL IS '受注電報テーブル'
/

COMMENT ON COLUMN ED0660T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0660T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED0660T_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED0660T_TBL.DEMPO_HAITATSU_KANRYO_YMD IS '電報配達完了年月日'
/
COMMENT ON COLUMN ED0660T_TBL.ALSOK_DEMPO_ORDER_ID IS 'ＡＬＳＯＫ電報オーダＩＤ'
/
COMMENT ON COLUMN ED0660T_TBL.ALSOK_DEMPO_SHOHIN_NM IS 'ＡＬＳＯＫ電報商品名称'
/
COMMENT ON COLUMN ED0660T_TBL.ALSOK_DEMPO_SHOHIN_AMT IS 'ＡＬＳＯＫ電報商品金額'
/
COMMENT ON COLUMN ED0660T_TBL.ALSOK_DEMPO_ITAKU_AMT IS 'ＡＬＳＯＫ電報委託金額'
/
COMMENT ON COLUMN ED0660T_TBL.ALSOK_DMP_GYM_ITKSK_TRHKSK_CD IS 'ＡＬＳＯＫ電報業務委託先取引先コード'
/
COMMENT ON COLUMN ED0660T_TBL.ALSOK_DMP_SIKYSK_TRHKSK_CD IS 'ＡＬＳＯＫ電報請求先取引先コード'
/
COMMENT ON COLUMN ED0660T_TBL.CHUMOMMOTO_KAISHA_NM IS '注文元会社名称'
/
COMMENT ON COLUMN ED0660T_TBL.SASHIDASHIMOTO_BUSHO_NM IS '差出元部署名称'
/
COMMENT ON COLUMN ED0660T_TBL.CHUMOMMOTO_MISE_NO IS '注文元店番号'
/
COMMENT ON COLUMN ED0660T_TBL.CHUMOMMOTO_NM IS '注文元氏名'
/
COMMENT ON COLUMN ED0660T_TBL.CHUMOMMOTO_ATENA_NM_1 IS '注文元宛名氏名１'
/
COMMENT ON COLUMN ED0660T_TBL.CHUMOMMOTO_ATENA_NM_2 IS '注文元宛名氏名２'
/
COMMENT ON COLUMN ED0660T_TBL.CHUMOMMOTO_ATENA_NM_3 IS '注文元宛名氏名３'
/
COMMENT ON COLUMN ED0660T_TBL.CHUMOMMOTO_ATENA_NM_4 IS '注文元宛名氏名４'
/
COMMENT ON COLUMN ED0660T_TBL.DEMPO_SOFUSAKI_KAISHA_NM IS '電報送付先会社名称'
/
COMMENT ON COLUMN ED0660T_TBL.DEMPO_SOFUSAKI_YAKUSHOKU_NM IS '電報送付先役職名称'
/
COMMENT ON COLUMN ED0660T_TBL.DEMPO_SOFUSAKI_NM_1 IS '電報送付先氏名１'
/
COMMENT ON COLUMN ED0660T_TBL.DEMPO_SOFUSAKI_NM_2 IS '電報送付先氏名２'
/
COMMENT ON COLUMN ED0660T_TBL.DEMPO_SOFUSAKI_IKKATSU_JUSHO IS '電報送付先一括住所'
/
COMMENT ON COLUMN ED0660T_TBL.DEMPO_SOFUSAKI_SHIKIJO_NM IS '電報送付先式場名称'
/
COMMENT ON COLUMN ED0660T_TBL.ALSOK_DEMPO_KAIIN_NO IS 'ＡＬＳＯＫ電報会員番号'
/
COMMENT ON COLUMN ED0660T_TBL.TORIATSUKAITEN_CD IS '取扱店コード'
/
COMMENT ON COLUMN ED0660T_TBL.ALSOK_DEMPO_CHUMON_NO IS 'ＡＬＳＯＫ電報注文番号'
/
COMMENT ON COLUMN ED0660T_TBL.ALSOK_DEMPO_KAIIN_KOKYAKU_KBN IS 'ＡＬＳＯＫ電報会員顧客区分'
/
COMMENT ON COLUMN ED0660T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0660T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0660T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0660T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0660T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0660T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0660T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0660T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0660T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0660T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0660T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0660T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
