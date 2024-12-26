﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED4251M_TBL.sql
-- 物理名：ED4251M_TBL
-- 論理名：基礎工事複合単価マスタ
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED4251M_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED4251M_TBL (
	 KOJI_TAISHO_CHIKU_KBN  CHAR(1) NOT NULL --「工事対象地区区分」
	,KISOKOJI_NAIYO_SN  CHAR(14) NOT NULL --「基礎工事内容連番」
	,KISO_KOJI_NAIYO_NM  VARCHAR2(30) --「基礎工事内容名称」
	,KISOKOJI_SEKO_SN  CHAR(14) NOT NULL --「基礎工事施工連番」
	,KISO_KOJI_SEKO_NM  VARCHAR2(30) --「基礎工事施工名称」
	,KISOKOJI_MENSEKI_SN  CHAR(14) NOT NULL --「基礎工事面積連番」
	,KISO_KOJI_MENSEKI_HANI_NM  VARCHAR2(30) --「基礎工事面積範囲名称」
	,KISO_KOJI_FUKUGO_TANKA_AMT  NUMBER(13,0) DEFAULT '0' NOT NULL --「基礎工事複合単価金額」
	,TEKIYO_KAISHI_YMD  DATE NOT NULL --「適用開始年月日」
	,TEKIYO_SHURYO_YMD  DATE NOT NULL --「適用終了年月日」
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
	,CONSTRAINT ED4251M_PK PRIMARY KEY(
	 KOJI_TAISHO_CHIKU_KBN
	,  KISOKOJI_NAIYO_SN
	,  KISOKOJI_SEKO_SN
	,  KISOKOJI_MENSEKI_SN
	,  TEKIYO_KAISHI_YMD
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED4251M_TBL IS '基礎工事複合単価マスタ'
/

COMMENT ON COLUMN ED4251M_TBL.KOJI_TAISHO_CHIKU_KBN IS '工事対象地区区分'
/
COMMENT ON COLUMN ED4251M_TBL.KISOKOJI_NAIYO_SN IS '基礎工事内容連番'
/
COMMENT ON COLUMN ED4251M_TBL.KISO_KOJI_NAIYO_NM IS '基礎工事内容名称'
/
COMMENT ON COLUMN ED4251M_TBL.KISOKOJI_SEKO_SN IS '基礎工事施工連番'
/
COMMENT ON COLUMN ED4251M_TBL.KISO_KOJI_SEKO_NM IS '基礎工事施工名称'
/
COMMENT ON COLUMN ED4251M_TBL.KISOKOJI_MENSEKI_SN IS '基礎工事面積連番'
/
COMMENT ON COLUMN ED4251M_TBL.KISO_KOJI_MENSEKI_HANI_NM IS '基礎工事面積範囲名称'
/
COMMENT ON COLUMN ED4251M_TBL.KISO_KOJI_FUKUGO_TANKA_AMT IS '基礎工事複合単価金額'
/
COMMENT ON COLUMN ED4251M_TBL.TEKIYO_KAISHI_YMD IS '適用開始年月日'
/
COMMENT ON COLUMN ED4251M_TBL.TEKIYO_SHURYO_YMD IS '適用終了年月日'
/
COMMENT ON COLUMN ED4251M_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED4251M_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED4251M_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED4251M_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED4251M_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED4251M_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED4251M_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED4251M_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED4251M_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED4251M_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED4251M_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED4251M_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/