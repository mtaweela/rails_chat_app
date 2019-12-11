# RAILS CHAT APP

## Getting started

### Prerequisites

To install the project, you need to have [docker](https://www.docker.com/) and docker-compose running on your machine.

also, you will need make on your device to be able to run make scripts.

### Installing

Once you have the previous mentioned tools, you could download the source code and go to the directory containing the source code and run

```bash
make build
make dev
```

in case you do not have make on your device, you will need to run the following commands in order:

```bash
# building commands
docker-compose build
docker-compose run web rake db:create
docker-compose run web rake db:migrate

# runing docker compose
docker-compose up
```

## API endpoints trial
to try the endpoints, you could import the postman collection from the following url:
[postman_collection](https://www.getpostman.com/collections/cbe578c1cd26e5e9a67d).

you could also find simple docs for the endpoints here: [chat app docs](https://documenter.getpostman.com/view/4447171/SWE83cCf?version=latest#1c43a2be-50c9-41ca-92de-cf279f0554fa).

## Built With

* [Ruby version: 2.5.7](https://www.ruby-lang.org/en/)
* [Ruby On Rails V5](https://rubyonrails.org/)

* [active model serializers](https://github.com/rails-api/active_model_serializers) - serializing output of APIs.
* [Elasticsearch](https://www.elastic.co/products/elasticsearch) - a distributed, RESTful search and analytics engine.
* [Searchkick](https://github.com/ankane/searchkick) - Intelligent search that works with Elasticsearch.

* [redis](https://redis.io/) - in-memory data structure store.
* [redis-locker](https://github.com/einzige/redis-locker) - fast and robust locking mechanism. Resolves race conditions and Builds queue of concurrent code blocks using Redis.
