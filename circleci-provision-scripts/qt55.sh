#!/bin/bash

function install_qt55() {
    echo '>>> Installing Qt 5.5'

    apt-add-repository -y ppa:beineri/opt-qt551-trusty
    apt-get update -y
    apt-get install -y qt55webkit libwebkit-dev libgstreamer0.10-dev
    echo 'export PATH=/opt/qt55/bin:$PATH' >> ${CIRCLECI_HOME}/.circlerc
    echo "/opt/qt55/bin/qt55-env.sh" >>  ${CIRCLECI_HOME}/.circlerc
}

