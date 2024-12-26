/* ---------------------------------------------------------------------- */
-- 外部キー制約作成DDL(SymfowareOpen用)
-- ファイル名：EntityId>_AddFK_SymfoOpen.sql
/* ---------------------------------------------------------------------- */


-- M_CUSTOMERテーブルの外部キー制約
ALTER TABLE M_CUSTOMER
ADD CONSTRAINT FK_CUSTOMER_MASTER_STORE_MASTER
FOREIGN KEY(
	 STOREID
)
REFERENCES M_STORE(
	 STOREID
);

