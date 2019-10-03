#!/bin/bash

# write to input topic
docker-compose exec kafka bin/kafka-console-producer.sh --broker-list kafka:9092 --topic streams-plaintext-input
