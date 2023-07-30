# Command for listing topic
kafka-topics.sh --bootstrap-server=localhost:9092 --list

# Command for creating topic 
kafka-topics.sh --create --topic dataeng --bootstrap-server localhost:9092 --partitions 3 --replication-factor 1
kafka-topics.sh --create --bootstrap-server localhost:9092 --topic test_topic

# Describe topics in details 
kafka-topics.sh --bootstrap-server=localhost:9092 --describe --topic dataeng

# Command for producer for publishing messages
kafka-console-producer.sh --topic dataeng --bootstrap-server localhost:9092
kafka-console-producer.sh --bootstrap-server localhost:9092 --topic test_topic --property "parse.key=true" --property "key.separator=:"

# Command for subscriber to recieve messages
kafka-console-consumer.sh --topic dataeng --from-beginning --bootstrap-server localhost:9092
kafka-console-consumer.sh --topic test_topic --from-beginning --bootstrap-server localhost:9092