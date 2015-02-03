#!/bin/bash -v

TEST_APP_DIR=/tmp/selenium-chrome-test

if [ ! -d ${TEST_APP_DIR} ]; then
    git clone https://github.com/maosmurf/selenium-chrome-test ${TEST_APP_DIR}
fi

docker run \
    -v ${TEST_APP_DIR}:/selenium-chrome-test \
    -v ~/.m2:/root/.m2 \
    maosmurf/selenium-chrome \
    sh -l -c 'mvn verify --batch-mode -f /selenium-chrome-test/pom.xml -Dwebdriver.chrome.driver=/opt/chromedriver/chromedriver'
