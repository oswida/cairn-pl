#!/bin/bash
# This creates a compiled PDF of all the monster stat blocks in both A4 and Letter formats (including booklets)
date="$(date "+%B %e, %Y")"
cd /tmp
mkdir monsters
cp /home/oskar/Dokumenty/RPG/cairn-pl/resources/monsters/* /tmp/monsters/
sed -i '/^author/d' /tmp/monsters/*.md
sed -i '/^source:/d' /tmp/monsters/*.md
sed -i '/^autor:/d' /tmp/monsters/*.md
sed -i '1 { /^---/ { :a N; /\n---/! ba; d} }' /tmp/monsters/*.md
cat /tmp/monsters/*.md > /tmp/monsters/_data.md
perl -0777 -ne '(undef,@paragraphs) = split /^#(?=[^#])/m;print map {"#$_"} sort @paragraphs;' /tmp/monsters/_data.md > /tmp/monsters/_result.md
pandoc -V geometry:margin=2.5cm --variable papersize=A4 --variable title="Cairn Bestiariusz" --variable subtitle="Przygotowany " --variable subtitle="$date" --variable subtitle="\linebreak przez Oskara Świda| Oryginał: Yochai Gal \linebreak CC-BY-SA 4.0" -V fontfamily:Alegreya  -f gfm --toc -s /tmp/monsters/_result.md -o "/home/oskar/Dokumenty/RPG/cairn-pl-monsters.pdf"
cd "/home/oskar/Dokumenty/RPG/"
pdfbook2 -p=a4 -s "/home/oskar/Dokumenty/RPG/cairn-pl-monsters.pdf"
rm -rf /tmp/monsters
