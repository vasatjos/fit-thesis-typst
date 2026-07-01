# FIT Typst Thesis Template

A [Typst](https://typst.app/) template for writing theses at the Faculty of Information Technology, CTU in Prague.
The goal of this project is that the first three chapters in the [Typst tutorial](https://typst.app/docs/tutorial/)
and the examples in `main.typ` should be enough for you to start writing.

## Structure

- `main.typ` -- thesis document with example content showing template features and some Typst tips
- `template/` -- the template (page layout, headings, title page, ...
  If you ever need to go here to add something you think should be included
  by default, create an issue or a PR.)
- `acronyms.typ` -- glossary / acronym definitions ([glossarium](https://typst.app/universe/package/glossarium))
- `bibliography.bib` -- BibTeX references
- `presentation.typ` -- defense presentation template ([diatypst](https://typst.app/universe/package/diatypst))
- `compile_thesis.sh` -- build script that merges the assignment page into the final PDF
- `example.pdf`, `example_presentation.pdf` -- compiled `main.typ` and `presentation.typ`

A real, full thesis that used (an older version of) this template can be found [here](https://hdl.handle.net/10467/182947).

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
