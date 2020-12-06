#!/bin/sh

# usage ./pachaging.sh PRODUCT_OS PRODUCT_PATH PROUCT_NAME

cd `dirname $0`
cd ../

mkdir pkg
PRODUCT_OS="$1"
PRODUCT_PATH="$2"
PROUCT_NAME="$3-$PRODUCT_OS"

mkdir -p "pkg/$PROUCT_NAME"
cp -r "$PRODUCT_PATH" "pkg/$PROUCT_NAME"
cd pkg
ls | xargs -t -I FILE_NAME zip -r FILE_NAME.zip FILE_NAME
ls | grep -v -E ".zip$" | xargs rm -r
cd ../
