# Evolve DB Migrations

This repo shows some ideas, how to use the evolve-db tool for managing changes in databases.

## Links

* https://evolve-db.netlify.app/
* https://evolve-db.netlify.app/concepts/
* https://evolve-db.netlify.app/getting-started/tool/

## Howtos

The `create-db` script is set up for MSSQL 2019 running on linux. I am using Ubuntu Server 20.04.

To create a new DB, use the `args-master.txt`. It cereates the `TestDB2` database. It modifies the `master` database,
so it creates migration table in it, showing that changes on the database server level can be then tracked too.

If you do not want to use database changes tracking in the `master` database, execute script(s) from the `sql-master`
directory manually.

Start with creating a new DB:

```
./evolve.exe info @args-master.txt
./evolve.exe migrate @args-master.txt
```

The TestDB2 database migrations are done by:

```
./evolve.exe info @args-TestDB2.txt
./evolve.exe migrate @args-TestDB2.txt
```
