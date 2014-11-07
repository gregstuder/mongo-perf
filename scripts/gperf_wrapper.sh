#!/bin/bash

PROFILE_FILE="$1"
shift 1

env LD_PRELOAD="/usr/lib/libtcmalloc_and_profiler.so" CPUPROFILE="$PROFILE_FILE" CPUPROFILESIGNAL=12 "$@"

