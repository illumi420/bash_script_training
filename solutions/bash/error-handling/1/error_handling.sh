#!/usr/bin/env bash

set -euo pipefail

ARG="${1:-}"

if [[ -z "$ARG" && "$#" == 1 ]]; then
    printf "Hello, %s" "$ARG"

elif (( $# == 0 || $# > 1 )); then
    printf "Usage: %s <person>" $0
    exit 1

else 
    printf "Hello, %s" "$ARG"
fi