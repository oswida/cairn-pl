#!/bin/bash
# This creates a compiled PDF of additional materials i Polish
date="$(date "+%B %e, %Y")"
cd /tmp
mkdir companion
cp /home/oskar/Dokumenty/RPG/cairn-pl/docs/faqs-pl.md /tmp/companion/01.md
cp /home/oskar/Dokumenty/RPG/cairn-pl/docs/modular-rules-procedures-pl.md /tmp/companion/02.md
cp /home/oskar/Dokumenty/RPG/cairn-pl/tools/converting-monsters-pl.md /tmp/companion/03.md
cp /home/oskar/Dokumenty/RPG/cairn-pl/tools/build-an-adventure-site-pl.md /tmp/companion/04.md
cp /home/oskar/Dokumenty/RPG/cairn-pl/resources/more-equipment.md /tmp/companion/05.md
cp /home/oskar/Dokumenty/RPG/cairn-pl/resources/relics.md /tmp/companion/06.md
cp /home/oskar/Dokumenty/RPG/cairn-pl/resources/more-spellbooks.md /tmp/companion/07.md
cp /home/oskar/Dokumenty/RPG/cairn-pl/docs/glog-magic-pl.md /tmp/companion/08.md
cp /home/oskar/Dokumenty/RPG/cairn-pl/docs/glog-spells-pl.md /tmp/companion/09.md
sed -i 's/^Rozwiń przykład/PRZYKŁAD/g' /tmp/companion/*.md
sed -i -e '$a\\\newpage' /tmp/companion/*.md
# sed -i '/^source:/d' /tmp/monsters/*.md
# sed -i '/^autor:/d' /tmp/monsters/*.md
sed -i '1 { /^---/ { :a N; /\n---/! ba; d} }' /tmp/companion/*.md
pandoc --toc-depth=1 -V geometry:margin=2.5cm --variable papersize=A4 --variable title="Cairn Companion PL" --variable subtitle="Przygotowany " --variable subtitle="$date" --variable subtitle="\linebreak przez Oskara Świda\linebreak CC-BY-SA 4.0"  -V fontfamily:Alegreya -f markdown+multiline_tables --toc -s /tmp/companion/*.md -o "/home/oskar/Dokumenty/RPG/cairn-companion-pl.pdf"
cd "/home/oskar/Dokumenty/RPG/"
pdfbook2 -p=a4 -s "/home/oskar/Dokumenty/RPG/cairn-companion-pl.pdf"
rm -rf /tmp/companion
