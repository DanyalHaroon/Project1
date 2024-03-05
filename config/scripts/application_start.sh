#!/bin/bash

docker run -d -p 3306:3306  --name my_mysql_container125 -e MYSQL_ROOT_PASSWORD=danyal123 --network=go_net mysql:latest
docker run -d -p 4040:4040  --name appcontainer_goapp --network=go_net --env-file .env danyalharoon/project1_danyal_goapp:v1.0
