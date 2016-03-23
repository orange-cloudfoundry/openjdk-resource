#!/bin/sh

if [ $# -ne 2 ]
then
    echo "usage $0 <TEST_RESOURCE_DIR> <ASSETS_DIR>"
    exit 1
fi

TEST_RESOURCE_DIR=$1
ASSETS_DIR=$2


echo "Running check test"
for testFile in $(ls ${TEST_RESOURCE_DIR}/check-request-*.sample)
do
    echo "Running ${testFile}"
    ${ASSETS_DIR}/check <${testFile}
done