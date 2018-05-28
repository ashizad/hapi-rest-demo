-- Deploy spidertutorial:product-add-delivery to pg

BEGIN;

-- XXX Add DDLs here.
alter table products add delivery varchar(100) default 'PO BOX 2076';

COMMIT;
