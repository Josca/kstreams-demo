#!/bin/bash

docker-compose exec kafka bin/kafka-console-consumer.sh --bootstrap-server kafka:9092 \
    --topic streams-plaintext-input \
    --from-beginning \
    --formatter kafka.tools.DefaultMessageFormatter \
    --property print.key=false \
    --property print.value=true \
    --property value.deserializer=org.apache.kafka.common.serialization.StringDeserializer
