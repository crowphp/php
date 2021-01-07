#!/bin/bash
set -e
display_usage() {
    echo -e "usage:\t ./build.sh <command>\n"
    echo -e "Commands:\n   image\t\tBuilds the images and pushes it to gcr\n"
}

GCR_PATH=crowphp/php:8.0-cli-buster

case $1 in
    image)

        echo "docker build --tag ${GCR_PATH} ."
        docker build --tag ${GCR_PATH} .
        docker -- push ${GCR_PATH}
        ;;
    * )
        display_usage
        exit 1
esac