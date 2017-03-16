#!/bin/bash

# Kill parallel tasks together.
# http://unix.stackexchange.com/a/107405

trap killgroup SIGINT

killgroup () {
  echo killing...
  kill 0
}

harp server src &
livereloadx --include '**/*.{jade,less}' &
wait
