db_login:
	docker exec -it async_go_api-db-1 psql -U admin -d asyncapi

db_create_migration:
	migrate create -ext sql -dir db/migrations -seq $(name)

db_migrate:
	migrate -database $(DATABASE_URL) -path db/migrations up