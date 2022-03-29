# simple-bank-BS

(Simple Bank Backend System)

## Resources used:

[dbdiagram.io](https://dbdiagram.io/home)

[hub.docker.com](https://hub.docker.com/)

[tableplus.com](https://tableplus.com/)

## Notes:

1. To check ports in use on linux:

```
$ sudo lsof -i -P -n | grep LISTEN
```

2. To create db migrations:

```
migrate create -ext sql -dir db/migration -seq init_schema
```

3. To migrate db:

```
migrate -path db/migration -database "postgresql://root:secret@localhost:5435/simple_bank?sslmode=disable" -verbose up
```
