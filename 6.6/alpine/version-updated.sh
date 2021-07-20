#!/bin/sh

apk del varnish 2>&1 > /dev/null
apk add --no-cache varnish 2>&1 > /dev/null
varnishd -V 2>&1|grep -o -E 6.6.[0-9]+
