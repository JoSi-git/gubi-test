#!/bin/bash

git clone -b MOODLE_403_STABLE https://github.com/moodle/moodle.git ./moodle

cd ./Docker
docker compose up -d
