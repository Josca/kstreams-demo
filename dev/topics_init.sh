#!/bin/bash

# create input topic
docker-compose exec kafka bin/kafka-topics.sh --create \
    --bootstrap-server kafka:9092 \
    --replication-factor 1 \
    --partitions 1 \
    --topic streams-plaintext-input

# create output topic
docker-compose exec kafka bin/kafka-topics.sh --create \
    --bootstrap-server kafka:9092 \
    --replication-factor 1 \
    --partitions 1 \
    --topic streams-wordcount-output \
    --config cleanup.policy=compact
