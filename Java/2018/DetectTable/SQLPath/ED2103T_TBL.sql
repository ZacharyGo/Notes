﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED2103T_TBL.sql
-- 物理名：ED2103T_TBL
-- 論理名：修理管理台帳テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED2103T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED2103T_TBL (
	 SHURI_CARD_NO  CHAR(8) NOT NULL --「修理カード番号」
	,SHR_KNR_DICH_KHY_KISH_CD  CHAR(5) --「修理管理台帳起票会社コード」
	,SHR_KNR_DICH_KHY_TRHKSK_CD  CHAR(9) --「修理管理台帳起票取引先コード」
	,SHURI_SHINCHOKU_JOKYO_KBN  CHAR(2) NOT NULL --「修理進捗状況区分」
	,SHURI_UKETSUKE_YMD  DATE --「修理受付年月日」
	,SHURI_IRAI_KBN  CHAR(1) NOT NULL --「修理依頼区分」
	,SHURI_TORI_SAGE_FLG  CHAR(1) DEFAULT '0' NOT NULL --「修理取り下げフラグ」
	,SHURIHI_FUTAN_KBN  CHAR(1) NOT NULL --「修理費負担区分」
	,SHRH_SIKY_JCH_KIYK_NO  CHAR(15) --「修理費請求受注契約番号」
	,SHURIHIN_SENTAKU_HOHO_KBN  CHAR(1) NOT NULL --「修理品選択方法区分」
	,BIKYKHN_HMBI_JCH_KIYK_NO  CHAR(15) --「売却品販売受注契約番号」
	,SHIMPIN_KBN  CHAR(1) NOT NULL --「新品区分」
	,SHIZAI_SOBI_KBN  CHAR(1) NOT NULL --「資材装備区分」
	,SHURIHIN_CHOZO_JIGYOSHO_CD  CHAR(6) --「修理品貯蔵事業所コード」
	,SHURIHIN_CHOZO_SOKO_CD  CHAR(6) --「修理品貯蔵倉庫コード」
	,HIMMEI_CD  CHAR(8) --「品名コード」
	,SEIZO_NO  VARCHAR2(30) --「製造番号」
	,SEIZO_YMD  DATE --「製造年月日」
	,SHURI_IRAIMOTO_JIGYOSHO_CD  CHAR(6) --「修理依頼元事業所コード」
	,SHURI_IRAIMOTO_TORIHIKISAKI_CD  CHAR(9) --「修理依頼元取引先コード」
	,SHRH_SIKYSK_TRHKSK_CD  CHAR(9) --「修理費請求先取引先コード」
	,SHRH_SIKYSK_TRHKSK_BSH_CD  CHAR(4) --「修理費請求先取引先部署コード」
	,TOIAWASESAKI_JIGYOSHO_CD  CHAR(6) --「問い合わせ先事業所コード」
	,TIAWSSK_EDI_NHNSK_SHTI_HH_KBN  CHAR(1) NOT NULL --「問い合わせ先ＥＤＩ納品先指定方法区分」
	,TOIAWASESAKI_EDI_NOHINSAKI_CD  CHAR(4) --「問い合わせ先ＥＤＩ納品先コード」
	,TOIAWASESAKI_EDI_NOHINSAKI_NM  VARCHAR2(40) --「問い合わせ先ＥＤＩ納品先名称」
	,TIAWSSK_EDI_NHNSK_KN_NM  VARCHAR2(40) --「問い合わせ先ＥＤＩ納品先カナ名称」
	,TIAWSSK_EDI_NHNSK_TNTSH_NM  VARCHAR2(60) --「問い合わせ先ＥＤＩ納品先担当者氏名」
	,TIAWSSK_EDI_NHNSK_TNTSH_KN_NM  VARCHAR2(90) --「問い合わせ先ＥＤＩ納品先担当者カナ氏名」
	,TIAWSSK_EDI_NHNSK_YBN_NO  CHAR(7) --「問い合わせ先ＥＤＩ納品先郵便番号」
	,TIAWSSK_EDI_NHNSK_JUSHO_1  VARCHAR2(60) --「問い合わせ先ＥＤＩ納品先住所１」
	,TIAWSSK_EDI_NHNSK_JUSHO_2  VARCHAR2(60) --「問い合わせ先ＥＤＩ納品先住所２」
	,TOIAWASESAKI_SHAIN_NO  VARCHAR2(8) --「問い合わせ先社員番号」
	,TOIAWASESAKI_DENWA_NO  VARCHAR2(20) --「問い合わせ先電話番号」
	,TOIAWASESAKI_FAX_NO  VARCHAR2(20) --「問い合わせ先ＦＡＸ番号」
	,SHRHN_HNKYKSK_SHTI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「修理品返却先指定フラグ」
	,SHRHN_HNKYKSK_JGYSH_CD  CHAR(6) --「修理品返却先事業所コード」
	,SRH_HKS_EDI_NHS_SHTI_HH_KBN  CHAR(1) NOT NULL --「修理品返却先ＥＤＩ納品先指定方法区分」
	,SRH_HKS_EDI_NHS_CD  CHAR(4) --「修理品返却先ＥＤＩ納品先コード」
	,SRH_HKS_EDI_NHS_NM  VARCHAR2(40) --「修理品返却先ＥＤＩ納品先名称」
	,SRH_HKS_EDI_NHS_KN_NM  VARCHAR2(40) --「修理品返却先ＥＤＩ納品先カナ名称」
	,SRH_HKS_EDI_NHS_TANTOSHA_NM  VARCHAR2(60) --「修理品返却先ＥＤＩ納品先担当者氏名」
	,SRH_HKS_EDI_NHS_TANTOSHA_KN_NM  VARCHAR2(90) --「修理品返却先ＥＤＩ納品先担当者カナ氏名」
	,SRH_HKS_EDI_NHS_YUBIN_NO  CHAR(7) --「修理品返却先ＥＤＩ納品先郵便番号」
	,SRH_HKS_EDI_NHS_JUSHO_1  VARCHAR2(60) --「修理品返却先ＥＤＩ納品先住所１」
	,SRH_HKS_EDI_NHS_JUSHO_2  VARCHAR2(60) --「修理品返却先ＥＤＩ納品先住所２」
	,SHURIHIN_HENKYAKUSAKI_SHAIN_NO  VARCHAR2(8) --「修理品返却先社員番号」
	,SHURIHIN_HENKYAKUSAKI_DENWA_NO  VARCHAR2(20) --「修理品返却先電話番号」
	,SHURIHIN_HENKYAKUSAKI_FAX_NO  VARCHAR2(20) --「修理品返却先ＦＡＸ番号」
	,SHURI_IRAISAKI_KBN  CHAR(1) NOT NULL --「修理依頼先区分」
	,SHURI_SHINCHOKU_CMNT  VARCHAR2(500) --「修理進捗コメント」
	,SHR_IRIMT_MTSMR_IRI_YMD  DATE --「修理依頼元見積依頼年月日」
	,SHR_IRIMT_SHRHN_HSS_YMD  DATE --「修理依頼元修理品発送年月日」
	,SHURI_IRAIMOTO_SHURI_IRAI_YMD  DATE --「修理依頼元修理依頼年月日」
	,SHURI_IRAIMOTO_NOHIN_KIBO_YMD  DATE --「修理依頼元納品希望年月日」
	,SHR_IRIMT_UKIR_KMPN_YMD  DATE --「修理依頼元受入検品年月日」
	,SR_IRI_DIK_MTMR_IRI_UKTK_YMD  DATE --「修理依頼代行見積依頼受付年月日」
	,SHR_IRI_DIK_MTSMR_IRI_YMD  DATE --「修理依頼代行見積依頼年月日」
	,SHR_IRI_DIK_SHRHN_HSS_YMD  DATE --「修理依頼代行修理品発送年月日」
	,SHURI_IRAI_DAIKO_SHURI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「修理依頼代行修理金額」
	,SHR_IRI_DIK_CANCEL_RY_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「修理依頼代行キャンセル料金額」
	,SHR_IRI_DIK_SHR_IRI_UKTSK_YMD  DATE --「修理依頼代行修理依頼受付年月日」
	,SHR_IRI_DIK_SHR_KNRYHN_HSS_YMD  DATE --「修理依頼代行修理完了品発送年月日」
	,SHR_IRISK_MTSMR_UKTSK_YMD  DATE --「修理依頼先見積受付年月日」
	,SHR_IRISK_MTSMR_KIT_YMD  DATE --「修理依頼先見積回答年月日」
	,SHR_IRISK_MTSMR_YK_KGN_YMD  DATE --「修理依頼先見積有効期限年月日」
	,SHR_IRISK_SHR_KNRY_YTI_YMD  DATE --「修理依頼先修理完了予定年月日」
	,SHURI_IRAISAKI_SHURI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「修理依頼先修理金額」
	,SHURI_IRAISAKI_CANCEL_RYO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「修理依頼先キャンセル料金額」
	,SHR_IRISK_SHR_CHMN_UKTSK_YMD  DATE --「修理依頼先修理注文受付年月日」
	,SHR_IRISK_SHR_KNRYHN_HSS_YMD  DATE --「修理依頼先修理完了品発送年月日」
	,SHURI_IRAISAKI_SEIKYU_YMD  DATE --「修理依頼先請求年月日」
	,SHURI_MITSUMORISHO_HAKKO_YMD  DATE --「修理見積書発行年月日」
	,SHURI_MITSUMORISHO_BIKO  VARCHAR2(300) --「修理見積書備考」
	,SHURI_CHUMONSHO_NO  CHAR(10) --「修理注文書番号」
	,SHURI_CHUMONSHO_HAKKO_YMD  DATE --「修理注文書発行年月日」
	,SHURI_CHUMONSHO_BIKO  VARCHAR2(100) --「修理注文書備考」
	,SHURI_KEKKA_KBN  CHAR(1) NOT NULL --「修理結果区分」
	,SHURI_NAIYO_CMNT  VARCHAR2(500) --「修理内容コメント」
	,URIAGE_DEMPYO_NO  CHAR(17) --「売上伝票番号」
	,SHURIHIN_SETCHI_BASHO_NM  VARCHAR2(60) --「修理品設置場所名称」
	,SHURIHIN_TORITSUKE_BASHO_KBN  CHAR(1) NOT NULL --「修理品取付場所区分」
	,SHRHN_TRTSK_BSH_JKY_NAIYO  VARCHAR2(100) --「修理品取付場所状況内容」
	,HASSEI_DT  TIMESTAMP --「発生日時」
	,HASSEIJI_TENKO_KBN  CHAR(2) NOT NULL --「発生時天候区分」
	,HASSEI_JIKI_KBN  CHAR(1) NOT NULL --「発生時期区分」
	,KONYU_YMD  DATE --「購入年月日」
	,SETCHIGO_KEIKA_NENSU  NUMBER(9,0) DEFAULT '0' NOT NULL --「設置後経過年数」
	,SETCHIGO_KEIKA_TSUKISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「設置後経過月数」
	,KOSHO_GENIN_KBN  CHAR(1) NOT NULL --「故障原因区分」
	,KOSHO_GENIN_SONOTA_NAIYO_CMNT  VARCHAR2(100) --「故障原因その他内容コメント」
	,SHURI_NAIYO_DOSA_SEZU_FLG  CHAR(1) DEFAULT '0' NOT NULL --「修理内容動作せずフラグ」
	,SHR_NAIYO_SHTSRYK_SZ_FLG  CHAR(1) DEFAULT '0' NOT NULL --「修理内容出力せずフラグ」
	,SHURI_NAIYO_DOSA_FURYO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「修理内容動作不良フラグ」
	,SHURI_NAIYO_DOSA_FUANTEI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「修理内容動作不安定フラグ」
	,SHURI_NAIYO_GOHO_TOKIDOKI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「修理内容誤報時々フラグ」
	,SHURI_NAIYO_GOHO_TAHATSU_FLG  CHAR(1) DEFAULT '0' NOT NULL --「修理内容誤報多発フラグ」
	,SHURI_NAIYO_HASON_FLG  CHAR(1) DEFAULT '0' NOT NULL --「修理内容破損フラグ」
	,SHURI_NAIYO_OH_FLG  CHAR(1) DEFAULT '0' NOT NULL --「修理内容ＯＨフラグ」
	,SHURI_NAIYO_KOSHO_CHOSA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「修理内容故障調査フラグ」
	,SHURI_NAIYO_SONOTA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「修理内容その他フラグ」
	,SHURI_NAIYO_SONOTA_CMNT  VARCHAR2(100) --「修理内容その他コメント」
	,SHOSAI_NAIYO_CMNT  VARCHAR2(500) --「詳細内容コメント」
	,SHINSEI_SHONIN_NO  CHAR(14) --「申請承認番号」
	,CHOTATSU_SHIHARAI_SHINSEI_NO  CHAR(12) --「調達支払申請番号」
	,JIGYO_SEGMENT_CD  CHAR(3) --「事業セグメントコード」
	,SHGI_TRKSH_SHGI_RYSH_NO  CHAR(8) --「社外登録者社外利用者番号」
	,SHGI_KSHNSH_SHGI_RYSH_NO  CHAR(8) --「社外更新者社外利用者番号」
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
	,CONSTRAINT ED2103T_PK PRIMARY KEY(
	 SHURI_CARD_NO
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED2103T_TBL IS '修理管理台帳テーブル'
/

COMMENT ON COLUMN ED2103T_TBL.SHURI_CARD_NO IS '修理カード番号'
/
COMMENT ON COLUMN ED2103T_TBL.SHR_KNR_DICH_KHY_KISH_CD IS '修理管理台帳起票会社コード'
/
COMMENT ON COLUMN ED2103T_TBL.SHR_KNR_DICH_KHY_TRHKSK_CD IS '修理管理台帳起票取引先コード'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_SHINCHOKU_JOKYO_KBN IS '修理進捗状況区分'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_UKETSUKE_YMD IS '修理受付年月日'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_IRAI_KBN IS '修理依頼区分'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_TORI_SAGE_FLG IS '修理取り下げフラグ'
/
COMMENT ON COLUMN ED2103T_TBL.SHURIHI_FUTAN_KBN IS '修理費負担区分'
/
COMMENT ON COLUMN ED2103T_TBL.SHRH_SIKY_JCH_KIYK_NO IS '修理費請求受注契約番号'
/
COMMENT ON COLUMN ED2103T_TBL.SHURIHIN_SENTAKU_HOHO_KBN IS '修理品選択方法区分'
/
COMMENT ON COLUMN ED2103T_TBL.BIKYKHN_HMBI_JCH_KIYK_NO IS '売却品販売受注契約番号'
/
COMMENT ON COLUMN ED2103T_TBL.SHIMPIN_KBN IS '新品区分'
/
COMMENT ON COLUMN ED2103T_TBL.SHIZAI_SOBI_KBN IS '資材装備区分'
/
COMMENT ON COLUMN ED2103T_TBL.SHURIHIN_CHOZO_JIGYOSHO_CD IS '修理品貯蔵事業所コード'
/
COMMENT ON COLUMN ED2103T_TBL.SHURIHIN_CHOZO_SOKO_CD IS '修理品貯蔵倉庫コード'
/
COMMENT ON COLUMN ED2103T_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED2103T_TBL.SEIZO_NO IS '製造番号'
/
COMMENT ON COLUMN ED2103T_TBL.SEIZO_YMD IS '製造年月日'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_IRAIMOTO_JIGYOSHO_CD IS '修理依頼元事業所コード'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_IRAIMOTO_TORIHIKISAKI_CD IS '修理依頼元取引先コード'
/
COMMENT ON COLUMN ED2103T_TBL.SHRH_SIKYSK_TRHKSK_CD IS '修理費請求先取引先コード'
/
COMMENT ON COLUMN ED2103T_TBL.SHRH_SIKYSK_TRHKSK_BSH_CD IS '修理費請求先取引先部署コード'
/
COMMENT ON COLUMN ED2103T_TBL.TOIAWASESAKI_JIGYOSHO_CD IS '問い合わせ先事業所コード'
/
COMMENT ON COLUMN ED2103T_TBL.TIAWSSK_EDI_NHNSK_SHTI_HH_KBN IS '問い合わせ先ＥＤＩ納品先指定方法区分'
/
COMMENT ON COLUMN ED2103T_TBL.TOIAWASESAKI_EDI_NOHINSAKI_CD IS '問い合わせ先ＥＤＩ納品先コード'
/
COMMENT ON COLUMN ED2103T_TBL.TOIAWASESAKI_EDI_NOHINSAKI_NM IS '問い合わせ先ＥＤＩ納品先名称'
/
COMMENT ON COLUMN ED2103T_TBL.TIAWSSK_EDI_NHNSK_KN_NM IS '問い合わせ先ＥＤＩ納品先カナ名称'
/
COMMENT ON COLUMN ED2103T_TBL.TIAWSSK_EDI_NHNSK_TNTSH_NM IS '問い合わせ先ＥＤＩ納品先担当者氏名'
/
COMMENT ON COLUMN ED2103T_TBL.TIAWSSK_EDI_NHNSK_TNTSH_KN_NM IS '問い合わせ先ＥＤＩ納品先担当者カナ氏名'
/
COMMENT ON COLUMN ED2103T_TBL.TIAWSSK_EDI_NHNSK_YBN_NO IS '問い合わせ先ＥＤＩ納品先郵便番号'
/
COMMENT ON COLUMN ED2103T_TBL.TIAWSSK_EDI_NHNSK_JUSHO_1 IS '問い合わせ先ＥＤＩ納品先住所１'
/
COMMENT ON COLUMN ED2103T_TBL.TIAWSSK_EDI_NHNSK_JUSHO_2 IS '問い合わせ先ＥＤＩ納品先住所２'
/
COMMENT ON COLUMN ED2103T_TBL.TOIAWASESAKI_SHAIN_NO IS '問い合わせ先社員番号'
/
COMMENT ON COLUMN ED2103T_TBL.TOIAWASESAKI_DENWA_NO IS '問い合わせ先電話番号'
/
COMMENT ON COLUMN ED2103T_TBL.TOIAWASESAKI_FAX_NO IS '問い合わせ先ＦＡＸ番号'
/
COMMENT ON COLUMN ED2103T_TBL.SHRHN_HNKYKSK_SHTI_FLG IS '修理品返却先指定フラグ'
/
COMMENT ON COLUMN ED2103T_TBL.SHRHN_HNKYKSK_JGYSH_CD IS '修理品返却先事業所コード'
/
COMMENT ON COLUMN ED2103T_TBL.SRH_HKS_EDI_NHS_SHTI_HH_KBN IS '修理品返却先ＥＤＩ納品先指定方法区分'
/
COMMENT ON COLUMN ED2103T_TBL.SRH_HKS_EDI_NHS_CD IS '修理品返却先ＥＤＩ納品先コード'
/
COMMENT ON COLUMN ED2103T_TBL.SRH_HKS_EDI_NHS_NM IS '修理品返却先ＥＤＩ納品先名称'
/
COMMENT ON COLUMN ED2103T_TBL.SRH_HKS_EDI_NHS_KN_NM IS '修理品返却先ＥＤＩ納品先カナ名称'
/
COMMENT ON COLUMN ED2103T_TBL.SRH_HKS_EDI_NHS_TANTOSHA_NM IS '修理品返却先ＥＤＩ納品先担当者氏名'
/
COMMENT ON COLUMN ED2103T_TBL.SRH_HKS_EDI_NHS_TANTOSHA_KN_NM IS '修理品返却先ＥＤＩ納品先担当者カナ氏名'
/
COMMENT ON COLUMN ED2103T_TBL.SRH_HKS_EDI_NHS_YUBIN_NO IS '修理品返却先ＥＤＩ納品先郵便番号'
/
COMMENT ON COLUMN ED2103T_TBL.SRH_HKS_EDI_NHS_JUSHO_1 IS '修理品返却先ＥＤＩ納品先住所１'
/
COMMENT ON COLUMN ED2103T_TBL.SRH_HKS_EDI_NHS_JUSHO_2 IS '修理品返却先ＥＤＩ納品先住所２'
/
COMMENT ON COLUMN ED2103T_TBL.SHURIHIN_HENKYAKUSAKI_SHAIN_NO IS '修理品返却先社員番号'
/
COMMENT ON COLUMN ED2103T_TBL.SHURIHIN_HENKYAKUSAKI_DENWA_NO IS '修理品返却先電話番号'
/
COMMENT ON COLUMN ED2103T_TBL.SHURIHIN_HENKYAKUSAKI_FAX_NO IS '修理品返却先ＦＡＸ番号'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_IRAISAKI_KBN IS '修理依頼先区分'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_SHINCHOKU_CMNT IS '修理進捗コメント'
/
COMMENT ON COLUMN ED2103T_TBL.SHR_IRIMT_MTSMR_IRI_YMD IS '修理依頼元見積依頼年月日'
/
COMMENT ON COLUMN ED2103T_TBL.SHR_IRIMT_SHRHN_HSS_YMD IS '修理依頼元修理品発送年月日'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_IRAIMOTO_SHURI_IRAI_YMD IS '修理依頼元修理依頼年月日'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_IRAIMOTO_NOHIN_KIBO_YMD IS '修理依頼元納品希望年月日'
/
COMMENT ON COLUMN ED2103T_TBL.SHR_IRIMT_UKIR_KMPN_YMD IS '修理依頼元受入検品年月日'
/
COMMENT ON COLUMN ED2103T_TBL.SR_IRI_DIK_MTMR_IRI_UKTK_YMD IS '修理依頼代行見積依頼受付年月日'
/
COMMENT ON COLUMN ED2103T_TBL.SHR_IRI_DIK_MTSMR_IRI_YMD IS '修理依頼代行見積依頼年月日'
/
COMMENT ON COLUMN ED2103T_TBL.SHR_IRI_DIK_SHRHN_HSS_YMD IS '修理依頼代行修理品発送年月日'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_IRAI_DAIKO_SHURI_AMT IS '修理依頼代行修理金額'
/
COMMENT ON COLUMN ED2103T_TBL.SHR_IRI_DIK_CANCEL_RY_AMT IS '修理依頼代行キャンセル料金額'
/
COMMENT ON COLUMN ED2103T_TBL.SHR_IRI_DIK_SHR_IRI_UKTSK_YMD IS '修理依頼代行修理依頼受付年月日'
/
COMMENT ON COLUMN ED2103T_TBL.SHR_IRI_DIK_SHR_KNRYHN_HSS_YMD IS '修理依頼代行修理完了品発送年月日'
/
COMMENT ON COLUMN ED2103T_TBL.SHR_IRISK_MTSMR_UKTSK_YMD IS '修理依頼先見積受付年月日'
/
COMMENT ON COLUMN ED2103T_TBL.SHR_IRISK_MTSMR_KIT_YMD IS '修理依頼先見積回答年月日'
/
COMMENT ON COLUMN ED2103T_TBL.SHR_IRISK_MTSMR_YK_KGN_YMD IS '修理依頼先見積有効期限年月日'
/
COMMENT ON COLUMN ED2103T_TBL.SHR_IRISK_SHR_KNRY_YTI_YMD IS '修理依頼先修理完了予定年月日'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_IRAISAKI_SHURI_AMT IS '修理依頼先修理金額'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_IRAISAKI_CANCEL_RYO_AMT IS '修理依頼先キャンセル料金額'
/
COMMENT ON COLUMN ED2103T_TBL.SHR_IRISK_SHR_CHMN_UKTSK_YMD IS '修理依頼先修理注文受付年月日'
/
COMMENT ON COLUMN ED2103T_TBL.SHR_IRISK_SHR_KNRYHN_HSS_YMD IS '修理依頼先修理完了品発送年月日'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_IRAISAKI_SEIKYU_YMD IS '修理依頼先請求年月日'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_MITSUMORISHO_HAKKO_YMD IS '修理見積書発行年月日'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_MITSUMORISHO_BIKO IS '修理見積書備考'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_CHUMONSHO_NO IS '修理注文書番号'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_CHUMONSHO_HAKKO_YMD IS '修理注文書発行年月日'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_CHUMONSHO_BIKO IS '修理注文書備考'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_KEKKA_KBN IS '修理結果区分'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_NAIYO_CMNT IS '修理内容コメント'
/
COMMENT ON COLUMN ED2103T_TBL.URIAGE_DEMPYO_NO IS '売上伝票番号'
/
COMMENT ON COLUMN ED2103T_TBL.SHURIHIN_SETCHI_BASHO_NM IS '修理品設置場所名称'
/
COMMENT ON COLUMN ED2103T_TBL.SHURIHIN_TORITSUKE_BASHO_KBN IS '修理品取付場所区分'
/
COMMENT ON COLUMN ED2103T_TBL.SHRHN_TRTSK_BSH_JKY_NAIYO IS '修理品取付場所状況内容'
/
COMMENT ON COLUMN ED2103T_TBL.HASSEI_DT IS '発生日時'
/
COMMENT ON COLUMN ED2103T_TBL.HASSEIJI_TENKO_KBN IS '発生時天候区分'
/
COMMENT ON COLUMN ED2103T_TBL.HASSEI_JIKI_KBN IS '発生時期区分'
/
COMMENT ON COLUMN ED2103T_TBL.KONYU_YMD IS '購入年月日'
/
COMMENT ON COLUMN ED2103T_TBL.SETCHIGO_KEIKA_NENSU IS '設置後経過年数'
/
COMMENT ON COLUMN ED2103T_TBL.SETCHIGO_KEIKA_TSUKISU IS '設置後経過月数'
/
COMMENT ON COLUMN ED2103T_TBL.KOSHO_GENIN_KBN IS '故障原因区分'
/
COMMENT ON COLUMN ED2103T_TBL.KOSHO_GENIN_SONOTA_NAIYO_CMNT IS '故障原因その他内容コメント'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_NAIYO_DOSA_SEZU_FLG IS '修理内容動作せずフラグ'
/
COMMENT ON COLUMN ED2103T_TBL.SHR_NAIYO_SHTSRYK_SZ_FLG IS '修理内容出力せずフラグ'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_NAIYO_DOSA_FURYO_FLG IS '修理内容動作不良フラグ'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_NAIYO_DOSA_FUANTEI_FLG IS '修理内容動作不安定フラグ'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_NAIYO_GOHO_TOKIDOKI_FLG IS '修理内容誤報時々フラグ'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_NAIYO_GOHO_TAHATSU_FLG IS '修理内容誤報多発フラグ'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_NAIYO_HASON_FLG IS '修理内容破損フラグ'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_NAIYO_OH_FLG IS '修理内容ＯＨフラグ'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_NAIYO_KOSHO_CHOSA_FLG IS '修理内容故障調査フラグ'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_NAIYO_SONOTA_FLG IS '修理内容その他フラグ'
/
COMMENT ON COLUMN ED2103T_TBL.SHURI_NAIYO_SONOTA_CMNT IS '修理内容その他コメント'
/
COMMENT ON COLUMN ED2103T_TBL.SHOSAI_NAIYO_CMNT IS '詳細内容コメント'
/
COMMENT ON COLUMN ED2103T_TBL.SHINSEI_SHONIN_NO IS '申請承認番号'
/
COMMENT ON COLUMN ED2103T_TBL.CHOTATSU_SHIHARAI_SHINSEI_NO IS '調達支払申請番号'
/
COMMENT ON COLUMN ED2103T_TBL.JIGYO_SEGMENT_CD IS '事業セグメントコード'
/
COMMENT ON COLUMN ED2103T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED2103T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED2103T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED2103T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED2103T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED2103T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED2103T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED2103T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED2103T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED2103T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED2103T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED2103T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED2103T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED2103T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/