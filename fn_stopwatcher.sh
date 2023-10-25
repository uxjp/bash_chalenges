#!bin/bash

function stopwatcher() {
  INIT_TIME=$SECONDS
  $1
  POST_TIME=$SECONDS


  TIME_DIFF=$((POST_TIME- INIT_TIME))

  echo "Time Difference: ${TIME_DIFF} seconds"
}

function sleep5() {
  echo "starting to sleep for 5 secounds..."
  sleep 5
  echo "I woke up"
}

stopwatcher sleep5
