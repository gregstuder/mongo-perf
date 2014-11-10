#!/bin/bash

PROFILE_FILE="$1"
PROFILE_DIR="`dirname $PROFILE_FILE`"
mkdir -p "$PROFILE_DIR"
shift 1

LD_PRELOAD="/usr/lib/libtcmalloc_and_profiler.so" CPUPROFILE="$PROFILE_FILE" CPUPROFILESIGNAL=12 "$@" &
echo $! > "$PROFILE_FILE.pid"

