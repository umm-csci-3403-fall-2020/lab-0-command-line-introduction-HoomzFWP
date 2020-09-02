#!/usr/bin/env bash

tar_file=$1

scratch=$(mktemp --directory)

tar zxf $1 -C $scratch

rm -rf $scratch
