#!/bin/bash

COMMAND_NAME="Script Package Tool"
SCRIPTS_BIN="/usr/bin/spt"
SCRIPTS_FOLDER="/usr/scripts/ScriptPackageTool"

if [ "$(whoami)" != "root" ]
then
  echo "You Have To Run As Superuser!"
  exit 1
fi

if [[ ! -e "$SCRIPTS_BIN" ]]; then
    echo "$COMMAND_NAME is Not Install, so Cancelling Removed."
    exit 1
else
    echo "Remove $COMMAND_NAME"
    rm -rf "$SCRIPTS_BIN" "$SCRIPTS_FOLDER"
fi
