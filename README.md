# FIT Typst Thesis Template

A [Typst](https://typst.app/) template for writing theses at the Faculty of Information Technology, CTU in Prague.

## Structure

- `main.typ` — thesis document with example content showing template features
- `template/` — the template (page layout, headings, title page, ... You shouldn't need to go here)
- `acronyms.typ` — glossary / acronym definitions ([glossarium](https://typst.app/universe/package/glossarium))
- `bibliography.bib` — BibTeX references
- `presentation.typ` — defense presentation template ([diatypst](https://typst.app/universe/package/diatypst))
- `compile_thesis.sh` — build script that merges the assignment page into the final PDF

## Usage

Compile the thesis:

```bash
typst compile main.typ
```

Or use the build script to merge the assignment PDF:

```bash
./compile_thesis.sh                       # assignment page first (default)
./compile_thesis.sh --title-first         # title page first
./compile_thesis.sh --print               # also run Ghostscript for print-ready PDF
./compile_thesis.sh --title-first --print # both
```

Based on [this template.](https://github.com/AdamVerner/ctu-thesis-typst/tree/main)
