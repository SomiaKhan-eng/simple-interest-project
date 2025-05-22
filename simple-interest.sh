#!/bin/bash

if [ $# -ne 3 ]; then
  echo "Usage: $0 principal rate time"
  exit 1
fi

p=$1
r=$2
t=$3

si=$(echo "scale=2; $p * $r * $t / 100" | bc)

echo "Simple Interest is: $si"
