#!/bin/bash


DAYS="022 023 024 025 026 029 031 036 037 038 039 040"
MATCH=$(date +%j)

if echo $DAYS | grep -qw $MATCH; then
	echo "YES!"
	for run in {1..25}
	do
		echo "RUN $run"
		date +%s | sha256sum | base64 | head -c 32 > ./content.txt
		git commit -a -m 'random change'
		git push
	done
else

	echo "NOPE $MATCH"
	exit 1
fi


