#!/bin/sh

find . -type d -name '.git' -prune -o -type d -name 'vendor' -prune -o -type f -print
