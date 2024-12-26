﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED3908T_TBL.sql
-- 物理名：ED3908T_TBL
-- 論理名：保険料計上額月次テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED3908T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED3908T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,TAISHO_YM  CHAR(6) NOT NULL --「対象年月」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) NOT NULL --「受注契約変更番号」
	,KEIYAKUSAKI_TORIHIKISAKI_CD  CHAR(9) --「契約先取引先コード」
	,GYOMU_TAISHOSAKI_CD  CHAR(9) --「業務対象先コード」
	,SHOHIN_SERVICE_CD  CHAR(3) --「商品サービスコード」
	,GS_HOKEN_KANYU_TYPE_CD  CHAR(4) --「ＧＳ保険加入タイプコード」
	,YUKA_MENSEKI  NUMBER(12,3) DEFAULT '0' NOT NULL --「床面積」
	,SEIGYO_SOCHI_HIMMEI_CD  CHAR(8) --「制御装置品名コード」
	,JUCHU_JIGYOSHO_CD  CHAR(6) --「受注事業所コード」
	,JISSHI_JIGYOSHO_CD  CHAR(6) --「実施事業所コード」
	,GYOMU_KAISHI_YMD  DATE --「業務開始年月日」
	,RYOKIN_KAITEI_YMD  DATE --「料金改定年月日」
	,KYUKEIYAKU_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「旧契約料金金額」
	,SHINKEIYAKU_RYOKIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「新契約料金金額」
	,KEIYAKU_CHUDAN_YMD  DATE --「契約中断年月日」
	,KEIYAKU_SAIKAI_YMD  DATE --「契約再開年月日」
	,KAIYAKU_YMD  DATE --「解約年月日」
	,HOKENRYO_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「保険料金額」
	,SEIKYU_TEKIYO_1  VARCHAR2(40) --「請求摘要１」
	,SEIKYU_TEKIYO_2  VARCHAR2(60) --「請求摘要２」
	,SEIKYU_TEKIYO_3  VARCHAR2(40) --「請求摘要３」
	,SEIKYU_TEKIYO_4  VARCHAR2(150) --「請求摘要４」
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
	,CONSTRAINT ED3908T_PK PRIMARY KEY(
	 TAISHO_YM
	,  JUCHU_KEIYAKU_NO
	,  JUCHU_KEIYAKU_HENKO_NO
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED3908T_TBL IS '保険料計上額月次テーブル'
/

COMMENT ON COLUMN ED3908T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED3908T_TBL.TAISHO_YM IS '対象年月'
/
COMMENT ON COLUMN ED3908T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED3908T_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED3908T_TBL.KEIYAKUSAKI_TORIHIKISAKI_CD IS '契約先取引先コード'
/
COMMENT ON COLUMN ED3908T_TBL.GYOMU_TAISHOSAKI_CD IS '業務対象先コード'
/
COMMENT ON COLUMN ED3908T_TBL.SHOHIN_SERVICE_CD IS '商品サービスコード'
/
COMMENT ON COLUMN ED3908T_TBL.GS_HOKEN_KANYU_TYPE_CD IS 'ＧＳ保険加入タイプコード'
/
COMMENT ON COLUMN ED3908T_TBL.YUKA_MENSEKI IS '床面積'
/
COMMENT ON COLUMN ED3908T_TBL.SEIGYO_SOCHI_HIMMEI_CD IS '制御装置品名コード'
/
COMMENT ON COLUMN ED3908T_TBL.JUCHU_JIGYOSHO_CD IS '受注事業所コード'
/
COMMENT ON COLUMN ED3908T_TBL.JISSHI_JIGYOSHO_CD IS '実施事業所コード'
/
COMMENT ON COLUMN ED3908T_TBL.GYOMU_KAISHI_YMD IS '業務開始年月日'
/
COMMENT ON COLUMN ED3908T_TBL.RYOKIN_KAITEI_YMD IS '料金改定年月日'
/
COMMENT ON COLUMN ED3908T_TBL.KYUKEIYAKU_RYOKIN_AMT IS '旧契約料金金額'
/
COMMENT ON COLUMN ED3908T_TBL.SHINKEIYAKU_RYOKIN_AMT IS '新契約料金金額'
/
COMMENT ON COLUMN ED3908T_TBL.KEIYAKU_CHUDAN_YMD IS '契約中断年月日'
/
COMMENT ON COLUMN ED3908T_TBL.KEIYAKU_SAIKAI_YMD IS '契約再開年月日'
/
COMMENT ON COLUMN ED3908T_TBL.KAIYAKU_YMD IS '解約年月日'
/
COMMENT ON COLUMN ED3908T_TBL.HOKENRYO_AMT IS '保険料金額'
/
COMMENT ON COLUMN ED3908T_TBL.SEIKYU_TEKIYO_1 IS '請求摘要１'
/
COMMENT ON COLUMN ED3908T_TBL.SEIKYU_TEKIYO_2 IS '請求摘要２'
/
COMMENT ON COLUMN ED3908T_TBL.SEIKYU_TEKIYO_3 IS '請求摘要３'
/
COMMENT ON COLUMN ED3908T_TBL.SEIKYU_TEKIYO_4 IS '請求摘要４'
/
COMMENT ON COLUMN ED3908T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED3908T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED3908T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED3908T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED3908T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED3908T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED3908T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED3908T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED3908T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED3908T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED3908T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED3908T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/