﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0013M_TBL.sql
-- 物理名：ED0013M_TBL
-- 論理名：紹介者マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0013M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0013M_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,SHOKAISHA_TORIHIKISAKI_CD  CHAR(9) NOT NULL --「紹介者取引先コード」
	,SHKISH_TRHKSK_BSH_CD  CHAR(4) NOT NULL --「紹介者取引先部署コード」
	,SHOKAIMOTO_KBN  CHAR(1) NOT NULL --「紹介元区分」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
	,SHKISH_TRHKSK_SHHRI_JH_CD  CHAR(4) --「紹介者取引先支払情報コード」
	,EIGYO_JIGYOSHO_CD  CHAR(6) --「営業事業所コード」
	,EIGYO_SHAIN_NO  VARCHAR2(8) --「営業社員番号」
	,SHOKAISHA_SHONIN_YMD  DATE --「紹介者承認年月日」
	,SHOKAISHA_TEIKETSU_YMD  DATE --「紹介者締結年月日」
	,SHOKAISHA_KAIYAKU_YMD  DATE --「紹介者解約年月日」
	,SHOKAISHA_KAIYAKU_NYURYOKU_YMD  DATE --「紹介者解約入力年月日」
	,TRATSKITN_KYEIKI_BLOCK_KBN  CHAR(2) --「取扱店共栄会ブロック区分」
	,TRATSKITN_KYEIKI_SHB_KBN  CHAR(4) --「取扱店共栄会支部区分」
	,TORIATSUKAITEN_BUNRUI_KBN  CHAR(1) --「取扱店分類区分」
	,TORIATSUKAITEN_GYOSHU_KBN  CHAR(2) --「取扱店業種区分」
	,TORIATSUKAITEN_MAIL_ADDRESS  VARCHAR2(200) --「取扱店メールアドレス」
	,ASSEN_TEIKEI_NAIYO_KBN  CHAR(1) --「斡旋提携内容区分」
	,BUSINESS_MATCHING_KY_TYPE_KBN  CHAR(1) --「ビジネスマッチング契約タイプ区分」
	,BUSINESS_MATCHING_GYOSHU_KBN  CHAR(1) --「ビジネスマッチング業種区分」
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
	,CONSTRAINT ED0013M_PK PRIMARY KEY(
	 SHOKAISHA_TORIHIKISAKI_CD
	,  SHKISH_TRHKSK_BSH_CD
	,  SHOKAIMOTO_KBN
	,  KAISHA_CD
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0013M_TBL IS '紹介者マスタ'
/

COMMENT ON COLUMN ED0013M_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0013M_TBL.SHOKAISHA_TORIHIKISAKI_CD IS '紹介者取引先コード'
/
COMMENT ON COLUMN ED0013M_TBL.SHKISH_TRHKSK_BSH_CD IS '紹介者取引先部署コード'
/
COMMENT ON COLUMN ED0013M_TBL.SHOKAIMOTO_KBN IS '紹介元区分'
/
COMMENT ON COLUMN ED0013M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED0013M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED0013M_TBL.SHKISH_TRHKSK_SHHRI_JH_CD IS '紹介者取引先支払情報コード'
/
COMMENT ON COLUMN ED0013M_TBL.EIGYO_JIGYOSHO_CD IS '営業事業所コード'
/
COMMENT ON COLUMN ED0013M_TBL.EIGYO_SHAIN_NO IS '営業社員番号'
/
COMMENT ON COLUMN ED0013M_TBL.SHOKAISHA_SHONIN_YMD IS '紹介者承認年月日'
/
COMMENT ON COLUMN ED0013M_TBL.SHOKAISHA_TEIKETSU_YMD IS '紹介者締結年月日'
/
COMMENT ON COLUMN ED0013M_TBL.SHOKAISHA_KAIYAKU_YMD IS '紹介者解約年月日'
/
COMMENT ON COLUMN ED0013M_TBL.SHOKAISHA_KAIYAKU_NYURYOKU_YMD IS '紹介者解約入力年月日'
/
COMMENT ON COLUMN ED0013M_TBL.TRATSKITN_KYEIKI_BLOCK_KBN IS '取扱店共栄会ブロック区分'
/
COMMENT ON COLUMN ED0013M_TBL.TRATSKITN_KYEIKI_SHB_KBN IS '取扱店共栄会支部区分'
/
COMMENT ON COLUMN ED0013M_TBL.TORIATSUKAITEN_BUNRUI_KBN IS '取扱店分類区分'
/
COMMENT ON COLUMN ED0013M_TBL.TORIATSUKAITEN_GYOSHU_KBN IS '取扱店業種区分'
/
COMMENT ON COLUMN ED0013M_TBL.TORIATSUKAITEN_MAIL_ADDRESS IS '取扱店メールアドレス'
/
COMMENT ON COLUMN ED0013M_TBL.ASSEN_TEIKEI_NAIYO_KBN IS '斡旋提携内容区分'
/
COMMENT ON COLUMN ED0013M_TBL.BUSINESS_MATCHING_KY_TYPE_KBN IS 'ビジネスマッチング契約タイプ区分'
/
COMMENT ON COLUMN ED0013M_TBL.BUSINESS_MATCHING_GYOSHU_KBN IS 'ビジネスマッチング業種区分'
/
COMMENT ON COLUMN ED0013M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0013M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0013M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0013M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0013M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0013M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0013M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0013M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0013M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0013M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0013M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0013M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/