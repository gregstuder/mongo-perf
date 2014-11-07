#!/bin/sh

CURR_DIR="`pwd`"
MONGODB_SRC_DIR="$1"
shift 1
cd "$MONGODB_SRC_DIR"

scons --use-system-tcmalloc --libpath "/usr/lib" "$@"

cd "$CURR_DIR"

