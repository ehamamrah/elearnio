image:
	docker compose build

services:
	docker compose up --force-recreate

services-d:
	docker compose up -d --force-recreate

services-down:
	docker compose down

create-db:
	docker exec -it web rails db:create

migrate-db:
	docker exec -it web rails db:migrate

bundle:
	docker exec -it web bundle install

seed:
	docker exec -it web rails db:seed