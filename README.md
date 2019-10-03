# Kafka Streams app demo
Project demonstrating how to run
[Kafka Streams demo app](https://kafka.apache.org/23/documentation/streams/quickstart).


## Build app
~~~bash
./gradlew build
~~~

## Usage
Run different parts in separate terminals:
- Terminal 1
  ~~~bash
  docker-compose up # run Kafka an Zookeeper servers
  ~~~
- Terminal 2
  ~~~bash
  dev/init_topics.sh # create input and output topics in Kafka
  dev/topic_input_write.sh # open prompt to write input messages
  # write e.g.: hi there
  ~~~
- Terminal 3
  ~~~bash
  java -jar build/libs/demo-*.jar # run kstreams app
  ~~~
- Terminal 4
  ~~~bash
  dev/topic_output_read.sh
  # Expected output:
  # hi 1
  # there 1
  ~~~
Feel free to write to terminal 2 and see processed output in terminal 4.
