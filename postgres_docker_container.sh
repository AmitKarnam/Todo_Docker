#!/bin/bash

docker exec -t todo-postgres createdb -U postgres todo_db

docker exec -it todo-postgres psql -U postgres todo_db -c "CREATE TABLE todo ( id serial PRIMARY KEY, content varchar NOT NULL, completed integer NOT NULL DEFAULT 0, date_created date DEFAULT CURRENT_TIMESTAMP);"
