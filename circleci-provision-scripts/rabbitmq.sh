#!/bin/bash

function install_rabbitmq() {
    echo '>>> Installing RabbitMQ'

    apt-get install rabbitmq-server
    sudo service rabbitmq-server start
}

