#!/bin/bash
# Process relics into different formats
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Split relics document into separate files
mkdir -p $SCRIPT_DIR/tmp
cd $SCRIPT_DIR/tmp
awk '/^#### [^\n]/{ close(out); out=$2"_"$3".md" } out!=""{print > out}' ../../resources/relics.md
cd $SCRIPT_DIR
sed -i '/^###\s[^\n]*/d' tmp/*.md

# PDF
pandoc -V geometry:margin=2.5cm --variable papersize=A4 --variable title="Cairn: Artefakty" --variable subtitle="Przygotowany " --variable subtitle="$date" --variable subtitle="\linebreak przez Oskara Świda| Oryginał dostępny na: cairnrpg.com \linebreak CC-BY-SA 4.0" -V fontfamily:Alegreya  -f gfm --toc -s tmp/*.md -o "$SCRIPT_DIR/cairn-pl-relics.pdf"

# EPUB
CSS_FILE=$SCRIPT_DIR/epub.css
OUT_FILE=$SCRIPT_DIR/cairn-pl-relics.epub
DOC_TITLE="Cairn PL: Artefakty"
DOC_SUBTITLE="Przygotowany $date, Oskar Świda, Oryginał dostępny na: cairnrpg.com, CC-BY-SA 4.0"
COVER_IMG=$SCRIPT_DIR/cairn.jpg

pandoc -c "$CSS_FILE" -M title="$DOC_TITLE" -M subtitle="$DOC_SUBTITLE" -f gfm --toc --toc-depth=4 --epub-embed-font Alegreya-Regular.ttf --epub-embed-font Alegreya-Italic.ttf --epub-embed-font Alegreya-Bold.ttf --epub-embed-font Alegreya-SemiBold.ttf --epub-cover-image "$COVER_IMG" -s tmp/*.md -o "$OUT_FILE"

# rm -rf tmp

# PDF brochure
pdfbook2 -p=a4 -s "cairn-pl-relics.pdf"