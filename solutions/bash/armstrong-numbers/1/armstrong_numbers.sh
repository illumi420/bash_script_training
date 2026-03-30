#!/usr/bin/env bash

set -euo pipefail

NUM="${1:-}"

declare -i SUM
SUM=0

if [[ -z "$NUM" ]]; then
    echo "Error please provide a number"
fi

if (( NUM < 10 )); then
    echo "true"
else
    for (( IDX = 0; IDX < ${#NUM}; IDX++ ))
    do
        SUM+=$(( ${NUM:IDX:1} ** ${#NUM} ))
    done

    if (( $SUM == $NUM )); then
        echo "true"
    else
        echo "false"
    fi
fi