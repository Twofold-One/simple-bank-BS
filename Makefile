postgres:
	sudo docker run --name postgresdb -p 5435:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres

createdb:
	sudo docker exec -it postgresdb createdb --username=root --owner=root simple_bank

dropdb:
	sudo docker exec -it postgresdb dropdb simple_bank

migrateup:
	migrate -path db/migration -database "postgresql://root:secret@localhost:5435/simple_bank?sslmode=disable" -verbose up

migratedown:
	migrate -path db/migration -database "postgresql://root:secret@localhost:5435/simple_bank?sslmode=disable" -verbose down

sqlc:
	sqlc generate

test:
	go test -v -cover ./...

.PHONY: postgres createdb dropdb migrateup migratedown sqlc test