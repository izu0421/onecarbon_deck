#!/usr/bin/env bash
# Double-click this in Finder, or run from Terminal.
# Pushes the OneCarbon investor deck to github.com/izu0421/onecarbon_deck

set -e
cd "$(dirname "$0")"

echo "Pushing OneCarbon investor deck to GitHub…"
echo

# Stage any new edits since the initial commit
git add -A
if ! git diff --cached --quiet; then
  git commit -m "Update deck"
fi

git push -u origin main

echo
echo "✓ Pushed. View at: https://github.com/izu0421/onecarbon_deck"
echo "  GitHub Pages will serve at: https://izu0421.github.io/onecarbon_deck/"
