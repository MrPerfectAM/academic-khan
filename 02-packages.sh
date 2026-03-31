#!/bin/bash
# Author: Ahmar (24BAI10853)
# Purpose: Use OS-detection to define the correct package name for Python.
# Check installation status and extract the exact version.
# Include a case statement printing philosophy notes for 4 FOSS tools (including Python).

echo "================================================================================"
echo "                   Python AUDIT - PACKAGE INSPECTOR                "
echo "================================================================================"

# Detect OS and define package name
if [ -f /etc/debian_version ]; then
  PACKAGE_NAME="python3"
elif [ -f /etc/redhat-release ]; then
  PACKAGE_NAME="python3"
fi

# Check installation status and extract version
if [ -n "$(dpkg -s $PACKAGE_NAME 2>/dev/null)" ]; then
  echo "Status: $PACKAGE_NAME is INSTALLED on this Debian/Ubuntu system."
  echo "Version: $(python3 --version)"
else
  echo "Status: $PACKAGE_NAME is NOT installed on this system."
fi

echo "--------------------------------------------------------------------------------"
echo "FOSS Philosophy Notes:"

case "$PACKAGE_NAME" in
  "python3")
    echo " - Python: Python is a high-level, interpreted programming language that emphasizes code readability."
    echo " - Linux: Linux is an open-source operating system that provides a free and customizable alternative to proprietary systems."
    echo " - Git: Git is a version control system that allows developers to track changes and collaborate on projects."
    echo " - Vim: Vim is a text editor that provides a powerful and customizable editing experience."
    ;;
  *)
    echo "No notes available for $PACKAGE_NAME"
    ;;
esac
echo "================================================================================"