#!/bin/bash

# show topics
docker-compose exec kafka bin/kafka-topics.sh --bootstrap-server kafka:9092 --describe
