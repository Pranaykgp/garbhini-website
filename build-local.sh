#!/bin/sh
# Wraps garbhini.html (the page body) in a full HTML document.
# Writes index.html (for GitHub Pages) and garbhini-local.html (to open directly).
cd "$(dirname "$0")"
{ printf '<!doctype html>\n<html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n<meta name="description" content="Garbhini: pregnancy care, doctors, nutrition and diagnostics in one place.">\n<style>body{margin:0}img{max-width:100%%}[hidden]{display:none!important}</style>\n'; cat garbhini.html; printf '\n</html>\n'; } > index.html
cp index.html garbhini-local.html
