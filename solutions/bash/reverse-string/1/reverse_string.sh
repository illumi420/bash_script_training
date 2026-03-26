#!/usr/bin/env bash

set -euo pipefail

STRING="${1:-}"

# if [[ -z "$STRING" ]]; then
#     printf %s "Error: Provided String $STRING is Empty"
# fi

revers() {
    echo "$STRING" | rev
}

revers