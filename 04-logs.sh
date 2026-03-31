#!/bin/bash
# Author: Ahmar (24BAI10853)
# Purpose: Accept a target log file as $1. Add a comment suggesting a realistic log path for Python.
# Use a 'while read' loop to count occurrences of a keyword ($2), then use 'tail' to print the last 5 matches.

echo "================================================================================"
echo "                   Python AUDIT - LOG FILE ANALYZER               "
echo "================================================================================"
# Suggested log path for Python: /var/log/syslog

target_log="$1"
keyword="$2"

count=0
matches=()
while read -r line; do
  if [[ "$line" == *"$keyword"* ]]; then
    ((count++))
    matches+=("$line")
  fi
done < "$target_log"
echo "Found $count occurrences of '$keyword'"
echo "Last 5 matches:"
tail -n 5 <<< "${matches[@]}"
echo "================================================================================"