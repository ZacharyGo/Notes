﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0012T_TBL.sql
-- 物理名：ED0012T_TBL
-- 論理名：案件進捗テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0012T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0012T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,ANKEN_NO  CHAR(13) NOT NULL --「案件番号」
	,ANKEN_SHOHIN_SN  CHAR(3) NOT NULL --「案件商品連番」
	,ANKEN_TAISHOSAKI_SN  CHAR(7) NOT NULL --「案件対象先連番」
	,ANKEN_JOHO_TOROKU_KANRYO_YMD  DATE --「案件情報登録完了年月日」
	,KEIBI_SHINDAN_IRAI_KANRYO_YMD  DATE --「警備診断依頼完了年月日」
	,KIB_SHNDN_KEKKA_TRK_KNRY_YMD  DATE --「警備診断結果登録完了年月日」
	,TETSUZUKI_SENTAKU_KANRYO_YMD  DATE --「手続選択完了年月日」
	,JUCHU_SHINSEI_KANRYO_YMD  DATE --「受注申請完了年月日」
	,JUCHU_SHONIN_KANRYO_YMD  DATE --「受注承認完了年月日」
	,MTSMRSH_SKSI_KNRY_YMD  DATE --「見積書作成完了年月日」
	,KEIYAKU_JOHO_TOROKU_KANRYO_YMD  DATE --「契約情報登録完了年月日」
	,KEIYAKUSHO_KAISHU_KANRYO_YMD  DATE --「契約書回収完了年月日」
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
	,CONSTRAINT ED0012T_PK PRIMARY KEY(
	 ANKEN_NO
	,  ANKEN_SHOHIN_SN
	,  ANKEN_TAISHOSAKI_SN
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0012T_TBL IS '案件進捗テーブル'
/

COMMENT ON COLUMN ED0012T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0012T_TBL.ANKEN_NO IS '案件番号'
/
COMMENT ON COLUMN ED0012T_TBL.ANKEN_SHOHIN_SN IS '案件商品連番'
/
COMMENT ON COLUMN ED0012T_TBL.ANKEN_TAISHOSAKI_SN IS '案件対象先連番'
/
COMMENT ON COLUMN ED0012T_TBL.ANKEN_JOHO_TOROKU_KANRYO_YMD IS '案件情報登録完了年月日'
/
COMMENT ON COLUMN ED0012T_TBL.KEIBI_SHINDAN_IRAI_KANRYO_YMD IS '警備診断依頼完了年月日'
/
COMMENT ON COLUMN ED0012T_TBL.KIB_SHNDN_KEKKA_TRK_KNRY_YMD IS '警備診断結果登録完了年月日'
/
COMMENT ON COLUMN ED0012T_TBL.TETSUZUKI_SENTAKU_KANRYO_YMD IS '手続選択完了年月日'
/
COMMENT ON COLUMN ED0012T_TBL.JUCHU_SHINSEI_KANRYO_YMD IS '受注申請完了年月日'
/
COMMENT ON COLUMN ED0012T_TBL.JUCHU_SHONIN_KANRYO_YMD IS '受注承認完了年月日'
/
COMMENT ON COLUMN ED0012T_TBL.MTSMRSH_SKSI_KNRY_YMD IS '見積書作成完了年月日'
/
COMMENT ON COLUMN ED0012T_TBL.KEIYAKU_JOHO_TOROKU_KANRYO_YMD IS '契約情報登録完了年月日'
/
COMMENT ON COLUMN ED0012T_TBL.KEIYAKUSHO_KAISHU_KANRYO_YMD IS '契約書回収完了年月日'
/
COMMENT ON COLUMN ED0012T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0012T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0012T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0012T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0012T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0012T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0012T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0012T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0012T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0012T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0012T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0012T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
