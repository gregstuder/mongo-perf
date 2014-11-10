#!/bin/bash

REMOTE_DIR="/home/$USER/workspaces/mongo-remote"
VERSIONS_DIR="./mongodb-versions"
BIN_DIR="./mongodb-versions/bin"
mkdir -p "$VERSIONS_DIR"
mkdir -p "$BIN_DIR"

ln -s "$REMOTE_DIR" "$VERSIONS_DIR/"
ln -s "$REMOTE_DIR/mongo" "$BIN_DIR/"
ln -s "$REMOTE_DIR/mongod" "$BIN_DIR/"
ln -s "$REMOTE_DIR/mongos" "$BIN_DIR/"

python $REMOTE_DIR/buildscripts/setup_multiversion_mongodb.py "$VERSIONS_DIR" "$BIN_DIR" "Linux/x86_64" "$@"

