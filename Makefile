postgres:
	sudo docker run --name postgresdb -p 5435:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres

createdb:
	sudo docker exec -it postgresdb createdb --username=root --owner=root simple_bank

dropdb:
	sudo docker exec -it postgresdb dropdb simple_bank

.PHONY: postgres createdb dropdb