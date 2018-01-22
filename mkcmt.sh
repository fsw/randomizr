#!/bin/bash


DAYS="022 023 024 025 026"
MATCH=$(date +%j)

if echo $DAYS | grep -qw $MATCH; then
	echo "YES!"
	for run in {1..10}
	do
		echo "RUN $run"
		date +%s | sha256sum | base64 | head -c 32 > ./content.txt
		git commit -a -m 'random change'
		git push
	done
else
	echo "NOPE"
	exit 1
fi


