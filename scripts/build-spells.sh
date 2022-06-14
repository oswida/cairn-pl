#!/bin/bash
# Process spells into different formats
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
date="$(date "+%e %B , %Y")"

# Split spells document into separate files
# mkdir -p $SCRIPT_DIR/tmp
# cd $SCRIPT_DIR/tmp
# awk '/^#### [^\n]/{ close(out); out=$2"_"$3".md" } out!=""{print > out}' ../all-spells.md
# cd $SCRIPT_DIR
# sed -i '/^###\s[^\n]*/d' tmp/*.md

# PDF
pandoc -V geometry:margin=2.5cm --variable papersize=A4 --variable title="Cairn: Zaklęcia" --variable subtitle="Przygotowany " --variable subtitle="$date" --variable subtitle="\linebreak przez Oskara Świda| Oryginał dostępny na: cairnrpg.com \linebreak CC-BY-SA 4.0" -V fontfamily:Alegreya -H spells-cover.tex -f gfm --toc -s all-spells.md -o "$SCRIPT_DIR/cairn-pl-spells.pdf"

# EPUB
CSS_FILE=$SCRIPT_DIR/epub.css
OUT_FILE=$SCRIPT_DIR/cairn-pl-spells.epub
DOC_TITLE="Cairn PL: Zaklęcia"
DOC_SUBTITLE="Przygotowany $date, Oskar Świda, CC-BY-SA 4.0"
COVER_IMG=$SCRIPT_DIR/covers/cover-magic-pf.jpg

pandoc -c "$CSS_FILE" -M title="$DOC_TITLE" -M subtitle="$DOC_SUBTITLE" -f gfm --toc --toc-depth=4 --epub-embed-font Alegreya-Regular.ttf --epub-embed-font Alegreya-Italic.ttf --epub-embed-font Alegreya-Bold.ttf --epub-embed-font Alegreya-SemiBold.ttf --epub-cover-image "$COVER_IMG" -s all-spells.md -o "$OUT_FILE"

rm -rf tmp

# PDF brochure
pdfbook2 -p=a4 -s "cairn-pl-spells.pdf"