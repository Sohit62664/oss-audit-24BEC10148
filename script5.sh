#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Sohit

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
USER=$(whoami)
OUTPUT="manifesto_$USER.txt"

echo "" > $OUTPUT

echo "Open Source Manifesto" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I use $TOOL every day, and it reminds me that software should not be restricted." >> $OUTPUT
echo "For me, freedom means $FREEDOM — the ability to learn, modify, and share knowledge." >> $OUTPUT
echo "If given the opportunity, I would build $BUILD and make it open for everyone." >> $OUTPUT
echo "I believe in contributing to the open-source community and building technology that benefits all." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
