#!/usr/bin/env sh

# Run from project root directory to create index.html
pandoc -t revealjs --template=pandoc-templates/default.revealjs \
  -o index.html  --slide-level=2 \
  -V reveal.js=./reveal.js  -V theme=serif slides/*.md

echo "index.html built $(date)"

