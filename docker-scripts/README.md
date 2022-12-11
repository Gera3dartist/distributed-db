to shell into postgres node:
`dcc run -it master1 psql -h master1 -d master_db -U postgres`

to shell into master2 node:
`dcc run -it master2 psql -h master2 -d master_db -U postgres`

bdr referrence:
`https://blog.armstrongconsulting.com/postgres-bdr-docker-shared-nothing-database-made-easy/`

partitioning reference:
`https://www.postgresql.org/docs/9.4/ddl-partitioning.html`

trigger function on update
`https://www.postgresql.org/docs/current/plpgsql-trigger.html`
