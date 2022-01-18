#!/bin/bash -x

git pull

pushd `hostname`
./deploy.sh
popd

exit 0
