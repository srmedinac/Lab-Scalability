docker-compose build
docker-compose run --rm contapp rails db:create
docker-compose run --rm contapp rails db:migrate
docker-compose up
