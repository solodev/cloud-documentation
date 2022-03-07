#!/bin/bash
args=("$@")

tag(){
    VERSION="${args[1]}"
    git tag -a v${VERSION} -m "tag release"
    git push --tags
}

#DEVOPS
DATE=$(date +%d%H%M)

init(){
    npm install retypeapp
}

watch(){
    retype watch
}

build(){
    retype build
}

s3(){
    ./deploy.sh
}


$*