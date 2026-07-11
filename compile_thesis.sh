#!/usr/bin/env bash
set -euo pipefail

PRINT=false
TITLE_FIRST=false

for arg in "$@"; do
    case "$arg" in
        --print) PRINT=true ;;
        --title-first) TITLE_FIRST=true ;;
        *) echo "Unknown argument: $arg" >&2; exit 1 ;;
    esac
done

typst compile main.typ main.pdf

if [[ "$TITLE_FIRST" == true ]]; then  # Title page first:
    # main pages 1-2, then assignment, then rest of main
    pdftk \
        A=main.pdf \
        B=assignment.pdf \
        cat A1-2 B1-end A3-end \
        output full_thesis.pdf

else  # Default: assignment page first
    pdftk assignment.pdf main.pdf cat output full_thesis.pdf
fi

if [[ "$PRINT" == true ]]; then
    echo "Converting fonts to outlines for print..."
    gs  -o  final_PRINT.pdf  -dNoOutputFonts  -sDEVICE=pdfwrite  full_thesis.pdf
    echo "Print-ready PDF: final_PRINT.pdf"
fi

rm main.pdf
