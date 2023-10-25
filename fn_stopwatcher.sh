#!bin/bash

function stopwatcher() {
  # Next challenge
  # Can't use date
  #
  INIT_TIME=$(date +'%Y-%m-%d %H:%M:%S.%N')
  $1
  POST_TIME=$(date +'%Y-%m-%d %H:%M:%S.%N')

  INIT_EPOCH=$(date -d "$INIT_TIME" +%s%3N)
  POST_EPOCH=$(date -d "$POST_TIME" +%s%3N)

  TIME_DIFF=$((POST_EPOCH - INIT_EPOCH))

  echo "Time Difference: ${TIME_DIFF} milliseconds"
}

function sleep5() {
  echo "starting to sleepfor 5 secounds..."
  sleep 5
  echo "I woke up"
}

stopwatcher sleep5
