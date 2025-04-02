## Adventure Works Database designed to work with Postgres and included PG Admin client.


## Setting up Docker containers

Before composing containers edit **.env** file and put your informations. Ports can be changed in **docker-compose.yml**

`docker compose up`

After sucessfull compose go to:

`localhost:<PGADMIN_LISTEN_PORT>`

Login with credentials from **.env**

Register new Serwer in PG admin, provide below information in **Connection** tab:

Host name/adress: postgres
Port: <port for postgres service>
Username postgres
Password: examplepassword

And click **Save**

You just set up your database, play around with it and try queries from **example_queries.sql** file.



Conversion of Adventure Works database to Postgres was done by @lorint, link to original repo:

https://github.com/lorint/AdventureWorks-for-Postgres
