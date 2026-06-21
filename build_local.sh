#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

pdflatex junweiliu-resume.tex

tmpdir=$(mktemp -d)
trap 'rm -rf "$tmpdir"' EXIT
pdftoppm -png -rx 300 -ry 300 junweiliu-resume.pdf "$tmpdir/junweiliu-resume"

for f in "$tmpdir"/junweiliu-resume-*.png; do
    fname=$(basename "$f")
    cp "$f" "./$fname" 2>/dev/null || echo "Warning: could not update $fname (file may be locked by Windows Explorer)"
done
