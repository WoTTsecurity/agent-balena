import os

from AWSIoTPythonSDK.MQTTLib import AWSIoTMQTTClient
from time import sleep
from random import randint


"""
Sample code from:
https://github.com/aws/aws-iot-device-sdk-python
"""

# Read settings from environment variables
AWS_HOST = os.getenv("AWS_HOST")
AWS_PORT = int(os.getenv("AWS_PORT"))
AWS_CLIENT_ID = os.getenv("AWS_CLIENT_ID")
CA_PATH = os.getenv("CA_PATH")
CERT_PATH = os.getenv("CERT_PATH")
KEY_PATH = os.getenv("KEY_PATH")
MQTT_TOPIC = os.getenv("MQTT_TOPIC", "MyTopic")


myMQTTClient = AWSIoTMQTTClient(AWS_CLIENT_ID)
myMQTTClient.configureEndpoint(AWS_HOST, 8883)
myMQTTClient.configureCredentials(
    CA_PATH,
    KEY_PATH,
    CERT_PATH
)

# Infinite offline Publish queueing
myMQTTClient.configureOfflinePublishQueueing(-1)

# Draining: 2 Hz
myMQTTClient.configureDrainingFrequency(2)

# 10 sec
myMQTTClient.configureConnectDisconnectTimeout(10)

# 5 sec
myMQTTClient.configureMQTTOperationTimeout(5)

myMQTTClient.connect()

for r in range(0, 20):
    myMQTTClient.publish(MQTT_TOPIC, randint(0, 100), 0)
    sleep(10)

myMQTTClient.disconnect()
