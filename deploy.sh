#!/bin/bash -x

pushd `hostname`
./deploy.sh
popd

exit 0
