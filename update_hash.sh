#!/bin/sh

hash=`rustc --version --verbose|grep commit-hash|awk '{print $2}'`
find . -name launch.json -exec sed -E -e "s/\/rustc\/[0-9a-f]+\//\/rustc\/$hash\//g" -i '' {} \;
