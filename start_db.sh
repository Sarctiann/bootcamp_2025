#!/bin/bash

docker-compose down
docker container rm postgres_container pgadmin_container -f

if [ -f .env ]; then
  export $(cat .env | xargs)
fi

docker-compose up --build -d

lazydocker
