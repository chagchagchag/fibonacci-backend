#!/bin/bash

while true; do
  count=50

  for ((i = 0; i < count; i++)); do
    curl "http://localhost/fibonacci?number=1" &
  done

  sleep 1
done