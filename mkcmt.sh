#!/bin/sh

date +%s | sha256sum | base64 | head -c 32 > ./content.txt

git commit -a -m 'random change'

git push


