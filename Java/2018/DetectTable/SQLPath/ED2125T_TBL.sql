﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED2125T_TBL.sql
-- 物理名：ED2125T_TBL
-- 論理名：棚卸テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED2125T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED2125T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,EIGYO_KANRI_YM  CHAR(6) NOT NULL --「営業管理年月」
	,SHIZAI_SOBI_KBN  CHAR(1) NOT NULL --「資材装備区分」
	,CHOZOHIN_SHUKAN_JIGYOSHO_CD  CHAR(6) NOT NULL --「貯蔵品主管事業所コード」
	,CHOZOHIN_SHUKAN_SOKO_CD  CHAR(6) NOT NULL --「貯蔵品主管倉庫コード」
	,HIMMEI_CD  CHAR(8) NOT NULL --「品名コード」
	,SHIMPIN_KBN  CHAR(1) NOT NULL --「新品区分」
	,SHOKAI_CHOBO_ZAIKO_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「初回帳簿在庫数量」
	,SHOKAI_TANAOROSHI_ZAIKO_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「初回棚卸在庫数量」
	,SHOKAI_SHOGO_KEKKA_ITCHI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「初回照合結果一致フラグ」
	,SAISHU_CHOBO_ZAIKO_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「最終帳簿在庫数量」
	,SAISHU_TANAOROSHI_ZAIKO_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「最終棚卸在庫数量」
	,JIGETSU_KAKUTEI_NYUKO_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「次月確定入庫数量」
	,JIGETSU_KAKUTEI_SHUKKO_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「次月確定出庫数量」
	,SAISHU_SHOGO_KEKKA_ITCHI_FLG  CHAR(1) DEFAULT '0' NOT NULL --「最終照合結果一致フラグ」
	,TANASA_GENIN_RIYU_NAIYO  VARCHAR2(300) --「棚差原因理由内容」
	,SHOCHI_NAIYO  VARCHAR2(100) --「処置内容」
	,TANAOROSHI_JISSHI_KAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「棚卸実施回数」
	,SHINSEI_SHONIN_NO  CHAR(14) --「申請承認番号」
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
	,CONSTRAINT ED2125T_PK PRIMARY KEY(
	 HIMMEI_CD
	,  CHOZOHIN_SHUKAN_JIGYOSHO_CD
	,  CHOZOHIN_SHUKAN_SOKO_CD
	,  KAISHA_CD
	,  EIGYO_KANRI_YM
	,  SHIMPIN_KBN
	,  SHIZAI_SOBI_KBN
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED2125T_TBL IS '棚卸テーブル'
/

COMMENT ON COLUMN ED2125T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED2125T_TBL.EIGYO_KANRI_YM IS '営業管理年月'
/
COMMENT ON COLUMN ED2125T_TBL.SHIZAI_SOBI_KBN IS '資材装備区分'
/
COMMENT ON COLUMN ED2125T_TBL.CHOZOHIN_SHUKAN_JIGYOSHO_CD IS '貯蔵品主管事業所コード'
/
COMMENT ON COLUMN ED2125T_TBL.CHOZOHIN_SHUKAN_SOKO_CD IS '貯蔵品主管倉庫コード'
/
COMMENT ON COLUMN ED2125T_TBL.HIMMEI_CD IS '品名コード'
/
COMMENT ON COLUMN ED2125T_TBL.SHIMPIN_KBN IS '新品区分'
/
COMMENT ON COLUMN ED2125T_TBL.SHOKAI_CHOBO_ZAIKO_SURYO IS '初回帳簿在庫数量'
/
COMMENT ON COLUMN ED2125T_TBL.SHOKAI_TANAOROSHI_ZAIKO_SURYO IS '初回棚卸在庫数量'
/
COMMENT ON COLUMN ED2125T_TBL.SHOKAI_SHOGO_KEKKA_ITCHI_FLG IS '初回照合結果一致フラグ'
/
COMMENT ON COLUMN ED2125T_TBL.SAISHU_CHOBO_ZAIKO_SURYO IS '最終帳簿在庫数量'
/
COMMENT ON COLUMN ED2125T_TBL.SAISHU_TANAOROSHI_ZAIKO_SURYO IS '最終棚卸在庫数量'
/
COMMENT ON COLUMN ED2125T_TBL.JIGETSU_KAKUTEI_NYUKO_SURYO IS '次月確定入庫数量'
/
COMMENT ON COLUMN ED2125T_TBL.JIGETSU_KAKUTEI_SHUKKO_SURYO IS '次月確定出庫数量'
/
COMMENT ON COLUMN ED2125T_TBL.SAISHU_SHOGO_KEKKA_ITCHI_FLG IS '最終照合結果一致フラグ'
/
COMMENT ON COLUMN ED2125T_TBL.TANASA_GENIN_RIYU_NAIYO IS '棚差原因理由内容'
/
COMMENT ON COLUMN ED2125T_TBL.SHOCHI_NAIYO IS '処置内容'
/
COMMENT ON COLUMN ED2125T_TBL.TANAOROSHI_JISSHI_KAISU IS '棚卸実施回数'
/
COMMENT ON COLUMN ED2125T_TBL.SHINSEI_SHONIN_NO IS '申請承認番号'
/
COMMENT ON COLUMN ED2125T_TBL.SHGI_TRKSH_SHGI_RYSH_NO IS '社外登録者社外利用者番号'
/
COMMENT ON COLUMN ED2125T_TBL.SHGI_KSHNSH_SHGI_RYSH_NO IS '社外更新者社外利用者番号'
/
COMMENT ON COLUMN ED2125T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED2125T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED2125T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED2125T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED2125T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED2125T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED2125T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED2125T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED2125T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED2125T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED2125T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED2125T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/
