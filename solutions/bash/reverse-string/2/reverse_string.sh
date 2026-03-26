#!/usr/bin/env bash

set -euo pipefail

STRING="${1:-}"
REV_STR=""

# if [[ -z "$STRING" ]]; then
#     printf %s "Error: Provided String $STRING is Empty"
# fi

revers() {
    for (( i=${#STRING}-1; i>=0; i-- )); do
        REV_STR+="${STRING:i:1}"
    done
printf %s "$REV_STR"
}

revers