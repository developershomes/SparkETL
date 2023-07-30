# Import KafkaConsumer from Kafka library
from kafka import KafkaConsumer

# Import sys module
import sys

# Define topic name from where the message will recieve
topicName = 'dataeng'

consumer = KafkaConsumer(
    topicName,
    bootstrap_servers=['10.22.159.1:9092'],
    auto_offset_reset = 'earliest',
    group_id=None,
    consumer_timeout_ms=10000,
    value_deserializer=lambda x: x.decode('utf-8')
)

print("Now trying to get messages from consumer")

# Read and print message from consumer
for msg in consumer:
    print("Topic Name=%s,Message=%s"%(msg.topic,msg.value))

# Terminate the script
sys.exit()