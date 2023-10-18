#!bin/bash

function stopwatcher() {
  $1
}

function my_fn() {
  echo 'Hello world 2'
}

stopwatcher my_fn
