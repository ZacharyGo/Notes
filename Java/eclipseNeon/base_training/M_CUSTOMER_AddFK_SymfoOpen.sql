/* ---------------------------------------------------------------------- */
-- �O���L�[����쐬DDL(SymfowareOpen�p)
-- �t�@�C�����FEntityId>_AddFK_SymfoOpen.sql
/* ---------------------------------------------------------------------- */


-- M_CUSTOMER�e�[�u���̊O���L�[����
ALTER TABLE M_CUSTOMER
ADD CONSTRAINT FK_CUSTOMER_MASTER_STORE_MASTER
FOREIGN KEY(
	 STOREID
)
REFERENCES M_STORE(
	 STOREID
);

