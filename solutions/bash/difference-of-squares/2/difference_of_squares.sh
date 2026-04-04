#!/usr/bin/env bash

COMMAND="${1:-}"
VALUE="${2:-}"

declare -i square_sum=0
declare -i sum=0
declare -i sum_square=0

for n in $(seq 1 "$VALUE"); do
    sum+=n
    sum_square+=$(( n ** 2 ))
done

square_sum=$(( sum ** 2 ))
diff=$(( square_sum - sum_square ))


if [[ $COMMAND == "square_of_sum" ]]; then
    printf "%d" $square_sum

elif [[ $COMMAND == "sum_of_squares" ]]; then
    printf "%d" $sum_square

else 
    printf "%d" $diff
fi