#!/bin/bash

java -javaagent:./prometheus/jmx_prometheus_javaagent-0.12.0.jar=8080:./prometheus/jmx_prometheus_export.yml \
     -jar build/libs/demo-*.jar
