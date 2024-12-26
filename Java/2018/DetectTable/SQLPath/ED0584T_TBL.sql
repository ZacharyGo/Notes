﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0584T_TBL.sql
-- 物理名：ED0584T_TBL
-- 論理名：契約業務受託テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0584T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0584T_TBL (
	 KAISHA_CD  CHAR(5) --「会社コード」
	,KEIYAKU_ID  CHAR(18) NOT NULL --「契約ＩＤ」
	,GYM_ITK_HATCHUSHO_NO  CHAR(28) --「業務委託発注書番号」
	,JUCHU_KEIYAKU_NO  CHAR(15) --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) --「受注契約変更番号」
	,KEIYAKU_KBN  CHAR(1) NOT NULL --「契約区分」
	,HATCHU_KBN  CHAR(1) NOT NULL --「発注区分」
	,GYM_ITK_HATCHU_TEKIYO_YMD  DATE --「業務委託発注適用年月日」
	,GYM_ITK_TKY_KISH_YM  CHAR(6) --「業務委託適用開始年月」
	,GYM_ITK_TKY_SHRY_YM  CHAR(6) --「業務委託適用終了年月」
	,GYM_ITK_HATCHU_JKY_KBN  CHAR(1) NOT NULL --「業務委託発注状況区分」
	,DIHY_JSSH_JGYSH_GYM_SHBTS_KBN  CHAR(2) NOT NULL --「代表実施事業所業務種別区分」
	,DAIHYO_GYM_ITK_RYOKIN_KBN  CHAR(5) NOT NULL --「代表業務委託料金区分」
	,GYM_ITK_NAIYO_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「業務委託内容数量」
	,GYM_ITK_GETSUGAKU_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「業務委託月額料金金額」
	,GYM_ITK_NENGAKU_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「業務委託年額料金金額」
	,GYM_ITK_KOJI_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「業務委託工事料金金額」
	,GYM_ITK_BAIKYAKU_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「業務委託売却料金金額」
	,GYM_ITK_RINJI_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「業務委託臨時料金金額」
	,GYM_ITK_KAIYAKUKIN_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「業務委託解約金料金金額」
	,GYM_ITK_JC_RNJ_HTCH_RYKN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「業務委託常駐臨時発注料金金額」
	,GYM_ITK_JC_RNJ_JSSK_RYKN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「業務委託常駐臨時実績料金金額」
	,GYOMU_ITAKUSAKI_HATCHU_YMD  DATE --「業務委託先発注年月日」
	,GYM_ITKSK_HATCHU_UKE_YMD  DATE --「業務委託先発注請年月日」
	,GYM_ITKSK_GYOMU_KAISHI_YMD  DATE --「業務委託先業務開始年月日」
	,GYM_ITKSK_GYOMU_SHURYO_YMD  DATE --「業務委託先業務終了年月日」
	,GYM_ITKSK_KIYK_HNK_TKY_YMD  DATE --「業務委託先契約変更適用年月日」
	,GYM_ITKSK_KEIYAKU_CHUDAN_YMD  DATE --「業務委託先契約中断年月日」
	,GYM_ITKSK_KEIYAKU_SAIKAI_YMD  DATE --「業務委託先契約再開年月日」
	,GYM_ITKSK_KEIYAKU_KAIYAKU_YMD  DATE --「業務委託先契約解約年月日」
	,HATCHUSHO_INEI_ARI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「発注書印影有フラグ」
	,GYM_ITKMT_JIGYOSHO_CD  CHAR(6) --「業務委託元事業所コード」
	,GYM_ITKMT_TANTO_SHAIN_NO  VARCHAR2(8) --「業務委託元担当社員番号」
	,SHIHARAI_SHOGO_JIGYOSHO_CD  CHAR(6) --「支払照合事業所コード」
	,GYM_ITKSK_TRHKSK_SHHRI_JH_CD  CHAR(4) --「業務委託先取引先支払情報コード」
	,JC_RNJ_NYKNJKIBTI_TCHAIAR_FLG  CHAR(1) DEFAULT '0' NOT NULL --「常駐臨時入館時警備隊立会有フラグ」
	,JC_RNJ_TIKNJKIBTI_TCHAIAR_FLG  CHAR(1) DEFAULT '0' NOT NULL --「常駐臨時退館時警備隊立会有フラグ」
	,JC_RNJ_KIBTI_KG_TRATSKIAR_FLG  CHAR(1) DEFAULT '0' NOT NULL --「常駐臨時警備隊鍵取扱有フラグ」
	,JC_RNJ_KIBTKG_TRATSKITKK_JIKO  VARCHAR2(30) --「常駐臨時警備隊鍵取扱特記事項」
	,JC_RNJ_GNCH_GRY_BSHND_NAIYO  VARCHAR2(60) --「常駐臨時現地合流場所等内容」
	,JC_RNJ_HKKSH_GNCH_TISHTSAR_FLG  CHAR(1) DEFAULT '0' NOT NULL --「常駐臨時報告書現地提出有フラグ」
	,JC_RNJ_HKKSHGNCH_TISTTKK_JIKO  VARCHAR2(30) --「常駐臨時報告書現地提出特記事項」
	,JC_RNJ_KIB_RYKN_UCHWK_NAIYO  VARCHAR2(200) --「常駐臨時警備料金内訳内容」
	,JC_RNJ_KIB_TYUSYAKU_NAIYO  VARCHAR2(60) --「常駐臨時警備注釈内容」
	,JC_RNJ_HISY_RNRKSK_NAIYO  VARCHAR2(40) --「常駐臨時弊社連絡先内容」
	,JC_RNJ_TOKKI_JIKO  VARCHAR2(150) --「常駐臨時特記事項」
	,GYM_ITKMT_HTCHSH_BIKO_NAIYO  VARCHAR2(200) --「業務委託元発注書備考内容」
	,GYMITKSK_HTCHUKSRNRKJIK_NAIYO  VARCHAR2(200) --「業務委託先発注請書連絡事項内容」
	,GYM_ITKSK_JCH_KYH_RIYU_NAIYO  VARCHAR2(200) --「業務委託先受注拒否理由内容」
	,GYOMU_ITAKUMOTO_KAISHA_CD  CHAR(5) --「業務委託元会社コード」
	,GYM_ITKMT_JCH_KIYK_NO  CHAR(15) --「業務委託元受注契約番号」
	,GYM_ITKMT_JUCHU_KIYK_HENKO_NO  CHAR(6) --「業務委託元受注契約変更番号」
	,GYM_ITKMT_GYM_ITK_HATCHU_SN  CHAR(14) --「業務委託元業務委託発注連番」
	,GYM_ITKMT_GYM_ITKSK_SN  CHAR(14) --「業務委託元業務委託先連番」
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
	,CONSTRAINT ED0584T_PK PRIMARY KEY(
	 KEIYAKU_ID
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0584T_TBL IS '契約業務受託テーブル'
/

COMMENT ON COLUMN ED0584T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0584T_TBL.KEIYAKU_ID IS '契約ＩＤ'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITK_HATCHUSHO_NO IS '業務委託発注書番号'
/
COMMENT ON COLUMN ED0584T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED0584T_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED0584T_TBL.KEIYAKU_KBN IS '契約区分'
/
COMMENT ON COLUMN ED0584T_TBL.HATCHU_KBN IS '発注区分'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITK_HATCHU_TEKIYO_YMD IS '業務委託発注適用年月日'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITK_TKY_KISH_YM IS '業務委託適用開始年月'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITK_TKY_SHRY_YM IS '業務委託適用終了年月'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITK_HATCHU_JKY_KBN IS '業務委託発注状況区分'
/
COMMENT ON COLUMN ED0584T_TBL.DIHY_JSSH_JGYSH_GYM_SHBTS_KBN IS '代表実施事業所業務種別区分'
/
COMMENT ON COLUMN ED0584T_TBL.DAIHYO_GYM_ITK_RYOKIN_KBN IS '代表業務委託料金区分'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITK_NAIYO_SURYO IS '業務委託内容数量'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITK_GETSUGAKU_RYOKIN_AMT IS '業務委託月額料金金額'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITK_NENGAKU_RYOKIN_AMT IS '業務委託年額料金金額'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITK_KOJI_RYOKIN_AMT IS '業務委託工事料金金額'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITK_BAIKYAKU_RYOKIN_AMT IS '業務委託売却料金金額'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITK_RINJI_RYOKIN_AMT IS '業務委託臨時料金金額'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITK_KAIYAKUKIN_RYOKIN_AMT IS '業務委託解約金料金金額'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITK_JC_RNJ_HTCH_RYKN_AMT IS '業務委託常駐臨時発注料金金額'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITK_JC_RNJ_JSSK_RYKN_AMT IS '業務委託常駐臨時実績料金金額'
/
COMMENT ON COLUMN ED0584T_TBL.GYOMU_ITAKUSAKI_HATCHU_YMD IS '業務委託先発注年月日'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITKSK_HATCHU_UKE_YMD IS '業務委託先発注請年月日'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITKSK_GYOMU_KAISHI_YMD IS '業務委託先業務開始年月日'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITKSK_GYOMU_SHURYO_YMD IS '業務委託先業務終了年月日'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITKSK_KIYK_HNK_TKY_YMD IS '業務委託先契約変更適用年月日'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITKSK_KEIYAKU_CHUDAN_YMD IS '業務委託先契約中断年月日'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITKSK_KEIYAKU_SAIKAI_YMD IS '業務委託先契約再開年月日'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITKSK_KEIYAKU_KAIYAKU_YMD IS '業務委託先契約解約年月日'
/
COMMENT ON COLUMN ED0584T_TBL.HATCHUSHO_INEI_ARI_FLG IS '発注書印影有フラグ'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITKMT_JIGYOSHO_CD IS '業務委託元事業所コード'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITKMT_TANTO_SHAIN_NO IS '業務委託元担当社員番号'
/
COMMENT ON COLUMN ED0584T_TBL.SHIHARAI_SHOGO_JIGYOSHO_CD IS '支払照合事業所コード'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITKSK_TRHKSK_SHHRI_JH_CD IS '業務委託先取引先支払情報コード'
/
COMMENT ON COLUMN ED0584T_TBL.JC_RNJ_NYKNJKIBTI_TCHAIAR_FLG IS '常駐臨時入館時警備隊立会有フラグ'
/
COMMENT ON COLUMN ED0584T_TBL.JC_RNJ_TIKNJKIBTI_TCHAIAR_FLG IS '常駐臨時退館時警備隊立会有フラグ'
/
COMMENT ON COLUMN ED0584T_TBL.JC_RNJ_KIBTI_KG_TRATSKIAR_FLG IS '常駐臨時警備隊鍵取扱有フラグ'
/
COMMENT ON COLUMN ED0584T_TBL.JC_RNJ_KIBTKG_TRATSKITKK_JIKO IS '常駐臨時警備隊鍵取扱特記事項'
/
COMMENT ON COLUMN ED0584T_TBL.JC_RNJ_GNCH_GRY_BSHND_NAIYO IS '常駐臨時現地合流場所等内容'
/
COMMENT ON COLUMN ED0584T_TBL.JC_RNJ_HKKSH_GNCH_TISHTSAR_FLG IS '常駐臨時報告書現地提出有フラグ'
/
COMMENT ON COLUMN ED0584T_TBL.JC_RNJ_HKKSHGNCH_TISTTKK_JIKO IS '常駐臨時報告書現地提出特記事項'
/
COMMENT ON COLUMN ED0584T_TBL.JC_RNJ_KIB_RYKN_UCHWK_NAIYO IS '常駐臨時警備料金内訳内容'
/
COMMENT ON COLUMN ED0584T_TBL.JC_RNJ_KIB_TYUSYAKU_NAIYO IS '常駐臨時警備注釈内容'
/
COMMENT ON COLUMN ED0584T_TBL.JC_RNJ_HISY_RNRKSK_NAIYO IS '常駐臨時弊社連絡先内容'
/
COMMENT ON COLUMN ED0584T_TBL.JC_RNJ_TOKKI_JIKO IS '常駐臨時特記事項'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITKMT_HTCHSH_BIKO_NAIYO IS '業務委託元発注書備考内容'
/
COMMENT ON COLUMN ED0584T_TBL.GYMITKSK_HTCHUKSRNRKJIK_NAIYO IS '業務委託先発注請書連絡事項内容'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITKSK_JCH_KYH_RIYU_NAIYO IS '業務委託先受注拒否理由内容'
/
COMMENT ON COLUMN ED0584T_TBL.GYOMU_ITAKUMOTO_KAISHA_CD IS '業務委託元会社コード'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITKMT_JCH_KIYK_NO IS '業務委託元受注契約番号'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITKMT_JUCHU_KIYK_HENKO_NO IS '業務委託元受注契約変更番号'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITKMT_GYM_ITK_HATCHU_SN IS '業務委託元業務委託発注連番'
/
COMMENT ON COLUMN ED0584T_TBL.GYM_ITKMT_GYM_ITKSK_SN IS '業務委託元業務委託先連番'
/
COMMENT ON COLUMN ED0584T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0584T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0584T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0584T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0584T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0584T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0584T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0584T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0584T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0584T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0584T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0584T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/