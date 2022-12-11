CREATE DATABASE master_db;
-- CREATE ROLE master1 WITH CREATEDB PASSWORD  'master1';

CREATE EXTENSION IF NOT EXISTS btree_gist;
CREATE EXTENSION IF NOT EXISTS bdr;


SELECT bdr.bdr_group_create(
  local_node_name := 'master1',
  node_external_dsn := 'host=master1 port=5432 dbname=master_db password=postgres user=postgres'
);


