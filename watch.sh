#!/bin/bash

# Kill parallel tasks together.
# http://unix.stackexchange.com/a/107405

trap killgroup SIGINT

killgroup () {
  echo killing...
  kill 0
}

dir=$(dirname "${BASH_SOURCE[0]}")

$dir/node_modules/harp/bin/harp src &
node $dir/node_modules/livereloadx/bin/livereloadx.js --include '**/*.{jade,less}' &
wait
