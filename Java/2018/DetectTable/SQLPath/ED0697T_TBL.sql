﻿/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(ORACLE用)
-- ファイル名：ED0697T_TBL.sql
-- 物理名：ED0697T_TBL
-- 論理名：運用警送現送テーブル
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE ED0697T_TBL CASCADE CONSTRAINTS;
--/
ALTER SESSION SET NLS_LENGTH_SEMANTICS='CHAR';
CREATE TABLE ED0697T_TBL (
	 KAISHA_CD  CHAR(5) NOT NULL --「会社コード」
	,JUCHU_KEIYAKU_NO  CHAR(15) NOT NULL --「受注契約番号」
	,JUCHU_KEIYAKU_HENKO_NO  CHAR(6) NOT NULL --「受注契約変更番号」
	,UNYO_HENKO_RIREKI_NO  CHAR(10) NOT NULL --「運用変更履歴番号」
	,GENSOSHA_SHIYO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「現送車使用フラグ」
	,SHINKANSEN_SHIYO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「新幹線使用フラグ」
	,DENSHA_SHIYO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「電車使用フラグ」
	,SEMPAKU_SHIYO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「船舶使用フラグ」
	,KOKUKI_SHIYO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「航空機使用フラグ」
	,BUS_TAXI_SHIYO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「バスタクシー使用フラグ」
	,SONOTA_YUSO_SHUDAN_SHIYO_FLG  CHAR(1) DEFAULT '0' NOT NULL --「その他輸送手段使用フラグ」
	,SONOTA_YUSO_SHUDAN_NAIYO  VARCHAR2(30) --「その他輸送手段内容」
	,KEISO_KEIYAKU_YUSOHIN_JURYO_KG  NUMBER(9,0) DEFAULT '0' NOT NULL --「警送契約輸送品重量キログラム」
	,KEISO_KEIYAKU_YUSOHIN_SURYO  NUMBER(9,0) DEFAULT '0' NOT NULL --「警送契約輸送品数量」
	,KEIBIIN_SEIFUKU_KBN  CHAR(1) NOT NULL --「警備員制服区分」
	,SONOTA_KEIBIIN_SEIFUKU_NAIYO  VARCHAR2(30) --「その他警備員制服内容」
	,UKWTSH_DMPY_JMBSK_KBN  CHAR(1) NOT NULL --「受渡伝票準備先区分」
	,SNT_UKWTSH_DMPY_JMBSK_NAIYO  VARCHAR2(30) --「その他受渡伝票準備先内容」
	,KEISO_GENSO_YOKI_SHUBETSU_KBN  CHAR(1) NOT NULL --「警送現送容器種別区分」
	,CHINTAIHIN_KBN  CHAR(1) NOT NULL --「賃貸品区分」
	,SONOTA_CHINTAIHIN_NAIYO  VARCHAR2(30) --「その他賃貸品内容」
	,KEISO_GENSO_BIKO  VARCHAR2(100) --「警送現送備考」
	,KOKYAKU_SHITEN_CD  CHAR(12) --「顧客支店コード」
	,TAMMATSU_CD  CHAR(15) --「端末コード」
	,SHIHEI_RYOKIN_TYPE_CD  CHAR(3) --「警送紙幣料金タイプコード」
	,KOKA_RYOKIN_TYPE_CD  CHAR(3) --「警送硬貨料金タイプコード」
	,YOKAI_SHORI_ITAKU_KOJO_KBN  CHAR(2) --「溶解処理委託工場区分」
	,SHUKA_BASHO_KAISU  NUMBER(9,0) DEFAULT '0' NOT NULL --「集荷場所階数」
	,HANSOYO_DAISHA_SHIYO_KBN  CHAR(1) --「搬送用台車使用区分」
	,SHIYO_FUKA_FLG  CHAR(1) DEFAULT '0' NOT NULL --「使用不可フラグ」
	,GYOMU_KAISHI_YOTEI_YMD  DATE --「業務開始予定年月日」
	,GYOMU_KAISHI_YMD  DATE --「業務開始年月日」
	,ELEVATOR_SHIYO_KBN  CHAR(1) --「エレベーター使用区分」
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
	,CONSTRAINT ED0697T_PK PRIMARY KEY(
	 JUCHU_KEIYAKU_NO
	,  JUCHU_KEIYAKU_HENKO_NO
	,  KAISHA_CD
	,  UNYO_HENKO_RIREKI_NO
	)
)
/

-- テーブルのコメント作成
COMMENT ON TABLE ED0697T_TBL IS '運用警送現送テーブル'
/

COMMENT ON COLUMN ED0697T_TBL.KAISHA_CD IS '会社コード'
/
COMMENT ON COLUMN ED0697T_TBL.JUCHU_KEIYAKU_NO IS '受注契約番号'
/
COMMENT ON COLUMN ED0697T_TBL.JUCHU_KEIYAKU_HENKO_NO IS '受注契約変更番号'
/
COMMENT ON COLUMN ED0697T_TBL.UNYO_HENKO_RIREKI_NO IS '運用変更履歴番号'
/
COMMENT ON COLUMN ED0697T_TBL.GENSOSHA_SHIYO_FLG IS '現送車使用フラグ'
/
COMMENT ON COLUMN ED0697T_TBL.SHINKANSEN_SHIYO_FLG IS '新幹線使用フラグ'
/
COMMENT ON COLUMN ED0697T_TBL.DENSHA_SHIYO_FLG IS '電車使用フラグ'
/
COMMENT ON COLUMN ED0697T_TBL.SEMPAKU_SHIYO_FLG IS '船舶使用フラグ'
/
COMMENT ON COLUMN ED0697T_TBL.KOKUKI_SHIYO_FLG IS '航空機使用フラグ'
/
COMMENT ON COLUMN ED0697T_TBL.BUS_TAXI_SHIYO_FLG IS 'バスタクシー使用フラグ'
/
COMMENT ON COLUMN ED0697T_TBL.SONOTA_YUSO_SHUDAN_SHIYO_FLG IS 'その他輸送手段使用フラグ'
/
COMMENT ON COLUMN ED0697T_TBL.SONOTA_YUSO_SHUDAN_NAIYO IS 'その他輸送手段内容'
/
COMMENT ON COLUMN ED0697T_TBL.KEISO_KEIYAKU_YUSOHIN_JURYO_KG IS '警送契約輸送品重量キログラム'
/
COMMENT ON COLUMN ED0697T_TBL.KEISO_KEIYAKU_YUSOHIN_SURYO IS '警送契約輸送品数量'
/
COMMENT ON COLUMN ED0697T_TBL.KEIBIIN_SEIFUKU_KBN IS '警備員制服区分'
/
COMMENT ON COLUMN ED0697T_TBL.SONOTA_KEIBIIN_SEIFUKU_NAIYO IS 'その他警備員制服内容'
/
COMMENT ON COLUMN ED0697T_TBL.UKWTSH_DMPY_JMBSK_KBN IS '受渡伝票準備先区分'
/
COMMENT ON COLUMN ED0697T_TBL.SNT_UKWTSH_DMPY_JMBSK_NAIYO IS 'その他受渡伝票準備先内容'
/
COMMENT ON COLUMN ED0697T_TBL.KEISO_GENSO_YOKI_SHUBETSU_KBN IS '警送現送容器種別区分'
/
COMMENT ON COLUMN ED0697T_TBL.CHINTAIHIN_KBN IS '賃貸品区分'
/
COMMENT ON COLUMN ED0697T_TBL.SONOTA_CHINTAIHIN_NAIYO IS 'その他賃貸品内容'
/
COMMENT ON COLUMN ED0697T_TBL.KEISO_GENSO_BIKO IS '警送現送備考'
/
COMMENT ON COLUMN ED0697T_TBL.KOKYAKU_SHITEN_CD IS '顧客支店コード'
/
COMMENT ON COLUMN ED0697T_TBL.TAMMATSU_CD IS '端末コード'
/
COMMENT ON COLUMN ED0697T_TBL.SHIHEI_RYOKIN_TYPE_CD IS '警送紙幣料金タイプコード'
/
COMMENT ON COLUMN ED0697T_TBL.KOKA_RYOKIN_TYPE_CD IS '警送硬貨料金タイプコード'
/
COMMENT ON COLUMN ED0697T_TBL.YOKAI_SHORI_ITAKU_KOJO_KBN IS '溶解処理委託工場区分'
/
COMMENT ON COLUMN ED0697T_TBL.SHUKA_BASHO_KAISU IS '集荷場所階数'
/
COMMENT ON COLUMN ED0697T_TBL.HANSOYO_DAISHA_SHIYO_KBN IS '搬送用台車使用区分'
/
COMMENT ON COLUMN ED0697T_TBL.SHIYO_FUKA_FLG IS '使用不可フラグ'
/
COMMENT ON COLUMN ED0697T_TBL.GYOMU_KAISHI_YOTEI_YMD IS '業務開始予定年月日'
/
COMMENT ON COLUMN ED0697T_TBL.GYOMU_KAISHI_YMD IS '業務開始年月日'
/
COMMENT ON COLUMN ED0697T_TBL.ELEVATOR_SHIYO_KBN IS 'エレベーター使用区分'
/
COMMENT ON COLUMN ED0697T_TBL.REGST_TMSTMP IS '登録タイムスタンプ'
/
COMMENT ON COLUMN ED0697T_TBL.REGSTR_CO_CD IS '登録者会社コード'
/
COMMENT ON COLUMN ED0697T_TBL.REGSTR_SOSHIKI_CD IS '登録者組織コード'
/
COMMENT ON COLUMN ED0697T_TBL.REGSTR_EMP_NO IS '登録者社員番号'
/
COMMENT ON COLUMN ED0697T_TBL.REGST_GAMEN_ID IS '登録画面ＩＤ'
/
COMMENT ON COLUMN ED0697T_TBL.REGST_PGM_ID IS '登録プログラムＩＤ'
/
COMMENT ON COLUMN ED0697T_TBL.UPD_TMSTMP IS '更新タイムスタンプ'
/
COMMENT ON COLUMN ED0697T_TBL.UPDTR_CO_CD IS '更新者会社コード'
/
COMMENT ON COLUMN ED0697T_TBL.UPDTR_SOSHIKI_CD IS '更新者組織コード'
/
COMMENT ON COLUMN ED0697T_TBL.UPDTR_EMP_NO IS '更新者社員番号'
/
COMMENT ON COLUMN ED0697T_TBL.UPD_GAMEN_ID IS '更新画面ＩＤ'
/
COMMENT ON COLUMN ED0697T_TBL.UPD_PGM_ID IS '更新プログラムＩＤ'
/