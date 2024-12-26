﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0463W_TBL.sql
-- 物理名：ED0463W_TBL
-- 論理名：満期契約受注案件作成ワーク
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0463W_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0463W_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) NOT NULL --「受注契約変更番号」
	,ANKEN_SHOHIN_SN  CHAR(3) --「案件商品連番」
	,ANKEN_TAISHOSAKI_SN  CHAR(7) --「案件対象先連番」
	,SHOHIN_SERVICE_SHUBETSU_CD  CHAR(3) --「商品サービス種別コード」
	,SHOHIN_SERVICE_CD  CHAR(3) --「商品サービスコード」
	,GYOMU_MANRYO_YOTEI_YMD  DATE --「業務満了予定年月日」
	,GYOMU_KAISHI_YMD  DATE --「業務開始年月日」
	,JUCHU_JIGYOSHO_CD  CHAR(6) --「受注事業所コード」
	,ANKEN_TORIHIKISAKI_CD  CHAR(9) --「案件取引先コード」
	,ANKEN_TORIHIKISAKI_BUSHO_CD  CHAR(4) --「案件取引先部署コード」
	,KEIYAKU_JUCHU_TANTO_SHAIN_NO  VARCHAR2(8) --「契約受注担当社員番号」
	,TAISHOSAKI_CD  CHAR(9) --「対象先コード」
	,JISSHI_JIGYOSHO_CD  CHAR(6) --「実施事業所コード」
	,ANKEN_NO  CHAR(13) --「案件番号」
	,KEIYAKU_KOSHIN_TSUCHI_KBN  CHAR(1) NOT NULL --「契約更新通知区分」
	,MNK_KIYK_CHSHTS_KJMB_KBN  CHAR(1) NOT NULL --「満期契約抽出基準日区分」
	,KEIYAKU_TSUKISU  NUMBER(12,3) DEFAULT '0' NOT NULL --「契約月数」
	,ANKEN_JOHO_TOROKU_TAISHO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「案件情報登録対象フラグ」
	,DAI_2_KAISO_EIGYO_SOSHIKI_CD  CHAR(6) --「第２階層営業組織コード」
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
	,CONSTRAINT ED0463W_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  JUCHU_KEIYAKU_HENKO_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0463W_TBL IS '満期契約受注案件作成ワーク'
/

COMMENT ON COLUMN ED0463W_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0463W_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED0463W_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED0463W_TBL.ANKEN_SHOHIN_SN IS '案件商品連番'
/
COMMENT ON COLUMN ED0463W_TBL.ANKEN_TAISHOSAKI_SN IS '案件対象先連番'
/
COMMENT ON COLUMN ED0463W_TBL.SHOHIN_SERVICE_SHUBETSU_CD IS '商品サービス種別コード'
/
COMMENT ON COLUMN ED0463W_TBL.SHOHIN_SERVICE_CD IS '商品サービスコード'
/
COMMENT ON COLUMN ED0463W_TBL.GYOMU_MANRYO_YOTEI_YMD IS '業務満了予定年月日'
/
COMMENT ON COLUMN ED0463W_TBL.GYOMU_KAISHI_YMD IS '業務開始年月日'
/
COMMENT ON COLUMN ED0463W_TBL.JUCHU_JIGYOSHO_CD IS '受注事業所コード'
/
COMMENT ON COLUMN ED0463W_TBL.ANKEN_TORIHIKISAKI_CD IS '案件取引先コード'
/
COMMENT ON COLUMN ED0463W_TBL.ANKEN_TORIHIKISAKI_BUSHO_CD IS '案件取引先部署コード'
/
COMMENT ON COLUMN ED0463W_TBL.KEIYAKU_JUCHU_TANTO_SHAIN_NO IS '契約受注担当社員番号'
/
COMMENT ON COLUMN ED0463W_TBL.TAISHOSAKI_CD IS '対象先コード'
/
COMMENT ON COLUMN ED0463W_TBL.JISSHI_JIGYOSHO_CD IS '実施事業所コード'
/
COMMENT ON COLUMN ED0463W_TBL.ANKEN_NO IS '案件番号'
/
COMMENT ON COLUMN ED0463W_TBL.KEIYAKU_KOSHIN_TSUCHI_KBN IS '契約更新通知区分'
/
COMMENT ON COLUMN ED0463W_TBL.MNK_KIYK_CHSHTS_KJMB_KBN IS '満期契約抽出基準日区分'
/
COMMENT ON COLUMN ED0463W_TBL.KEIYAKU_TSUKISU IS '契約月数'
/
COMMENT ON COLUMN ED0463W_TBL.ANKEN_JOHO_TOROKU_TAISHO_FLG IS '案件情報登録対象フラグ'
/
COMMENT ON COLUMN ED0463W_TBL.DAI_2_KAISO_EIGYO_SOSHIKI_CD IS '第２階層営業組織コード'
/
COMMENT ON COLUMN ED0463W_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0463W_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0463W_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0463W_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0463W_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0463W_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0463W_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0463W_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0463W_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0463W_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0463W_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0463W_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
