#!/bin/sh

for run in {1..10}
do
	echo "RUN $run"
	date +%s | sha256sum | base64 | head -c 32 > ./content.txt
	git commit -a -m 'random change'
	git push
done

