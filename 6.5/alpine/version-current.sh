#!/bin/sh

varnishd -V 2>&1|grep -o -E 6.5.[0-9]+
