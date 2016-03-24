#!/bin/sh

if [ $# -ne 2 ]
then
    echo "usage $0 <TEST_RESOURCE_DIR> <ASSETS_DIR>"
    exit 1
fi

TEST_RESOURCE_DIR=$1
ASSETS_DIR=$2

GET_DIR=$(mktemp -u $TMPDIR/openjdk-resource-get.XXXXXX)

echo "Running check test"
for testFile in $(ls ${TEST_RESOURCE_DIR}/in-request-*.sample)
do
    echo "Running ${testFile}"
    echo "###################"
    ${ASSETS_DIR}/in ${GET_DIR} <${testFile}
    echo "###################"
    echo "Done ${testFile}"

done