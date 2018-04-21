#!/bin/sh

notesapi=$(cat variables | awk '{print$3}' | awk 'NR == 5')
mysqlroot=$(cat variables | awk '{print$3}' | awk 'NR == 9')


sed -i "s|{note-api-pass}|$notesapi|g" docker-compose/node/server.js
sed -i "s|{note-api-pass}|$notesapi|g" docker-compose/mysql/Dockerfile
sed -i "s|{mysql-root-pass}|$mysqlroot|g" docker-compose/mysql/Dockerfile
