#!/bin/bash
# This creates an EPUB version
date="$(date "+%B %e, %Y")"
cd /tmp
mkdir ebook
cp /home/oskar/Dokumenty/RPG/cairn-pl/ebook/cairn-pl-ebook.md /tmp/ebook/01.md
# sed -i -e '$a\\\newpage' /tmp/ebook/*.md
# sed -i '/^source:/d' /tmp/monsters/*.md
# sed -i '/^autor:/d' /tmp/monsters/*.md
# sed -i '1 { /^---/ { :a N; /\n---/! ba; d} }' /tmp/ebook/*.md
pandoc --toc-depth=1 --variable title="Cairn PL" --variable subtitle="Przygotowany " --variable subtitle="$date" --variable subtitle="\linebreak przez Oskara Świda\linebreak CC-BY-SA 4.0"  -V fontfamily:Alegreya -f markdown+multiline_tables --toc -s /tmp/ebook/*.md -o "/home/oskar/Dokumenty/RPG/cairn-pl.epub"
rm -rf /tmp/ebook
