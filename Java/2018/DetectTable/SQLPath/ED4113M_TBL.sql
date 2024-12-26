﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4113M_TBL.sql
-- 物理名：ED4113M_TBL
-- 論理名：値引マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4113M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4113M_TBL (
	 SHOHIN_SERVICE_CD  CHAR(3) NOT NULL --「商品サービスコード」
	,NEBIKI_PATTERN_KBN  CHAR(1) NOT NULL --「値引パターン区分」
	,NEBIKI_CD  CHAR(6) NOT NULL --「値引コード」
	,HYOJI_JUN_1  NUMBER(4,0) DEFAULT '0' NOT NULL --「表示順１」
	,NEBIKI_SHUBETSU_KBN  CHAR(2) NOT NULL --「値引種別区分」
	,SHIHARAI_JOKEN_KBN  CHAR(1) NOT NULL --「支払条件区分」
	,SEIKYU_KEITAI_KBN  CHAR(2) NOT NULL --「請求形態区分」
	,NEBIKI_KAISHI_YMD  DATE --「値引開始年月日」
	,NEBIKI_SHURYO_YMD  DATE --「値引終了年月日」
	,NEBIKI_NM  VARCHAR2(60) NOT NULL --「値引名称」
	,GETSUGAKU_NEBIKI_HOSHIKI_KBN  CHAR(1) NOT NULL --「月額値引方式区分」
	,GETSUGAKU_NEBIKI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「月額値引金額」
	,GETSUGAKU_NEBIKI_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「月額値引率」
	,GETSUGAKU_NEBIKI_TSUKISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「月額値引月数」
	,GETSUGAKU_KIRISUTE_KBN  CHAR(1) NOT NULL --「月額切捨区分」
	,SHK_HYT_MBK_HSHK_KBN  CHAR(1) NOT NULL --「初期費用等値引方式区分」
	,SHOKI_HIYOTO_NEBIKI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「初期費用等値引金額」
	,SHOKI_HIYOTO_NEBIKI_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「初期費用等値引率」
	,SHOKI_HIYOTO_KIRISUTE_KBN  CHAR(1) NOT NULL --「初期費用等切捨区分」
	,HAMBAIGAKU_NEBIKI_HOSHIKI_KBN  CHAR(1) NOT NULL --「販売額値引方式区分」
	,HAMBAIGAKU_NEBIKI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「販売額値引金額」
	,HAMBAIGAKU_NEBIKI_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「販売額値引率」
	,HAMBAIGAKU_KIRISUTE_KBN  CHAR(1) NOT NULL --「販売額切捨区分」
	,KJGK_CHK_MBK_HSHK_KBN  CHAR(1) NOT NULL --「工事額長期値引方式区分」
	,KOJIGAKU_CHOKI_NEBIKI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「工事額長期値引金額」
	,KOJIGAKU_CHOKI_NEBIKI_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「工事額長期値引率」
	,KOJIGAKU_CHOKI_KIRISUTE_KBN  CHAR(1) NOT NULL --「工事額長期切捨区分」
	,KJGK_HMBI_MBK_HSHK_KBN  CHAR(1) NOT NULL --「工事額販売値引方式区分」
	,KOJIGAKU_HAMBAI_NEBIKI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「工事額販売値引金額」
	,KOJIGAKU_HAMBAI_NEBIKI_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「工事額販売値引率」
	,KOJIGAKU_HAMBAI_KIRISUTE_KBN  CHAR(1) NOT NULL --「工事額販売切捨区分」
	,RINJIHI_NEBIKI_HOSHIKI_KBN  CHAR(1) NOT NULL --「臨時費値引方式区分」
	,RINJIHI_NEBIKI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「臨時費値引金額」
	,RINJIHI_NEBIKI_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「臨時費値引率」
	,RINJIHI_HAMBAI_KIRISUTE_KBN  CHAR(1) NOT NULL --「臨時費販売切捨区分」
	,CASHBACK_HOSHIKI_KBN  CHAR(1) NOT NULL --「キャッシュバック方式区分」
	,CASHBACK_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「キャッシュバック金額」
	,CASHBACK_SONOTA_HIYO_CD  CHAR(8) --「キャッシュバックその他費用コード」
	,SHIHARAI_JOKEN_NEBIKI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「支払条件値引金額」
	,SHIHARAI_JOKEN_HOSHIKI_KBN  CHAR(1) NOT NULL --「支払条件値引方式区分」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
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
	,CONSTRAINT ED4113M_PK PRIMARY KEY(
	 SHOHIN_SERVICE_CD
	,  NEBIKI_PATTERN_KBN
	,  NEBIKI_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4113M_TBL IS '値引マスタ'
/

COMMENT ON COLUMN ED4113M_TBL.SHOHIN_SERVICE_CD IS '商品サービスコード'
/
COMMENT ON COLUMN ED4113M_TBL.NEBIKI_PATTERN_KBN IS '値引パターン区分'
/
COMMENT ON COLUMN ED4113M_TBL.NEBIKI_CD IS '値引コード'
/
COMMENT ON COLUMN ED4113M_TBL.HYOJI_JUN_1 IS '表示順１'
/
COMMENT ON COLUMN ED4113M_TBL.NEBIKI_SHUBETSU_KBN IS '値引種別区分'
/
COMMENT ON COLUMN ED4113M_TBL.SHIHARAI_JOKEN_KBN IS '支払条件区分'
/
COMMENT ON COLUMN ED4113M_TBL.SEIKYU_KEITAI_KBN IS '請求形態区分'
/
COMMENT ON COLUMN ED4113M_TBL.NEBIKI_KAISHI_YMD IS '値引開始年月日'
/
COMMENT ON COLUMN ED4113M_TBL.NEBIKI_SHURYO_YMD IS '値引終了年月日'
/
COMMENT ON COLUMN ED4113M_TBL.NEBIKI_NM IS '値引名称'
/
COMMENT ON COLUMN ED4113M_TBL.GETSUGAKU_NEBIKI_HOSHIKI_KBN IS '月額値引方式区分'
/
COMMENT ON COLUMN ED4113M_TBL.GETSUGAKU_NEBIKI_AMT IS '月額値引金額'
/
COMMENT ON COLUMN ED4113M_TBL.GETSUGAKU_NEBIKI_RITSU IS '月額値引率'
/
COMMENT ON COLUMN ED4113M_TBL.GETSUGAKU_NEBIKI_TSUKISU IS '月額値引月数'
/
COMMENT ON COLUMN ED4113M_TBL.GETSUGAKU_KIRISUTE_KBN IS '月額切捨区分'
/
COMMENT ON COLUMN ED4113M_TBL.SHK_HYT_MBK_HSHK_KBN IS '初期費用等値引方式区分'
/
COMMENT ON COLUMN ED4113M_TBL.SHOKI_HIYOTO_NEBIKI_AMT IS '初期費用等値引金額'
/
COMMENT ON COLUMN ED4113M_TBL.SHOKI_HIYOTO_NEBIKI_RITSU IS '初期費用等値引率'
/
COMMENT ON COLUMN ED4113M_TBL.SHOKI_HIYOTO_KIRISUTE_KBN IS '初期費用等切捨区分'
/
COMMENT ON COLUMN ED4113M_TBL.HAMBAIGAKU_NEBIKI_HOSHIKI_KBN IS '販売額値引方式区分'
/
COMMENT ON COLUMN ED4113M_TBL.HAMBAIGAKU_NEBIKI_AMT IS '販売額値引金額'
/
COMMENT ON COLUMN ED4113M_TBL.HAMBAIGAKU_NEBIKI_RITSU IS '販売額値引率'
/
COMMENT ON COLUMN ED4113M_TBL.HAMBAIGAKU_KIRISUTE_KBN IS '販売額切捨区分'
/
COMMENT ON COLUMN ED4113M_TBL.KJGK_CHK_MBK_HSHK_KBN IS '工事額長期値引方式区分'
/
COMMENT ON COLUMN ED4113M_TBL.KOJIGAKU_CHOKI_NEBIKI_AMT IS '工事額長期値引金額'
/
COMMENT ON COLUMN ED4113M_TBL.KOJIGAKU_CHOKI_NEBIKI_RITSU IS '工事額長期値引率'
/
COMMENT ON COLUMN ED4113M_TBL.KOJIGAKU_CHOKI_KIRISUTE_KBN IS '工事額長期切捨区分'
/
COMMENT ON COLUMN ED4113M_TBL.KJGK_HMBI_MBK_HSHK_KBN IS '工事額販売値引方式区分'
/
COMMENT ON COLUMN ED4113M_TBL.KOJIGAKU_HAMBAI_NEBIKI_AMT IS '工事額販売値引金額'
/
COMMENT ON COLUMN ED4113M_TBL.KOJIGAKU_HAMBAI_NEBIKI_RITSU IS '工事額販売値引率'
/
COMMENT ON COLUMN ED4113M_TBL.KOJIGAKU_HAMBAI_KIRISUTE_KBN IS '工事額販売切捨区分'
/
COMMENT ON COLUMN ED4113M_TBL.RINJIHI_NEBIKI_HOSHIKI_KBN IS '臨時費値引方式区分'
/
COMMENT ON COLUMN ED4113M_TBL.RINJIHI_NEBIKI_AMT IS '臨時費値引金額'
/
COMMENT ON COLUMN ED4113M_TBL.RINJIHI_NEBIKI_RITSU IS '臨時費値引率'
/
COMMENT ON COLUMN ED4113M_TBL.RINJIHI_HAMBAI_KIRISUTE_KBN IS '臨時費販売切捨区分'
/
COMMENT ON COLUMN ED4113M_TBL.CASHBACK_HOSHIKI_KBN IS 'キャッシュバック方式区分'
/
COMMENT ON COLUMN ED4113M_TBL.CASHBACK_AMT IS 'キャッシュバック金額'
/
COMMENT ON COLUMN ED4113M_TBL.CASHBACK_SONOTA_HIYO_CD IS 'キャッシュバックその他費用コード'
/
COMMENT ON COLUMN ED4113M_TBL.SHIHARAI_JOKEN_NEBIKI_AMT IS '支払条件値引金額'
/
COMMENT ON COLUMN ED4113M_TBL.SHIHARAI_JOKEN_HOSHIKI_KBN IS '支払条件値引方式区分'
/
COMMENT ON COLUMN ED4113M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4113M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4113M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4113M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4113M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4113M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4113M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4113M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4113M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4113M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4113M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4113M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4113M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4113M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
