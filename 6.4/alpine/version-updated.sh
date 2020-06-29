#!/bin/sh

apk update varnish > /dev/null
varnishd -V 2>&1|grep -o -E 6.4.[0-9]+
