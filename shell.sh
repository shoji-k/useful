#!/bin/sh

set -x # デバッグ用に冗長に出力する
set -u # 未定義変数をエラーにする

# truncate file
# same as rm sample.txt && touch sample.txt
:> sample.txt

