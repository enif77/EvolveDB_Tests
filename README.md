# Evolveo DB Migrations

* https://evolve-db.netlify.app/
* https://evolve-db.netlify.app/getting-started/tool/

NOTE: The create-db script is set up for MSSQL 2019 running on linux.

NOTE2: To create a new DB, use the `args-new-db.txt`. It creates migration table in the `master` DB too!

Start with creating a new DB:

```
evolve.exe info @args-new-db.txt
evolve.exe migrate @args-new-db.txt
```

Further migrations are done by:

```
evolve.exe info @args.txt
evolve.exe migrate @args.txt
```
