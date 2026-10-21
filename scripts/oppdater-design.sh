#!/bin/sh
# Kopierer designsystemet fra en utsjekket tidya-design-guide til roten. Bruk: scripts/oppdater-design.sh ../tidya-design-guide
# Filene skal ikke endres lokalt: endringer gjøres i guiden og kopieres hit. Se på forsiden i begge moduser etterpå.
set -eu
guide="${1:?Bruk: $0 <sti til tidya-design-guide>}"
rot="$(cd "$(dirname "$0")/.." && pwd)"
for fil in tokens.css components.css header.js effects.js \
	fonts/manrope-latin-wght-normal.woff2 fonts/fraunces-latin-opsz-wght-normal.woff2 fonts/LICENSE-Manrope.txt fonts/LICENSE-Fraunces.txt \
	brand/logo-mork-bakgrunn.svg brand/logo-lys-bakgrunn.svg brand/favicon.svg brand/favicon.ico brand/apple-touch-icon.png; do
	[ -f "$guide/$fil" ] || { echo "Mangler $guide/$fil" >&2; exit 1; }
	mkdir -p "$(dirname "$rot/$fil")"
	cp "$guide/$fil" "$rot/$fil"
done
echo "Kopiert fra $guide. Sjekk git diff og se på forsiden."
