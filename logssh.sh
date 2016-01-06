#!/bin/sh

NOW=$(date +%Y%m%d_%H%M%S)
exec script -q -c "ssh $1" $1.$NOW.log
