﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1049T_TBL.sql
-- 物理名：ED1049T_TBL
-- 論理名：警備保全テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1049T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1049T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,TAISHOSAKI_CD  CHAR(9) NOT NULL --「対象先コード」
	,JISSHI_JIGYOSHO_CD  CHAR(6) --「実施事業所コード」
	,DAIICHI_TOKKI_JIKO  VARCHAR2(100) --「第一特記事項」
	,DAINI_TOKKI_JIKO  VARCHAR2(100) --「第二特記事項」
	,DAISAN_TOKKI_JIKO  VARCHAR2(100) --「第三特記事項」
	,MAINTENANCE_JIGYOSHO_CD  CHAR(6) --「メンテナンス事業所コード」
	,SAISHU_TSUJO_TENKEN_D  DATE --「最終通常点検日」
	,SAISHU_SAIBU_TENKEN_D  DATE --「最終細部点検日」
	,TSUJO_TENKEN_YOTEI_D  DATE --「通常点検予定日」
	,SAIBU_TENKEN_YOTEI_D  DATE --「細部点検予定日」
	,SAIBU_TENKEN_SHUBETSU_KBN  CHAR(1) NOT NULL --「細部点検種別区分」
	,DAIICHI_HOZEN_TOKKI_JIKO  VARCHAR2(100) --「第一保全特記事項」
	,DAINI_HOZEN_TOKKI_JIKO  VARCHAR2(100) --「第二保全特記事項」
	,DAISAN_HOZEN_TOKKI_JIKO  VARCHAR2(100) --「第三保全特記事項」
	,KEIYAKU_KAITEI_D  DATE --「契約改訂日」
	,JIKI_NENKAN_KEIKAKU_NENJI_NO  NUMBER(2,0) DEFAULT '0' NOT NULL --「次期年間計画年次番号」
	,NNJICH_1_M_TNKN_SHRI_KBN  CHAR(1) NOT NULL --「年次一１月点検種類区分」
	,NNJICH_2_M_TNKN_SHRI_KBN  CHAR(1) NOT NULL --「年次一２月点検種類区分」
	,NNJICH_3_M_TNKN_SHRI_KBN  CHAR(1) NOT NULL --「年次一３月点検種類区分」
	,NNJICH_4_M_TNKN_SHRI_KBN  CHAR(1) NOT NULL --「年次一４月点検種類区分」
	,NNJICH_5_M_TNKN_SHRI_KBN  CHAR(1) NOT NULL --「年次一５月点検種類区分」
	,NNJICH_6_M_TNKN_SHRI_KBN  CHAR(1) NOT NULL --「年次一６月点検種類区分」
	,NNJICH_7_M_TNKN_SHRI_KBN  CHAR(1) NOT NULL --「年次一７月点検種類区分」
	,NNJICH_8_M_TNKN_SHRI_KBN  CHAR(1) NOT NULL --「年次一８月点検種類区分」
	,NNJICH_9_M_TNKN_SHRI_KBN  CHAR(1) NOT NULL --「年次一９月点検種類区分」
	,NNJICH_10_M_TNKN_SHRI_KBN  CHAR(1) NOT NULL --「年次一１０月点検種類区分」
	,NNJICH_11_M_TNKN_SHRI_KBN  CHAR(1) NOT NULL --「年次一１１月点検種類区分」
	,NNJICH_12_M_TNKN_SHRI_KBN  CHAR(1) NOT NULL --「年次一１２月点検種類区分」
	,NENJINI_1_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次二１月点検種類区分」
	,NENJINI_2_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次二２月点検種類区分」
	,NENJINI_3_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次二３月点検種類区分」
	,NENJINI_4_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次二４月点検種類区分」
	,NENJINI_5_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次二５月点検種類区分」
	,NENJINI_6_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次二６月点検種類区分」
	,NENJINI_7_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次二７月点検種類区分」
	,NENJINI_8_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次二８月点検種類区分」
	,NENJINI_9_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次二９月点検種類区分」
	,NENJINI_10_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次二１０月点検種類区分」
	,NENJINI_11_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次二１１月点検種類区分」
	,NENJINI_12_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次二１２月点検種類区分」
	,NENJISAN_1_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次三１月点検種類区分」
	,NENJISAN_2_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次三２月点検種類区分」
	,NENJISAN_3_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次三３月点検種類区分」
	,NENJISAN_4_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次三４月点検種類区分」
	,NENJISAN_5_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次三５月点検種類区分」
	,NENJISAN_6_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次三６月点検種類区分」
	,NENJISAN_7_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次三７月点検種類区分」
	,NENJISAN_8_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次三８月点検種類区分」
	,NENJISAN_9_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次三９月点検種類区分」
	,NNJSN_10_M_TNKN_SHRI_KBN  CHAR(1) NOT NULL --「年次三１０月点検種類区分」
	,NNJSN_11_M_TNKN_SHRI_KBN  CHAR(1) NOT NULL --「年次三１１月点検種類区分」
	,NNJSN_12_M_TNKN_SHRI_KBN  CHAR(1) NOT NULL --「年次三１２月点検種類区分」
	,NENJIYON_1_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次四１月点検種類区分」
	,NENJIYON_2_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次四２月点検種類区分」
	,NENJIYON_3_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次四３月点検種類区分」
	,NENJIYON_4_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次四４月点検種類区分」
	,NENJIYON_5_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次四５月点検種類区分」
	,NENJIYON_6_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次四６月点検種類区分」
	,NENJIYON_7_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次四７月点検種類区分」
	,NENJIYON_8_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次四８月点検種類区分」
	,NENJIYON_9_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次四９月点検種類区分」
	,NNJYN_10_M_TNKN_SHRI_KBN  CHAR(1) NOT NULL --「年次四１０月点検種類区分」
	,NNJYN_11_M_TNKN_SHRI_KBN  CHAR(1) NOT NULL --「年次四１１月点検種類区分」
	,NNJYN_12_M_TNKN_SHRI_KBN  CHAR(1) NOT NULL --「年次四１２月点検種類区分」
	,NENJIGO_1_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次五１月点検種類区分」
	,NENJIGO_2_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次五２月点検種類区分」
	,NENJIGO_3_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次五３月点検種類区分」
	,NENJIGO_4_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次五４月点検種類区分」
	,NENJIGO_5_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次五５月点検種類区分」
	,NENJIGO_6_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次五６月点検種類区分」
	,NENJIGO_7_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次五７月点検種類区分」
	,NENJIGO_8_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次五８月点検種類区分」
	,NENJIGO_9_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次五９月点検種類区分」
	,NENJIGO_10_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次五１０月点検種類区分」
	,NENJIGO_11_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次五１１月点検種類区分」
	,NENJIGO_12_M_TENKEN_SHURUI_KBN  CHAR(1) NOT NULL --「年次五１２月点検種類区分」
	,REGST_TMSTMP  TIMESTAMP --「登録タイムスタンプ」
	,UPD_TMSTMP  TIMESTAMP --「更新タイムスタンプ」
	,UPDTR_EMP_NO  VARCHAR2(8) --「更新者社員番号」
	,REGSTR_CO_CD  CHAR(5) --「登録者会社コード」
	,REGSTR_SOSHIKI_CD  VARCHAR2(6) --「登録者組織コード」
	,REGSTR_EMP_NO  VARCHAR2(8) --「登録者社員番号」
	,REGST_GAMEN_ID  CHAR(15) --「登録画面ＩＤ」
	,REGST_PGM_ID  VARCHAR2(255) --「登録プログラムＩＤ」
	,UPDTR_CO_CD  CHAR(5) --「更新者会社コード」
	,UPDTR_SOSHIKI_CD  VARCHAR2(6) --「更新者組織コード」
	,UPD_GAMEN_ID  CHAR(15) --「更新画面ＩＤ」
	,UPD_PGM_ID  VARCHAR2(255) --「更新プログラムＩＤ」
	,CONSTRAINT ED1049T_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  TAISHOSAKI_CD
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1049T_TBL IS '警備保全テーブル'
/

COMMENT ON COLUMN ED1049T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1049T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED1049T_TBL.TAISHOSAKI_CD IS '対象先コード'
/
COMMENT ON COLUMN ED1049T_TBL.JISSHI_JIGYOSHO_CD IS '実施事業所コード'
/
COMMENT ON COLUMN ED1049T_TBL.DAIICHI_TOKKI_JIKO IS '第一特記事項'
/
COMMENT ON COLUMN ED1049T_TBL.DAINI_TOKKI_JIKO IS '第二特記事項'
/
COMMENT ON COLUMN ED1049T_TBL.DAISAN_TOKKI_JIKO IS '第三特記事項'
/
COMMENT ON COLUMN ED1049T_TBL.MAINTENANCE_JIGYOSHO_CD IS 'メンテナンス事業所コード'
/
COMMENT ON COLUMN ED1049T_TBL.SAISHU_TSUJO_TENKEN_D IS '最終通常点検日'
/
COMMENT ON COLUMN ED1049T_TBL.SAISHU_SAIBU_TENKEN_D IS '最終細部点検日'
/
COMMENT ON COLUMN ED1049T_TBL.TSUJO_TENKEN_YOTEI_D IS '通常点検予定日'
/
COMMENT ON COLUMN ED1049T_TBL.SAIBU_TENKEN_YOTEI_D IS '細部点検予定日'
/
COMMENT ON COLUMN ED1049T_TBL.SAIBU_TENKEN_SHUBETSU_KBN IS '細部点検種別区分'
/
COMMENT ON COLUMN ED1049T_TBL.DAIICHI_HOZEN_TOKKI_JIKO IS '第一保全特記事項'
/
COMMENT ON COLUMN ED1049T_TBL.DAINI_HOZEN_TOKKI_JIKO IS '第二保全特記事項'
/
COMMENT ON COLUMN ED1049T_TBL.DAISAN_HOZEN_TOKKI_JIKO IS '第三保全特記事項'
/
COMMENT ON COLUMN ED1049T_TBL.KEIYAKU_KAITEI_D IS '契約改訂日'
/
COMMENT ON COLUMN ED1049T_TBL.JIKI_NENKAN_KEIKAKU_NENJI_NO IS '次期年間計画年次番号'
/
COMMENT ON COLUMN ED1049T_TBL.NNJICH_1_M_TNKN_SHRI_KBN IS '年次一１月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NNJICH_2_M_TNKN_SHRI_KBN IS '年次一２月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NNJICH_3_M_TNKN_SHRI_KBN IS '年次一３月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NNJICH_4_M_TNKN_SHRI_KBN IS '年次一４月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NNJICH_5_M_TNKN_SHRI_KBN IS '年次一５月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NNJICH_6_M_TNKN_SHRI_KBN IS '年次一６月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NNJICH_7_M_TNKN_SHRI_KBN IS '年次一７月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NNJICH_8_M_TNKN_SHRI_KBN IS '年次一８月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NNJICH_9_M_TNKN_SHRI_KBN IS '年次一９月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NNJICH_10_M_TNKN_SHRI_KBN IS '年次一１０月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NNJICH_11_M_TNKN_SHRI_KBN IS '年次一１１月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NNJICH_12_M_TNKN_SHRI_KBN IS '年次一１２月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJINI_1_M_TENKEN_SHURUI_KBN IS '年次二１月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJINI_2_M_TENKEN_SHURUI_KBN IS '年次二２月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJINI_3_M_TENKEN_SHURUI_KBN IS '年次二３月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJINI_4_M_TENKEN_SHURUI_KBN IS '年次二４月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJINI_5_M_TENKEN_SHURUI_KBN IS '年次二５月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJINI_6_M_TENKEN_SHURUI_KBN IS '年次二６月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJINI_7_M_TENKEN_SHURUI_KBN IS '年次二７月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJINI_8_M_TENKEN_SHURUI_KBN IS '年次二８月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJINI_9_M_TENKEN_SHURUI_KBN IS '年次二９月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJINI_10_M_TENKEN_SHURUI_KBN IS '年次二１０月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJINI_11_M_TENKEN_SHURUI_KBN IS '年次二１１月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJINI_12_M_TENKEN_SHURUI_KBN IS '年次二１２月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJISAN_1_M_TENKEN_SHURUI_KBN IS '年次三１月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJISAN_2_M_TENKEN_SHURUI_KBN IS '年次三２月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJISAN_3_M_TENKEN_SHURUI_KBN IS '年次三３月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJISAN_4_M_TENKEN_SHURUI_KBN IS '年次三４月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJISAN_5_M_TENKEN_SHURUI_KBN IS '年次三５月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJISAN_6_M_TENKEN_SHURUI_KBN IS '年次三６月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJISAN_7_M_TENKEN_SHURUI_KBN IS '年次三７月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJISAN_8_M_TENKEN_SHURUI_KBN IS '年次三８月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJISAN_9_M_TENKEN_SHURUI_KBN IS '年次三９月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NNJSN_10_M_TNKN_SHRI_KBN IS '年次三１０月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NNJSN_11_M_TNKN_SHRI_KBN IS '年次三１１月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NNJSN_12_M_TNKN_SHRI_KBN IS '年次三１２月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJIYON_1_M_TENKEN_SHURUI_KBN IS '年次四１月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJIYON_2_M_TENKEN_SHURUI_KBN IS '年次四２月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJIYON_3_M_TENKEN_SHURUI_KBN IS '年次四３月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJIYON_4_M_TENKEN_SHURUI_KBN IS '年次四４月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJIYON_5_M_TENKEN_SHURUI_KBN IS '年次四５月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJIYON_6_M_TENKEN_SHURUI_KBN IS '年次四６月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJIYON_7_M_TENKEN_SHURUI_KBN IS '年次四７月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJIYON_8_M_TENKEN_SHURUI_KBN IS '年次四８月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJIYON_9_M_TENKEN_SHURUI_KBN IS '年次四９月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NNJYN_10_M_TNKN_SHRI_KBN IS '年次四１０月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NNJYN_11_M_TNKN_SHRI_KBN IS '年次四１１月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NNJYN_12_M_TNKN_SHRI_KBN IS '年次四１２月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJIGO_1_M_TENKEN_SHURUI_KBN IS '年次五１月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJIGO_2_M_TENKEN_SHURUI_KBN IS '年次五２月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJIGO_3_M_TENKEN_SHURUI_KBN IS '年次五３月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJIGO_4_M_TENKEN_SHURUI_KBN IS '年次五４月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJIGO_5_M_TENKEN_SHURUI_KBN IS '年次五５月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJIGO_6_M_TENKEN_SHURUI_KBN IS '年次五６月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJIGO_7_M_TENKEN_SHURUI_KBN IS '年次五７月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJIGO_8_M_TENKEN_SHURUI_KBN IS '年次五８月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJIGO_9_M_TENKEN_SHURUI_KBN IS '年次五９月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJIGO_10_M_TENKEN_SHURUI_KBN IS '年次五１０月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJIGO_11_M_TENKEN_SHURUI_KBN IS '年次五１１月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.NENJIGO_12_M_TENKEN_SHURUI_KBN IS '年次五１２月点検種類区分'
/
COMMENT ON COLUMN ED1049T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1049T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1049T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1049T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1049T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1049T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1049T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1049T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1049T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1049T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1049T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1049T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/