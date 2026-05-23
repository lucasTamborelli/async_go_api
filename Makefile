db_login:
	docker exec -it async-go-api-db-1 psql -U admin -d asyncapi

db_create_migration:
	migrate create -ext sql -dir db/migrations -seq create_users_table