#!/bin/bash
# This creates a printable PDF of all the monster cards in both Letter and A4 formats.
montage "/home/oskar/Dokumenty/RPG/cairn-monster-cards/*.png" -mode concatenate -tile 3x3 -geometry +20+20 -page a4 -rotate 90 "/home/oskar/Dokumenty/RPG/cairn-monster-cards-a4.pdf"
