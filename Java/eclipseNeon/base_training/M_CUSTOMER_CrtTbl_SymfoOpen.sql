/* ---------------------------------------------------------------------- */
-- テーブル作成DDL(SymfowareOpen用)
-- ファイル名：M_CUSTOMER_CrtTbl_SymfoOpen.sql
-- 物理名：M_CUSTOMER
-- 論理名：Customer Master
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE M_CUSTOMER CASCADE CONSTRAINTS
--/
CREATE TABLE M_CUSTOMER (
	 CUSID  VARCHAR(5) NOT NULL --「CustomerID」
	,CUSNAME  VARCHAR(30) --「CustomerName」
	,AREA  VARCHAR(10) --「Area」
	,TELNO  VARCHAR(17) --「TelephoneNumber」
	,EMAIL  VARCHAR(50) --「Email Address」
	,DELIVEREMAIL  NUMERIC(1,0) --「Email Delivery Request」
	,BIRTHYMD  TIMESTAMP --「Birthday」
	,SEX  NUMERIC(1,0) --「Gender」
	,JOB  VARCHAR(10) --「Job」
	,STOREID  VARCHAR(5) --「StoreID」
	,POINT  NUMERIC(7,0) --「POINT」
	,POINTRATE  NUMERIC(6,2) NOT NULL --「POINTRate」
	,PRIMARY KEY(
		 CUSID
	)
);

-- テーブルのコメント作成
COMMENT ON TABLE M_CUSTOMER IS 'Customer Master';


COMMENT ON COLUMN M_CUSTOMER.CUSID IS 'CustomerID';

COMMENT ON COLUMN M_CUSTOMER.CUSNAME IS 'CustomerName';

COMMENT ON COLUMN M_CUSTOMER.AREA IS 'Area';

COMMENT ON COLUMN M_CUSTOMER.TELNO IS 'TelephoneNumber';

COMMENT ON COLUMN M_CUSTOMER.EMAIL IS 'Email Address';

COMMENT ON COLUMN M_CUSTOMER.DELIVEREMAIL IS 'Email Delivery Request';

COMMENT ON COLUMN M_CUSTOMER.BIRTHYMD IS 'Birthday';

COMMENT ON COLUMN M_CUSTOMER.SEX IS 'Gender';

COMMENT ON COLUMN M_CUSTOMER.JOB IS 'Job';

COMMENT ON COLUMN M_CUSTOMER.STOREID IS 'StoreID';

COMMENT ON COLUMN M_CUSTOMER.POINT IS 'POINT';

COMMENT ON COLUMN M_CUSTOMER.POINTRATE IS 'POINTRate';

