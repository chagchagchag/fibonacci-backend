#!/bin/bash

while true; do
  count=50

  for ((i = 0; i < count; i++)); do
    curl "http://localhost:8080/fibonacci?number=1" &
  done

  sleep 1
done