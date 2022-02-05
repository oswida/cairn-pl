#!/bin/bash
# This creates a compiled PDF of additional materials i Polish
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
date="$(date "+%B %e, %Y")"

mkdir companion
cp $SCRIPT_DIR/../docs/faqs-pl.md companion/01.md
cp $SCRIPT_DIR/../docs/modular-rules-procedures-pl.md companion/02.md
cp $SCRIPT_DIR/../tools/converting-monsters-pl.md companion/03.md
cp $SCRIPT_DIR/../tools/build-an-adventure-site-pl.md companion/04.md
cp $SCRIPT_DIR/../resources/more-equipment.md companion/05.md
cp $SCRIPT_DIR/../resources/relics.md companion/06.md
cp $SCRIPT_DIR/../resources/more-spellbooks.md companion/07.md
cp $SCRIPT_DIR/../docs/glog-magic-pl.md companion/08.md
cp $SCRIPT_DIR/../docs/glog-spells-pl.md companion/09.md

sed -i 's/^Rozwiń przykład/PRZYKŁAD/g' companion/*.md
sed -i -e '$a\\\newpage' companion/*.md
sed -i '1 { /^---/ { :a N; /\n---/! ba; d} }' companion/*.md

# PDF
pandoc --toc-depth=1 -V geometry:margin=2.5cm --variable papersize=A4 --variable title="Cairn Companion PL" --variable subtitle="Przygotowany " --variable subtitle="$date" --variable subtitle="\linebreak przez Oskara Świda\linebreak CC-BY-SA 4.0"  -V fontfamily:Alegreya -f markdown+multiline_tables --toc -s companion/*.md -o "$SCRIPT_DIR/../../cairn-companion-pl.pdf"

# EPUB
CSS_FILE=$SCRIPT_DIR/epub.css
OUT_FILE=$SCRIPT_DIR/../../cairn-pl-companion.epub
DOC_TITLE="Cairn PL: Materiały dodatkowe"
DOC_SUBTITLE="Przygotowany $date, Oskar Świda, Oryginał: Yochai Gal, CC-BY-SA 4.0"
COVER_IMG=$SCRIPT_DIR/cairn-companion.jpg

pandoc -c "$CSS_FILE" -M title="$DOC_TITLE" -M subtitle="$DOC_SUBTITLE" -f gfm --toc --epub-embed-font Alegreya-Regular.ttf --epub-embed-font Alegreya-Italic.ttf --epub-embed-font Alegreya-Bold.ttf --epub-embed-font Alegreya-SemiBold.ttf --epub-cover-image "$COVER_IMG" -s companion/*.md -o "$OUT_FILE"

# Broszura
cd "$SCRIPT_DIR/../.."
pdfbook2 -p=a4 -s "cairn-companion-pl.pdf"

rm -rf "$SCRIPT_DIR/companion"
