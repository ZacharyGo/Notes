﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED1555T_TBL.sql
-- 物理名：ED1555T_TBL
-- 論理名：納品伝票テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED1555T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED1555T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,NOHIN_DEMPYO_NO  CHAR(17) NOT NULL --「納品伝票番号」
	,NOHIN_DEMPYO_MEISAI_SN  CHAR(14) NOT NULL --「納品伝票明細連番」
	,BUNNO_KAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「分納回数」
	,NOHIN_YMD  DATE --「納品年月日」
	,JIGYOSHO_CD  CHAR(6) --「事業所コード」
	,SHIZAI_SOBI_KBN  CHAR(1) --「資材装備区分」
	,NOHINSAKI_KBN  CHAR(1) --「納品先区分」
	,NOHINSAKI_TORIHIKISAKI_CD  CHAR(9) --「納品先取引先コード」
	,NHNSK_TRHKSK_BSH_CD  CHAR(4) --「納品先取引先部署コード」
	,KEIYAKUSAKI_TORIHIKISAKI_CD  CHAR(9) --「契約先取引先コード」
	,KIYKSK_TRHKSK_BSH_CD  CHAR(4) --「契約先取引先部署コード」
	,TAISHOSAKI_CD  CHAR(9) --「対象先コード」
	,SHIIRESAKI_TORIHIKISAKI_CD  CHAR(9) --「仕入先取引先コード」
	,SHIRSK_TRHKSK_BSH_CD  CHAR(4) --「仕入先取引先部署コード」
	,HIMMEI_CD  CHAR(8) --「品名コード」
	,SOKO_CD  CHAR(6) --「倉庫コード」
	,SHIMPIN_KBN  CHAR(1) --「新品区分」
	,NOHIN_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「納品数量」
	,NOHIN_TANKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「納品単価金額」
	,NOHIN_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「納品金額」
	,SHOHIZEIGYO_SHIKIBETSU_FLG  CHAR(1) DEFAULT '0' NOT NULL --「消費税行識別フラグ」
	,SHOHIZEI_RITSU  NUMBER(7,3) DEFAULT '0' NOT NULL --「消費税率」
	,NOHIN_DEMPYO_SHOHIZEI_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「納品伝票消費税金額」
	,SHIWAKE_PATTERN_HOJO_CD  CHAR(6) --「仕訳パターン補助コード」
	,KENKARI_ID  CHAR(12) --「建仮ＩＤ」
	,SHIWAKE_SAKUSEI_KBN  CHAR(1) --「仕訳作成区分」
	,DEMPYO_JOTAI_KBN  CHAR(1) DEFAULT '0' NOT NULL --「伝票状態区分」
	,NOHIN_JOTAI_KBN  CHAR(1) NOT NULL --「納品状態区分」
	,HATCHUSAKI_KBN  CHAR(1) NOT NULL --「発注先区分」
	,CHOTATSU_DEMPYO_SAKUSEI_KBN  CHAR(1) NOT NULL --「調達伝票作成区分」
	,NOHIMBI_NYURYOKUZUMI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「納品日入力済フラグ」
	,JUCHU_KEIYAKU_NO  CHAR(15) --「受注契約番号」
	,JUCHU_KEIYAKU_MEISAI_SN  CHAR(14) --「受注契約明細連番」
	,CHUMON_NO  CHAR(17) --「注文番号」
	,CHUMON_DEMPYO_MEISAI_SN  CHAR(14) --「注文伝票明細連番」
	,JUHATCHU_NO  CHAR(10) --「受発注番号」
	,JUHATCHU_MEISAI_SN  NUMBER(3,0) --「受発注明細連番」
	,SHUKKA_DEMPYO_NO  CHAR(17) --「出荷伝票番号」
	,SHUKKA_DEMPYO_MEISAI_SN  CHAR(14) --「出荷伝票明細連番」
	,SHIHARAI_SHINSEI_NO  CHAR(12) --「支払申請番号」
	,CHOTATSU_SHIHARAI_SHINSEI_NO  CHAR(12) --「調達支払申請番号」
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
	,CONSTRAINT ED1555T_PK PRIMARY KEY(
	 NOHIN_DEMPYO_NO
	,  NOHIN_DEMPYO_MEISAI_SN
	,  BUNNO_KAISU
	,  KAISHA_CD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED1555T_TBL IS '納品伝票テーブル'
/

COMMENT ON COLUMN ED1555T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED1555T_TBL.NOHIN_DEMPYO_NO IS '納品伝票番号'
/
COMMENT ON COLUMN ED1555T_TBL.NOHIN_DEMPYO_MEISAI_SN IS '納品伝票明細連番'
/
COMMENT ON COLUMN ED1555T_TBL.BUNNO_KAISU IS '分納回数'
/
COMMENT ON COLUMN ED1555T_TBL.NOHIN_YMD IS '納品年月日'
/
COMMENT ON COLUMN ED1555T_TBL.JIGYOSHO_CD IS '事業所コード'
/
COMMENT ON COLUMN ED1555T_TBL.SHIZAI_SOBI_KBN IS '資材装備区分'
/
COMMENT ON COLUMN ED1555T_TBL.NOHINSAKI_KBN IS '納品先区分'
/
COMMENT ON COLUMN ED1555T_TBL.NOHINSAKI_TORIHIKISAKI_CD IS '納品先取引先コード'
/
COMMENT ON COLUMN ED1555T_TBL.NHNSK_TRHKSK_BSH_CD IS '納品先取引先部署コード'
/
COMMENT ON COLUMN ED1555T_TBL.KEIYAKUSAKI_TORIHIKISAKI_CD IS '契約先取引先コード'
/
COMMENT ON COLUMN ED1555T_TBL.KIYKSK_TRHKSK_BSH_CD IS '契約先取引先部署コード'
/
COMMENT ON COLUMN ED1555T_TBL.TAISHOSAKI_CD IS '対象先コード'
/
COMMENT ON COLUMN ED1555T_TBL.SHIIRESAKI_TORIHIKISAKI_CD IS '仕入先取引先コード'
/
COMMENT ON COLUMN ED1555T_TBL.SHIRSK_TRHKSK_BSH_CD IS '仕入先取引先部署コード'
/
COMMENT ON COLUMN ED1555T_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED1555T_TBL.SOKO_CD IS '倉庫コード'
/
COMMENT ON COLUMN ED1555T_TBL.SHIMPIN_KBN IS '新品区分'
/
COMMENT ON COLUMN ED1555T_TBL.NOHIN_SURYO IS '納品数量'
/
COMMENT ON COLUMN ED1555T_TBL.NOHIN_TANKA_AMT IS '納品単価金額'
/
COMMENT ON COLUMN ED1555T_TBL.NOHIN_AMT IS '納品金額'
/
COMMENT ON COLUMN ED1555T_TBL.SHOHIZEIGYO_SHIKIBETSU_FLG IS '消費税行識別フラグ'
/
COMMENT ON COLUMN ED1555T_TBL.SHOHIZEI_RITSU IS '消費税率'
/
COMMENT ON COLUMN ED1555T_TBL.NOHIN_DEMPYO_SHOHIZEI_AMT IS '納品伝票消費税金額'
/
COMMENT ON COLUMN ED1555T_TBL.SHIWAKE_PATTERN_HOJO_CD IS '仕訳パターン補助コード'
/
COMMENT ON COLUMN ED1555T_TBL.KENKARI_ID IS '建仮ＩＤ'
/
COMMENT ON COLUMN ED1555T_TBL.SHIWAKE_SAKUSEI_KBN IS '仕訳作成区分'
/
COMMENT ON COLUMN ED1555T_TBL.DEMPYO_JOTAI_KBN IS '伝票状態区分'
/
COMMENT ON COLUMN ED1555T_TBL.NOHIN_JOTAI_KBN IS '納品状態区分'
/
COMMENT ON COLUMN ED1555T_TBL.HATCHUSAKI_KBN IS '発注先区分'
/
COMMENT ON COLUMN ED1555T_TBL.CHOTATSU_DEMPYO_SAKUSEI_KBN IS '調達伝票作成区分'
/
COMMENT ON COLUMN ED1555T_TBL.NOHIMBI_NYURYOKUZUMI_FLG IS '納品日入力済フラグ'
/
COMMENT ON COLUMN ED1555T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED1555T_TBL.JUCHU_KEIYAKU_MEISAI_SN IS '受注契約明細連番'
/
COMMENT ON COLUMN ED1555T_TBL.CHUMON_NO IS '注文番号'
/
COMMENT ON COLUMN ED1555T_TBL.CHUMON_DEMPYO_MEISAI_SN IS '注文伝票明細連番'
/
COMMENT ON COLUMN ED1555T_TBL.JUHATCHU_NO IS '受発注番号'
/
COMMENT ON COLUMN ED1555T_TBL.JUHATCHU_MEISAI_SN IS '受発注明細連番'
/
COMMENT ON COLUMN ED1555T_TBL.SHUKKA_DEMPYO_NO IS '出荷伝票番号'
/
COMMENT ON COLUMN ED1555T_TBL.SHUKKA_DEMPYO_MEISAI_SN IS '出荷伝票明細連番'
/
COMMENT ON COLUMN ED1555T_TBL.SHIHARAI_SHINSEI_NO IS '支払申請番号'
/
COMMENT ON COLUMN ED1555T_TBL.CHOTATSU_SHIHARAI_SHINSEI_NO IS '調達支払申請番号'
/
COMMENT ON COLUMN ED1555T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED1555T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED1555T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED1555T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED1555T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED1555T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED1555T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED1555T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED1555T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED1555T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED1555T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED1555T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED1555T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED1555T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
