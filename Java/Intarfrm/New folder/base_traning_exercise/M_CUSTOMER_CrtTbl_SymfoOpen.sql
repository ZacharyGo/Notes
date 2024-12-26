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
	 CUSID  VARCHAR(5) NOT NULL --「Customer ID」
	,CUSNAME  VARCHAR(30) --「Customer Name」
	,AREA  VARCHAR(10) --「Area」
	,TELNO  VARCHAR(17) --「Telephone No」
	,EMAIL  VARCHAR(50) --「Email Address」
	,EMAILDELIVERYREQUEST  NUMERIC(1,0) --「Email Delivery Request」
	,BIRTHYMD  TIMESTAMP --「Birthday」
	,SEX  NUMERIC(1,0) --「Gender」
	,JOB  VARCHAR(10) --「Job」
	,STOREID  VARCHAR(5) --「Store ID」
	,POINT  NUMERIC(7,0) --「Point」
	,POINTRATE  NUMERIC(6,2) --「Point Rate」
	,PRIMARY KEY(
		 CUSID
	)
);

-- テーブルのコメント作成
COMMENT ON TABLE M_CUSTOMER IS 'Customer Master';


COMMENT ON COLUMN M_CUSTOMER.CUSID IS 'Customer ID';

COMMENT ON COLUMN M_CUSTOMER.CUSNAME IS 'Customer Name';

COMMENT ON COLUMN M_CUSTOMER.AREA IS 'Area';

COMMENT ON COLUMN M_CUSTOMER.TELNO IS 'Telephone No';

COMMENT ON COLUMN M_CUSTOMER.EMAIL IS 'Email Address';

COMMENT ON COLUMN M_CUSTOMER.EMAILDELIVERYREQUEST IS 'Email Delivery Request';

COMMENT ON COLUMN M_CUSTOMER.BIRTHYMD IS 'Birthday';

COMMENT ON COLUMN M_CUSTOMER.SEX IS 'Gender';

COMMENT ON COLUMN M_CUSTOMER.JOB IS 'Job';

COMMENT ON COLUMN M_CUSTOMER.STOREID IS 'Store ID';

COMMENT ON COLUMN M_CUSTOMER.POINT IS 'Point';

COMMENT ON COLUMN M_CUSTOMER.POINTRATE IS 'Point Rate';

