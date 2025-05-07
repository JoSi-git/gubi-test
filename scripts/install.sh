#!/bin/bash
# create volume folders
mkdir ./scripts/Docker/moodle
mkdir ./scripts/Docker/moodledata
mkdir ./scripts/Docker/db_data


git clone -b MOODLE_403_STABLE https://github.com/moodle/moodle.git ./moodle

cd ./Docker
docker compose up -d

