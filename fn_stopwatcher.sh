#!bin/bash

function stopwatcher() {
  INIT_TIME=$(date +'%Y-%m-%d %H:%M:%S.%N')
  $1
  POST_TIME=$(date +'%Y-%m-%d %H:%M:%S.%N')

  INIT_EPOCH=$(date -d "$INIT_TIME" +%s%3N)
  POST_EPOCH=$(date -d "$POST_TIME" +%s%3N)

  TIME_DIFF=$((POST_EPOCH - INIT_EPOCH))

  echo "Time Difference: ${TIME_DIFF} milliseconds"
}

function sleep5() {
  echo "começando a dormir por 5 segundos..."
  sleep 5
  echo "acordei"
}

stopwatcher sleep5
