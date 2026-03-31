#!/bin/bash
# Author: Ahmar (24BAI10853)
# Purpose: Use 'read -p' to ask 3 interactive questions, construct a paragraph injecting the answers, and append it to a .txt file named after the user.

echo "================================================================================"
echo "                   Python AUDIT - MANIFESTO GENERATOR             "
echo "================================================================================"

echo "Please answer the following questions:"
read -p "What is your name? " name
read -p "What is your favorite programming language? " language
read -p "What is your goal for using open-source software? " goal

echo "My name is $name, and I love programming in $language. My goal is to $goal by contributing to open-source projects and learning from the community."

echo "My name is $name, and I love programming in $language. My goal is to $goal by contributing to open-source projects and learning from the community." > $(whoami).txt
echo "Manifesto saved to $(whoami).txt"
echo "================================================================================"