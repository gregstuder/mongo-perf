#!/bin/bash

PROFILE_FILE="$1"
PROFILE_DIR="`dirname $PROFILE_FILE`"
mkdir -p "$PROFILE_DIR"
shift 1

if [[ $PROFILE_FILE == *\.* ]]; then
  echo "Cannot use a '.' in profile filename."
  exit 1
fi

SIGNAL=23
echo "Using signal $SIGNAL to control profiling of $@"

LD_PRELOAD="/usr/lib/libtcmalloc_and_profiler.so" CPUPROFILE="$PROFILE_FILE" CPUPROFILESIGNAL=$SIGNAL "$@" &
echo $! > "$PROFILE_FILE.pid"
wait $!



