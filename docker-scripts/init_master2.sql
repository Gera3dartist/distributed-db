CREATE DATABASE master_db;
-- CREATE ROLE master1 WITH CREATEDB PASSWORD  'master1';

CREATE EXTENSION IF NOT EXISTS btree_gist;
CREATE EXTENSION IF NOT EXISTS bdr;


SELECT bdr.bdr_group_join(
  local_node_name := 'master2',
  node_external_dsn := 'host=master2 port=5432 dbname=master_db password=postgres user=postgres',
  join_using_dsn := 'host=master1 port=5432 dbname=master_db password=postgres user=postgres'
);

