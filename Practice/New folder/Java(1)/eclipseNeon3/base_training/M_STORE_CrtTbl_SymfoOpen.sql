/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(SymfowareOpen用)
-- ファイル名：M_STORE_CrtTbl_SymfoOpen.sql
-- 物理名：M_STORE
-- 論理名：Store Master
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE M_STORE CASCADE CONSTRAINTS
--/
CREATE TABLE M_STORE (
	 STOREID  VARCHAR(5) NOT NULL --「Store ID」
	,STORENAME  VARCHAR(30) --「Store Name」
	,ADDRESS  VARCHAR(100) --「Address」
	,PRIMARY KEY(
	 STOREID
	)
);


-- テーブルのコメント作成
COMMENT ON TABLE M_STORE IS 'Store Master';


COMMENT ON COLUMN M_STORE.STOREID IS 'Store ID';

COMMENT ON COLUMN M_STORE.STORENAME IS 'Store Name';

COMMENT ON COLUMN M_STORE.ADDRESS IS 'Address';

