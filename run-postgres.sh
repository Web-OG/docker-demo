#!/bin/bash
docker run --name pg -e POSTGRES_PASSWORD=pass -v "$1":/data/pg -d postgres
