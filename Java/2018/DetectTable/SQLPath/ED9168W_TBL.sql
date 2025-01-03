﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED9168W_TBL.sql
-- 物理名：ED9168W_TBL
-- 論理名：取引先前回送信時ワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED9168W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED9168W_TBL (
	 TORIHIKISAKI_CD  CHAR(9) NOT NULL --「取引先コード」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,KOJIN_HOJIN_KBN  CHAR(1) NOT NULL --「個人法人区分」
	,HOJINKAKU_ZENGO_KBN  CHAR(1) NOT NULL --「法人格前後区分」
	,HOJINKAKU_KBN  CHAR(2) NOT NULL --「法人格区分」
	,TORIHIKISAKI_NM  VARCHAR2(40) --「取引先名称」
	,TORIHIKISAKI_SEISHIKI_NM  VARCHAR2(50) --「取引先正式名称」
	,TORIHIKISAKI_KN_NM  VARCHAR2(40) --「取引先カナ名称」
	,JUSHO_CD  CHAR(11) --「住所コード」
	,YUBIN_NO  CHAR(7) --「郵便番号」
	,HOSOKU_JUSHO  VARCHAR2(60) --「補足住所」
	,JUSHO_BANCHI  VARCHAR2(50) --「住所番地」
	,TATEMONO_NM  VARCHAR2(50) --「建物名称」
	,TATEMONO_KN_NM  VARCHAR2(50) --「建物カナ名称」
	,TO_NM  VARCHAR2(50) --「棟名称」
	,KAI_NM  VARCHAR2(50) --「階名称」
	,KUKAKU_NM  VARCHAR2(50) --「区画名称」
	,HEYA_NM  VARCHAR2(50) --「部屋名称」
	,DENWA_NO  VARCHAR2(20) --「電話番号」
	,FAX_NO  VARCHAR2(20) --「ＦＡＸ番号」
	,MAIL_ADDRESS_1  VARCHAR2(200) --「メールアドレス１」
	,MAIL_ADDRESS_2  VARCHAR2(200) --「メールアドレス２」
	,MAIL_ADDRESS_3  VARCHAR2(200) --「メールアドレス３」
	,TDB_KIGYO_CD  CHAR(9) --「ＴＤＢ企業コード」
	,HOJIN_NO  CHAR(13) --「法人番号」
	,GYOSHU_CD  CHAR(4) --「業種コード」
	,SHIHON_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「資本金額」
	,KESSAN_M  CHAR(2) --「決算月」
	,BUNSEKI_KOMOKU_1  VARCHAR2(40) --「分析項目１」
	,BUNSEKI_KOMOKU_2  VARCHAR2(40) --「分析項目２」
	,BUNSEKI_KOMOKU_3  VARCHAR2(40) --「分析項目３」
	,BUNSEKI_KOMOKU_4  VARCHAR2(40) --「分析項目４」
	,BUNSEKI_KOMOKU_5  VARCHAR2(40) --「分析項目５」
	,BUNSEKI_KOMOKU_6  VARCHAR2(40) --「分析項目６」
	,BUNSEKI_KOMOKU_7  VARCHAR2(40) --「分析項目７」
	,BUNSEKI_KOMOKU_8  VARCHAR2(40) --「分析項目８」
	,BUNSEKI_KOMOKU_9  VARCHAR2(40) --「分析項目９」
	,BUNSEKI_KOMOKU_10  VARCHAR2(40) --「分析項目１０」
	,SHISHA_JUYO_KOKYAKU_FLG  CHAR(1) DEFAULT '0' NOT NULL --「支社重要顧客フラグ」
	,HA_JUYO_KOKYAKU_FLG  CHAR(1) DEFAULT '0' NOT NULL --「ＨＡ重要顧客フラグ」
	,UNYO_JUYO_KOKYAKU_FLG  CHAR(1) DEFAULT '0' NOT NULL --「運用重要顧客フラグ」
	,ALSOK_KYOTSU_KYOGO_GAISHA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「ＡＬＳＯＫ共通競合会社フラグ」
	,TORIHIKISAKI_URL  VARCHAR2(300) --「取引先ＵＲＬ」
	,ALSOK_CLASS_KBN  CHAR(1) NOT NULL --「ＡＬＳＯＫクラス区分」
	,SOMADO_SHUTANTO_KAISHA_CD  CHAR(5) --「総窓主担当会社コード」
	,SOMADO_SHUTANTO_JIGYOSHO_CD  CHAR(6) --「総窓主担当事業所コード」
	,SMD_SHTNT_KISH_JGYSH_KTSG_NM  VARCHAR2(240) --「総窓主担当会社事業所結合名称」
	,SOMADO_SHUTANTO_SHAIN_NO  VARCHAR2(8) --「総窓主担当社員番号」
	,SOMADO_FUKUTANTO_KAISHA_CD  CHAR(5) --「総窓副担当会社コード」
	,SOMADO_FUKUTANTO_JIGYOSHO_CD  CHAR(6) --「総窓副担当事業所コード」
	,SMD_FKTNT_KISH_JGYSH_KTSG_NM  VARCHAR2(240) --「総窓副担当会社事業所結合名称」
	,SOMADO_FUKUTANTO_SHAIN_NO  VARCHAR2(8) --「総窓副担当社員番号」
	,HONTENGAI_EIGYO_KATSUDO_KBN  CHAR(1) NOT NULL --「本店外営業活動区分」
	,KYOTEMBETSU_KESSAIKEN_KBN  CHAR(1) NOT NULL --「拠点別決裁権区分」
	,KIGYOBETSU_SHIYO_KBN  CHAR(1) NOT NULL --「企業別仕様区分」
	,KIGYOBETSU_SETTEI_KAKAKU_KBN  CHAR(1) NOT NULL --「企業別設定価格区分」
	,SOMADOGAI_KEIYAKU_JOKYO_KBN  CHAR(1) NOT NULL --「総窓外契約状況区分」
	,KOBETSU_SHIJI_NAIYO_1  VARCHAR2(300) --「個別指示内容１」
	,KOBETSU_SHIJI_NAIYO_2  VARCHAR2(300) --「個別指示内容２」
	,DAIHYOSHA_NM  VARCHAR2(60) --「代表者氏名」
	,JUGYOIN_NINZU  NUMBER(9,0) DEFAULT '0' NOT NULL --「従業員人数」
	,SETSURITSU_YM  CHAR(6) --「設立年月」
	,ZENKI_NENDO  CHAR(4) --「前期年度」
	,ZENKI_URIAGEDAKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「前期売上高金額」
	,ZENKI_KEIJO_RIEKI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「前期経常利益金額」
	,ZENKI_ZEIBIKIGO_RIEKI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「前期税引後利益金額」
	,ZENZENKI_URIAGEDAKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「前々期売上高金額」
	,ZENZENKI_KEIJO_RIEKI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「前々期経常利益金額」
	,ZENZENKI_ZEIBIKIGO_RIEKI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「前々期税引後利益金額」
	,BLACKLIST_TAISHO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「ブラックリスト対象フラグ」
	,BLACKLIST_RIYU_KBN  CHAR(1) NOT NULL --「ブラックリスト理由区分」
	,HANSHAKAITEKI_SEIRYOKU_FLG  CHAR(1) DEFAULT '0' NOT NULL --「反社会的勢力フラグ」
	,KYOYU_TAISHO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「共有対象フラグ」
	,GROUP_GAISHA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「グループ会社フラグ」
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
	,CONSTRAINT ED9168W_PK PRIMARY KEY(
	 TORIHIKISAKI_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED9168W_TBL IS '取引先前回送信時ワーク'
/

COMMENT ON COLUMN ED9168W_TBL.TORIHIKISAKI_CD IS '取引先コード'
/
COMMENT ON COLUMN ED9168W_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED9168W_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED9168W_TBL.KOJIN_HOJIN_KBN IS '個人法人区分'
/
COMMENT ON COLUMN ED9168W_TBL.HOJINKAKU_ZENGO_KBN IS '法人格前後区分'
/
COMMENT ON COLUMN ED9168W_TBL.HOJINKAKU_KBN IS '法人格区分'
/
COMMENT ON COLUMN ED9168W_TBL.TORIHIKISAKI_NM IS '取引先名称'
/
COMMENT ON COLUMN ED9168W_TBL.TORIHIKISAKI_SEISHIKI_NM IS '取引先正式名称'
/
COMMENT ON COLUMN ED9168W_TBL.TORIHIKISAKI_KN_NM IS '取引先カナ名称'
/
COMMENT ON COLUMN ED9168W_TBL.JUSHO_CD IS '住所コード'
/
COMMENT ON COLUMN ED9168W_TBL.YUBIN_NO IS '郵便番号'
/
COMMENT ON COLUMN ED9168W_TBL.HOSOKU_JUSHO IS '補足住所'
/
COMMENT ON COLUMN ED9168W_TBL.JUSHO_BANCHI IS '住所番地'
/
COMMENT ON COLUMN ED9168W_TBL.TATEMONO_NM IS '建物名称'
/
COMMENT ON COLUMN ED9168W_TBL.TATEMONO_KN_NM IS '建物カナ名称'
/
COMMENT ON COLUMN ED9168W_TBL.TO_NM IS '棟名称'
/
COMMENT ON COLUMN ED9168W_TBL.KAI_NM IS '階名称'
/
COMMENT ON COLUMN ED9168W_TBL.KUKAKU_NM IS '区画名称'
/
COMMENT ON COLUMN ED9168W_TBL.HEYA_NM IS '部屋名称'
/
COMMENT ON COLUMN ED9168W_TBL.DENWA_NO IS '電話番号'
/
COMMENT ON COLUMN ED9168W_TBL.FAX_NO IS 'ＦＡＸ番号'
/
COMMENT ON COLUMN ED9168W_TBL.MAIL_ADDRESS_1 IS 'メールアドレス１'
/
COMMENT ON COLUMN ED9168W_TBL.MAIL_ADDRESS_2 IS 'メールアドレス２'
/
COMMENT ON COLUMN ED9168W_TBL.MAIL_ADDRESS_3 IS 'メールアドレス３'
/
COMMENT ON COLUMN ED9168W_TBL.TDB_KIGYO_CD IS 'ＴＤＢ企業コード'
/
COMMENT ON COLUMN ED9168W_TBL.HOJIN_NO IS '法人番号'
/
COMMENT ON COLUMN ED9168W_TBL.GYOSHU_CD IS '業種コード'
/
COMMENT ON COLUMN ED9168W_TBL.SHIHON_AMT IS '資本金額'
/
COMMENT ON COLUMN ED9168W_TBL.KESSAN_M IS '決算月'
/
COMMENT ON COLUMN ED9168W_TBL.BUNSEKI_KOMOKU_1 IS '分析項目１'
/
COMMENT ON COLUMN ED9168W_TBL.BUNSEKI_KOMOKU_2 IS '分析項目２'
/
COMMENT ON COLUMN ED9168W_TBL.BUNSEKI_KOMOKU_3 IS '分析項目３'
/
COMMENT ON COLUMN ED9168W_TBL.BUNSEKI_KOMOKU_4 IS '分析項目４'
/
COMMENT ON COLUMN ED9168W_TBL.BUNSEKI_KOMOKU_5 IS '分析項目５'
/
COMMENT ON COLUMN ED9168W_TBL.BUNSEKI_KOMOKU_6 IS '分析項目６'
/
COMMENT ON COLUMN ED9168W_TBL.BUNSEKI_KOMOKU_7 IS '分析項目７'
/
COMMENT ON COLUMN ED9168W_TBL.BUNSEKI_KOMOKU_8 IS '分析項目８'
/
COMMENT ON COLUMN ED9168W_TBL.BUNSEKI_KOMOKU_9 IS '分析項目９'
/
COMMENT ON COLUMN ED9168W_TBL.BUNSEKI_KOMOKU_10 IS '分析項目１０'
/
COMMENT ON COLUMN ED9168W_TBL.SHISHA_JUYO_KOKYAKU_FLG IS '支社重要顧客フラグ'
/
COMMENT ON COLUMN ED9168W_TBL.HA_JUYO_KOKYAKU_FLG IS 'ＨＡ重要顧客フラグ'
/
COMMENT ON COLUMN ED9168W_TBL.UNYO_JUYO_KOKYAKU_FLG IS '運用重要顧客フラグ'
/
COMMENT ON COLUMN ED9168W_TBL.ALSOK_KYOTSU_KYOGO_GAISHA_FLG IS 'ＡＬＳＯＫ共通競合会社フラグ'
/
COMMENT ON COLUMN ED9168W_TBL.TORIHIKISAKI_URL IS '取引先ＵＲＬ'
/
COMMENT ON COLUMN ED9168W_TBL.ALSOK_CLASS_KBN IS 'ＡＬＳＯＫクラス区分'
/
COMMENT ON COLUMN ED9168W_TBL.SOMADO_SHUTANTO_KAISHA_CD IS '総窓主担当会社コード'
/
COMMENT ON COLUMN ED9168W_TBL.SOMADO_SHUTANTO_JIGYOSHO_CD IS '総窓主担当事業所コード'
/
COMMENT ON COLUMN ED9168W_TBL.SMD_SHTNT_KISH_JGYSH_KTSG_NM IS '総窓主担当会社事業所結合名称'
/
COMMENT ON COLUMN ED9168W_TBL.SOMADO_SHUTANTO_SHAIN_NO IS '総窓主担当社員番号'
/
COMMENT ON COLUMN ED9168W_TBL.SOMADO_FUKUTANTO_KAISHA_CD IS '総窓副担当会社コード'
/
COMMENT ON COLUMN ED9168W_TBL.SOMADO_FUKUTANTO_JIGYOSHO_CD IS '総窓副担当事業所コード'
/
COMMENT ON COLUMN ED9168W_TBL.SMD_FKTNT_KISH_JGYSH_KTSG_NM IS '総窓副担当会社事業所結合名称'
/
COMMENT ON COLUMN ED9168W_TBL.SOMADO_FUKUTANTO_SHAIN_NO IS '総窓副担当社員番号'
/
COMMENT ON COLUMN ED9168W_TBL.HONTENGAI_EIGYO_KATSUDO_KBN IS '本店外営業活動区分'
/
COMMENT ON COLUMN ED9168W_TBL.KYOTEMBETSU_KESSAIKEN_KBN IS '拠点別決裁権区分'
/
COMMENT ON COLUMN ED9168W_TBL.KIGYOBETSU_SHIYO_KBN IS '企業別仕様区分'
/
COMMENT ON COLUMN ED9168W_TBL.KIGYOBETSU_SETTEI_KAKAKU_KBN IS '企業別設定価格区分'
/
COMMENT ON COLUMN ED9168W_TBL.SOMADOGAI_KEIYAKU_JOKYO_KBN IS '総窓外契約状況区分'
/
COMMENT ON COLUMN ED9168W_TBL.KOBETSU_SHIJI_NAIYO_1 IS '個別指示内容１'
/
COMMENT ON COLUMN ED9168W_TBL.KOBETSU_SHIJI_NAIYO_2 IS '個別指示内容２'
/
COMMENT ON COLUMN ED9168W_TBL.DAIHYOSHA_NM IS '代表者氏名'
/
COMMENT ON COLUMN ED9168W_TBL.JUGYOIN_NINZU IS '従業員人数'
/
COMMENT ON COLUMN ED9168W_TBL.SETSURITSU_YM IS '設立年月'
/
COMMENT ON COLUMN ED9168W_TBL.ZENKI_NENDO IS '前期年度'
/
COMMENT ON COLUMN ED9168W_TBL.ZENKI_URIAGEDAKA_AMT IS '前期売上高金額'
/
COMMENT ON COLUMN ED9168W_TBL.ZENKI_KEIJO_RIEKI_AMT IS '前期経常利益金額'
/
COMMENT ON COLUMN ED9168W_TBL.ZENKI_ZEIBIKIGO_RIEKI_AMT IS '前期税引後利益金額'
/
COMMENT ON COLUMN ED9168W_TBL.ZENZENKI_URIAGEDAKA_AMT IS '前々期売上高金額'
/
COMMENT ON COLUMN ED9168W_TBL.ZENZENKI_KEIJO_RIEKI_AMT IS '前々期経常利益金額'
/
COMMENT ON COLUMN ED9168W_TBL.ZENZENKI_ZEIBIKIGO_RIEKI_AMT IS '前々期税引後利益金額'
/
COMMENT ON COLUMN ED9168W_TBL.BLACKLIST_TAISHO_FLG IS 'ブラックリスト対象フラグ'
/
COMMENT ON COLUMN ED9168W_TBL.BLACKLIST_RIYU_KBN IS 'ブラックリスト理由区分'
/
COMMENT ON COLUMN ED9168W_TBL.HANSHAKAITEKI_SEIRYOKU_FLG IS '反社会的勢力フラグ'
/
COMMENT ON COLUMN ED9168W_TBL.KYOYU_TAISHO_FLG IS '共有対象フラグ'
/
COMMENT ON COLUMN ED9168W_TBL.GROUP_GAISHA_FLG IS 'グループ会社フラグ'
/
COMMENT ON COLUMN ED9168W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED9168W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED9168W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED9168W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED9168W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED9168W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED9168W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED9168W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED9168W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED9168W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED9168W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED9168W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
