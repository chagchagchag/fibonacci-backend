#!/bin/bash

while true; do
  # count=100
  count=200

  for ((i = 0; i < count; i++)); do
    curl "http://localhost/fibonacci?number=11" &
  done

  sleep 0.5
done