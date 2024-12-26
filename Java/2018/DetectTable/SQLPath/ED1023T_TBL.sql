﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1023T_TBL.sql
-- 物理名：ED1023T_TBL
-- 論理名：工事終了報告テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1023T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1023T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,KOJI_SHIGOTO_SN  CHAR(14) NOT NULL --「工事仕事連番」
	,TAISHOSAKI_CD  CHAR(9) NOT NULL --「対象先コード」
	,KJ_KYRYK_KISH_TRHKSK_CD  CHAR(9) --「工事協力会社取引先コード」
	,KOJI_TORIHIKISAKI_BUSHO_CD  CHAR(4) --「工事取引先部署コード」
	,KOJI_YMD  DATE --「工事年月日」
	,KOJI_JIMUSHITSU_JIGYOSHO_CD  CHAR(6) --「工事事務室事業所コード」
	,KOJI_TANTO_JIGYOSHO_CD  CHAR(6) --「工事担当事業所コード」
	,KOJI_KAISHI_YMD  DATE --「工事開始年月日」
	,KOJI_SHURYO_YMD  DATE --「工事終了年月日」
	,SAGYO_SHURYO_YMD  DATE --「作業終了年月日」
	,KJ_SHRY_HKK_KOMOKU_VERSION_NO  CHAR(8) --「工事終了報告項目バージョン番号」
	,KJ_SHRY_HKK_KOMOKU_VERSION_YMD  DATE --「工事終了報告項目バージョン年月日」
	,KOJI_SHURYO_HOKOKU_TOKKI_JIKO  VARCHAR2(100) --「工事終了報告特記事項」
	,KOJI_NAIYO  VARCHAR2(100) --「工事内容」
	,KOJI_SHURYO_HOKOKU_KINYU_YMD  DATE --「工事終了報告記入年月日」
	,SHOHIN_SERVICE_CD  CHAR(3) NOT NULL --「商品サービスコード」
	,KOJI_KBN  CHAR(1) NOT NULL --「工事区分」
	,SGYIN_MIB_SKNNSHMI_NAIYO  VARCHAR2(100) --「作業員名簿責任者名内容」
	,HOKOKUSHO_SHUSEI_RIYU_NAIYO  VARCHAR2(100) --「報告書修正理由内容」
	,SHRY_HKK_TISHTSZM_FLG  CHAR(1) DEFAULT '0' NOT NULL --「終了報告提出済フラグ」
	,KJ_SHRY_HKK_TISHTS_YMD  DATE --「工事終了報告提出年月日」
	,KOJI_SHURYO_HOKOKU_KAKUNIN_YMD  DATE --「工事終了報告確認年月日」
	,KOJI_CHUMONSHO_NO  CHAR(13) --「工事注文書番号」
	,KOJI_CHUMONSHO_KAIHAN_NO  CHAR(1) --「工事注文書改版番号」
	,KJ_SHRY_HKK_KKNN_SHIN_NO  VARCHAR2(8) --「工事終了報告確認社員番号」
	,JUCHU_KEIYAKU_NO  CHAR(15) --「受注契約番号」
	,KEIYAKUSAKI_TORIHIKISAKI_CD  CHAR(9) --「契約先取引先コード」
	,KOJI_SHURYO_HOKOKU_JOKYO_KBN  CHAR(1) DEFAULT '0' NOT NULL --「工事終了報告状況区分」
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
	,CONSTRAINT ED1023T_PK PRIMARY KEY(
	 KOJI_SHIGOTO_SN
	,  TAISHOSAKI_CD
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1023T_TBL IS '工事終了報告テーブル'
/

COMMENT ON COLUMN ED1023T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1023T_TBL.KOJI_SHIGOTO_SN IS '工事仕事連番'
/
COMMENT ON COLUMN ED1023T_TBL.TAISHOSAKI_CD IS '対象先コード'
/
COMMENT ON COLUMN ED1023T_TBL.KJ_KYRYK_KISH_TRHKSK_CD IS '工事協力会社取引先コード'
/
COMMENT ON COLUMN ED1023T_TBL.KOJI_TORIHIKISAKI_BUSHO_CD IS '工事取引先部署コード'
/
COMMENT ON COLUMN ED1023T_TBL.KOJI_YMD IS '工事年月日'
/
COMMENT ON COLUMN ED1023T_TBL.KOJI_JIMUSHITSU_JIGYOSHO_CD IS '工事事務室事業所コード'
/
COMMENT ON COLUMN ED1023T_TBL.KOJI_TANTO_JIGYOSHO_CD IS '工事担当事業所コード'
/
COMMENT ON COLUMN ED1023T_TBL.KOJI_KAISHI_YMD IS '工事開始年月日'
/
COMMENT ON COLUMN ED1023T_TBL.KOJI_SHURYO_YMD IS '工事終了年月日'
/
COMMENT ON COLUMN ED1023T_TBL.SAGYO_SHURYO_YMD IS '作業終了年月日'
/
COMMENT ON COLUMN ED1023T_TBL.KJ_SHRY_HKK_KOMOKU_VERSION_NO IS '工事終了報告項目バージョン番号'
/
COMMENT ON COLUMN ED1023T_TBL.KJ_SHRY_HKK_KOMOKU_VERSION_YMD IS '工事終了報告項目バージョン年月日'
/
COMMENT ON COLUMN ED1023T_TBL.KOJI_SHURYO_HOKOKU_TOKKI_JIKO IS '工事終了報告特記事項'
/
COMMENT ON COLUMN ED1023T_TBL.KOJI_NAIYO IS '工事内容'
/
COMMENT ON COLUMN ED1023T_TBL.KOJI_SHURYO_HOKOKU_KINYU_YMD IS '工事終了報告記入年月日'
/
COMMENT ON COLUMN ED1023T_TBL.SHOHIN_SERVICE_CD IS '商品サービスコード'
/
COMMENT ON COLUMN ED1023T_TBL.KOJI_KBN IS '工事区分'
/
COMMENT ON COLUMN ED1023T_TBL.SGYIN_MIB_SKNNSHMI_NAIYO IS '作業員名簿責任者名内容'
/
COMMENT ON COLUMN ED1023T_TBL.HOKOKUSHO_SHUSEI_RIYU_NAIYO IS '報告書修正理由内容'
/
COMMENT ON COLUMN ED1023T_TBL.SHRY_HKK_TISHTSZM_FLG IS '終了報告提出済フラグ'
/
COMMENT ON COLUMN ED1023T_TBL.KJ_SHRY_HKK_TISHTS_YMD IS '工事終了報告提出年月日'
/
COMMENT ON COLUMN ED1023T_TBL.KOJI_SHURYO_HOKOKU_KAKUNIN_YMD IS '工事終了報告確認年月日'
/
COMMENT ON COLUMN ED1023T_TBL.KOJI_CHUMONSHO_NO IS '工事注文書番号'
/
COMMENT ON COLUMN ED1023T_TBL.KOJI_CHUMONSHO_KAIHAN_NO IS '工事注文書改版番号'
/
COMMENT ON COLUMN ED1023T_TBL.KJ_SHRY_HKK_KKNN_SHIN_NO IS '工事終了報告確認社員番号'
/
COMMENT ON COLUMN ED1023T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED1023T_TBL.KEIYAKUSAKI_TORIHIKISAKI_CD IS '契約先取引先コード'
/
COMMENT ON COLUMN ED1023T_TBL.KOJI_SHURYO_HOKOKU_JOKYO_KBN IS '工事終了報告状況区分'
/
COMMENT ON COLUMN ED1023T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED1023T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED1023T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1023T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1023T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1023T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1023T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1023T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1023T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1023T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1023T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1023T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1023T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1023T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
