#!/bin/bash
# This creates a compiled PDF of all the monster stat blocks (including booklets)
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
date="$(date "+%B %e, %Y")"

mkdir monsters
cp $SCRIPT_DIR/../resources/monsters/* monsters/
sed -i '/^author/d' monsters/*.md
sed -i '/^source:/d' monsters/*.md
sed -i '/^autor:/d' monsters/*.md
sed -i '1 { /^---/ { :a N; /\n---/! ba; d} }' monsters/*.md
cat monsters/*.md > monsters/_data.md
perl -0777 -ne 'use utf8; use Unicode::Collate::Locale; use open ":std", ":encoding(UTF-8)"; binmode STDOUT, ":encoding(UTF-8)"; my $col= Unicode::Collate::Locale->new(level => 3,locale => "pl_PL.utf8",normalization => "NFD",
); (undef,@paragraphs) = split /^#(?=[^#])/m;print map {"#$_"} $col->sort(@paragraphs);' monsters/_data.md > monsters/_result.md
pandoc -V geometry:margin=2.5cm --variable papersize=A4 --variable title="Cairn Bestiariusz" --variable subtitle="Przygotowany " --variable subtitle="$date" --variable subtitle="\linebreak przez Oskara Świda| Oryginał: Yochai Gal \linebreak CC-BY-SA 4.0" -V fontfamily:Alegreya  -f gfm --toc -s monsters/_result.md -o "$SCRIPT_DIR/monsters/cairn-pl-monsters.pdf"
cd "$SCRIPT_DIR/monsters"
pdfbook2 -p=a4 -s "$SCRIPT_DIR/monsters/cairn-pl-monsters.pdf"
# rm -rf monsters
