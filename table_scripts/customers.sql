-- Table: customers

-- DROP TABLE customers;

CREATE TABLE customers
(
  customer_id integer,
  date_created character varying(20),
  account_num character varying(20),
  priority integer,
  manager_acc character varying(20),
  request_number character varying(20),
  call_type text,
  final_code text,
  state text
)
WITH (
  OIDS=FALSE
)
DISTRIBUTED BY (customer_id);
ALTER TABLE customers
  OWNER TO gpadmin;