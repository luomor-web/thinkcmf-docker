#!/bin/bash
set -e

# version to build.
TASK=${1}
PLATFORM=${2}
TAG=${3}
SHELLDIRPATH=$(cd `dirname $0`; pwd)
ROOTDIR=$(dirname $SHELLDIRPATH)

# build image
if [[ ${TASK} == "build" ]]; then
    if [[ ${PLATFORM} == "fpm" ]]; then
        cd $ROOTDIR/php-fpm \
        && docker build . -t thinkcmfpro/thinkcmf:latest \
        && docker push thinkcmfpro/thinkcmf:latest \
        && docker tag thinkcmfpro/thinkcmf:latest thinkcmfpro/thinkcmf:$TAG \
        && docker push thinkcmfpro/thinkcmf:$TAG
    fi
    if [[ ${PLATFORM} == "workerman" ]]; then
        cd $ROOTDIR/php-workerman \
        && docker build . -t thinkcmfpro/thinkcmf:workerman \
        && docker push thinkcmfpro/thinkcmf:workerman \
        && docker tag thinkcmfpro/thinkcmf:workerman thinkcmfpro/thinkcmf:workerman-$TAG \
        && docker push thinkcmfpro/thinkcmf:workerman-$TAG
    fi
    if [[ ${PLATFORM} == "swoole" ]]; then
        cd $ROOTDIR/php-swoole \
        && docker build . -t thinkcmfpro/thinkcmf:swoole \
        && docker push thinkcmfpro/thinkcmf:swoole \
        && docker tag thinkcmfpro/thinkcmf:swoole thinkcmfpro/thinkcmf:swoole-$TAG \
        && docker push thinkcmfpro/thinkcmf:swoole-$TAG
    fi
fi