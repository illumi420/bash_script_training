#!/usr/bin/env bash

set -euo pipefail

YEAR="${1:-}"

if [[ "$#" -ne 1 || ! "$YEAR" =~ ^-?[0-9]+$  ]]; then
    printf "Usage: %s <year>" "$0"
    exit 1
fi

if [[ ( $(( YEAR % 4 )) == 0 ) && ! ( ( $(( YEAR % 400 )) == 0 ) || ( $(( YEAR % 100 )) == 0 ) ) ]]; then
    printf "true"
elif
   [[ ( $(( YEAR % 400 )) == 0 ) && ( $(( YEAR % 100 )) == 0 ) ]]; then
    printf "true"
else
    printf "false"
fi    