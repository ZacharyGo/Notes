/* ---------------------------------------------------------------------- */
-- �e�[�u���쐬DDL(SymfowareOpen�p)
-- �t�@�C�����FM_CUSTOMER_CrtTbl_SymfoOpen.sql
-- �������FM_CUSTOMER
-- �_�����FCustomer Master
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE M_CUSTOMER CASCADE CONSTRAINTS
--/
CREATE TABLE M_CUSTOMER (
	 CUSID  VARCHAR(5) NOT NULL --�uCustomerID�v
	,CUSNAME  VARCHAR(30) --�uCustomerName�v
	,AREA  VARCHAR(10) --�uArea�v
	,TELNO  VARCHAR(17) --�uTelephoneNo.�v
	,EMAIL  VARCHAR(50) --�uEmail Address�v
	,DELIVEREMAIL  NUMERIC(1,0) --�uEmail Delivery Request�v
	,BIRTHYMD  TIMESTAMP --�uBirthday�v
	,Sex  NUMERIC(1,0) --�uGender�v
	,JOB  VARCHAR(10) --�uJob�v
	,STOREID  VARCHAR(5) --�uStoreID�v
	,POINT  NUMERIC(7,0) --�uPoint�v
	,POINTRATE  NUMERIC(7,2) --�uPointRate�v
	,PRIMARY KEY(
		 CUSID
	)
);

-- �e�[�u���̃R�����g�쐬
COMMENT ON TABLE M_CUSTOMER IS 'Customer Master';


COMMENT ON COLUMN M_CUSTOMER.CUSID IS 'CustomerID';

COMMENT ON COLUMN M_CUSTOMER.CUSNAME IS 'CustomerName';

COMMENT ON COLUMN M_CUSTOMER.AREA IS 'Area';

COMMENT ON COLUMN M_CUSTOMER.TELNO IS 'TelephoneNo.';

COMMENT ON COLUMN M_CUSTOMER.EMAIL IS 'Email Address';

COMMENT ON COLUMN M_CUSTOMER.DELIVEREMAIL IS 'Email Delivery Request';

COMMENT ON COLUMN M_CUSTOMER.BIRTHYMD IS 'Birthday';

COMMENT ON COLUMN M_CUSTOMER.Sex IS 'Gender';

COMMENT ON COLUMN M_CUSTOMER.JOB IS 'Job';

COMMENT ON COLUMN M_CUSTOMER.STOREID IS 'StoreID';

COMMENT ON COLUMN M_CUSTOMER.POINT IS 'Point';

COMMENT ON COLUMN M_CUSTOMER.POINTRATE IS 'PointRate';

