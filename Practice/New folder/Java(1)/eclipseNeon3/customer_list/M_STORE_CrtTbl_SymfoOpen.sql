/* ---------------------------------------------------------------------- */
-- �e�[�u���쐬DDL(SymfowareOpen�p)
-- �t�@�C�����FM_STORE_CrtTbl_SymfoOpen.sql
-- �������FM_STORE
-- �_�����FStore Master
/* ---------------------------------------------------------------------- */

--/
--DROP TABLE M_STORE CASCADE CONSTRAINTS
--/
CREATE TABLE M_STORE (
	 STOREID  VARCHAR(5) NOT NULL --�uStore ID�v
	,STORENAME  VARCHAR(30) --�uStore Name�v
	,ADDRESS  VARCHAR(100) --�uAddress�v
	,PRIMARY KEY(
	 STOREID
	)
);


-- �e�[�u���̃R�����g�쐬
COMMENT ON TABLE M_STORE IS 'Store Master';


COMMENT ON COLUMN M_STORE.STOREID IS 'Store ID';

COMMENT ON COLUMN M_STORE.STORENAME IS 'Store Name';

COMMENT ON COLUMN M_STORE.ADDRESS IS 'Address';

