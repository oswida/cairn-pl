#!/bin/bash
# This creates a compiled PDF of all the monster stat blocks (including booklets)
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
date="$(date "+%B %e, %Y")"

mkdir monsters
cp $SCRIPT_DIR/../resources/monsters/* monsters/
sed -i '/^author/d' monsters/*.md
sed -i '/^source:/d' monsters/*.md
sed -i '/^autor:/d' monsters/*.md # for Polish version of author
sed -i '1 { /^---/ { :a N; /\n---/! ba; d} }' monsters/*.md
for entry in monsters/*.md
do
  name=`cat "$entry" | grep "^# " | sed -r 's/\#\s+/ /g'`
  mv "$entry" "monsters/${name}.md"
done

# PDF
pandoc -V geometry:margin=2.5cm --variable papersize=A4 --variable title="Cairn Bestiariusz" --variable subtitle="Przygotowany " --variable subtitle="$date" --variable subtitle="\linebreak przez Oskara Świda| Oryginał: Yochai Gal \linebreak CC-BY-SA 4.0" -V fontfamily:Alegreya  -f gfm --toc -s monsters/*.md -o "$SCRIPT_DIR/../../cairn-pl-monsters.pdf"

# EPUB
CSS_FILE=$SCRIPT_DIR/epub.css
OUT_FILE=$SCRIPT_DIR/../../cairn-pl-monsters.epub
DOC_TITLE="Cairn PL: Bestiariusz"
DOC_SUBTITLE="Przygotowany $date, Oskar Świda, Oryginał: Yochai Gal, CC-BY-SA 4.0"
COVER_IMG=$SCRIPT_DIR/cairn-bestiary.jpg

pandoc -c "$CSS_FILE" -M title="$DOC_TITLE" -M subtitle="$DOC_SUBTITLE" -f gfm --toc --epub-embed-font Alegreya-Regular.ttf --epub-embed-font Alegreya-Italic.ttf --epub-embed-font Alegreya-Bold.ttf --epub-embed-font Alegreya-SemiBold.ttf --epub-cover-image "$COVER_IMG" -s monsters/*.md -o "$OUT_FILE"

rm -rf monsters

# PDF broszura
cd "$SCRIPT_DIR/../.."
pdfbook2 -p=a4 -s "cairn-pl-monsters.pdf"
