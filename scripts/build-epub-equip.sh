#!/bin/bash
# This creates an EPUB version,
# I assume that script is run from 'scripts' directory
# in the Cairn repo root

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
date="$(date "+%B %e, %Y")"

# --- Please adjust variables to your needs ---

# Input file path.
# This is a modified file for ebook generation.
# In most cases only markdown tables should be slightly changed 
# (made one column, because multicolumn look bad at ebook readers). 
SRC_FILE=$SCRIPT_DIR/more-equipment-ebook.md

# CSS styling taken from original Cairn epub distribution.
CSS_FILE=$SCRIPT_DIR/epub.css

# Output file path.
OUT_FILE=$SCRIPT_DIR/more-equipment.epub

# ToC depth
TOC_DEPTH=3

# Cover image path
COVER_IMG=$SCRIPT_DIR/cairn.jpg

# Document title
DOC_TITLE="Cairn: More equipment"

# Document subtitle
DOC_SUBTITLE="Created $date, CC-BY-SA 4.0"

# NOTE: Alegreya fonts should be located at the same directory where script is called.
# Command
pandoc --toc-depth=$TOC_DEPTH -c "$CSS_FILE" -M title="$DOC_TITLE" -M subtitle="$DOC_SUBTITLE" -f gfm --toc --epub-embed-font Alegreya-Regular.ttf --epub-embed-font Alegreya-Italic.ttf --epub-embed-font Alegreya-Bold.ttf --epub-embed-font Alegreya-SemiBold.ttf --epub-cover-image "$COVER_IMG" -s "$SRC_FILE" -o "$OUT_FILE"
