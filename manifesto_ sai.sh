#!/bin/bash
# Script 5: Generating Open source Manifesto
echo "Answer three questions to generate your manifesto."
echo ""
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt" # Saving the Manifesto File 
# Compose a paragraph using $TOOL, $FREEDOM, $BUILD
# and write it to $OUTPUT using echo and >>
# We use a single '>' first to create/overwrite the file...
echo "--- My Open Source Manifesto ($DATE) ---" > "$OUTPUT"
echo "" >> "$OUTPUT"
# We use '>>' for the rest to append to the end of the file
echo "I use $TOOL every day, and honestly, it reminds me how powerful a community can be when people come together to build something useful." >> "$OUTPUT"
echo "To me, open source is all about one simple idea: $FREEDOM. The freedom to use, explore, change, and share software. that's what makes it so special." >> "$OUTPUT"
echo "Because of the people who've inspired me, I want to give something back. One day, I'll build $BUILD and put it out there for anyone to use, learn from, and improve." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "----------------------------------------" >> "$OUTPUT"
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
# Display the final file to the user
cat "$OUTPUT"