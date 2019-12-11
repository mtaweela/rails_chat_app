build:
	docker-compose build
	docker-compose run web rake db:create
	docker-compose run web rake db:migrate
dev:
	docker-compose up
install:
	docker-compose run web bundle install
	docker-compose up --build
clear:
	docker-compose rm
	docker-compose down --rmi all