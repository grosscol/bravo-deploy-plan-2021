#!/usr/bin/env sh

# Watch existing markdown files in slides directory
fdfind '.*\.md' slides | entr ./build_slides.sh
