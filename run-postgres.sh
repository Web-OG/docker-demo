#!/bin/bash

# 1. Запуск контейнера PostgreSQL
docker run --name pg -e POSTGRES_PASSWORD=pass -v /home/vasa/data:/data/pg -d postgres

# 2. Остановить и удалить контейнер
docker stop pg
docker rm pg

# 3. Посмотреть содержимое каталога
ls /home/vasa/data

# 4. Перенести каталог
mv /home/vasa/data /home/vasa/newdir/data

# 5. Снова запустить контейнер с новым путем
docker run --name pg -e POSTGRES_PASSWORD=pass -v /home/vasa/newdir/data:/data/pg -d postgres
