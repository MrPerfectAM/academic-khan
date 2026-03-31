#!/bin/bash
# Author: Ahmar (24BAI10853)
# Purpose: Define an array of directories (/etc, /var/log, etc.) and dynamically append 2 specific paths for Python.
# Loop through them, check existence, and use 'awk' to extract size, permissions, and owner into clean columns.

echo "================================================================================"
echo "                   Python AUDIT - DIRECTORY AUDITOR                "
echo "================================================================================"

dirs=(/etc /var/log /usr/bin /usr/lib)
dirs+=(/usr/lib/python3 /usr/bin/python3)

echo "Directory	Size	Permissions	Owner"
for dir in "${dirs[@]}"; do
  if [ -d "$dir" ]; then
    size=$(du -sh "$dir" | awk '{print $1}')
    perms=$(stat -c "%a" "$dir")
    owner=$(stat -c "%U" "$dir")
    echo "$dir	$size	$perms	$owner"
  else
    echo "$dir does not exist"
  fi
done
echo "================================================================================"