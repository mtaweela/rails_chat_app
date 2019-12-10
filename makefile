build:
	docker-compose build
dev:
	docker-compose up -d
install:
	docker-compose run web bundle install
	docker-compose up --build