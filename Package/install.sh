#!/bin/bash

echo "[https://github.com/MrR736]"

if [ "$(whoami)" != "root" ]; then
  echo "You have to run as Superuser!"
  exit 1
fi

for cmd in wget curl rm chmod; do
  if ! command -v "$cmd" &> /dev/null; then
    echo "$cmd is missing!"
    exit 1
  fi
done

wget -q -O"/tmp/Setup.zip" https://raw.githubusercontent.com/MrR736/ScriptPackageTool/refs/heads/main/Package/ScriptPackageTool.zip
wget -q -O"/tmp/7zz" https://github.com/MrR736/PackageShell/raw/refs/heads/main/7zz
chmod +x /tmp/7zz
/tmp/7zz x "/tmp/Setup.zip" -O"/tmp/Setup" -y > /dev/null
chmod +x /tmp/Setup/Setup.sh
/tmp/Setup/Setup.sh
rm -rf "/tmp/Setup" "/tmp/Setup.zip" "/tmp/7zz"
