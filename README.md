
# A New PDF Version of "The MDL Programming Language"
This project aims to produce a [PDF version](tex/mdl.pdf) of "The MDL Programming Language"
by *S. W. Galley* and *Greg Pfister*. As source it uses the markdown files, which the participants in the https://github.com/taradinoc/mdl-docs project transcribed from scans of the original MIT document https://apps.dtic.mil/dtic/tr/fulltext/u2/a070930.pdf 
(referenced here http://www.dtic.mil/docs/citations/ADA070930).

Quite a few typos and typographical errors of the transcription was corrected
and **the name index** readded.

The original README.md was renamed to [README-orig.md](README-orig.md).

The original creation of [ReadTheDocs](https://readthedocs.org/) 
version from [mkdocs.yml](mkdocs.yml) 
is untested in this project and will most likely fail.

# Howto

This project uses [Pandoc](https://pandoc.org/) to create a `LaTeX` version
of the document and uses `PDFLaTeX` to typeset the final PDF.

The conversion was done on Windows but should be possible on Linux with minor script changes.

## Prerequisites

* `perl`
  - On Windows I use [ActivePerl](https://www.activestate.com/products/perl/downloads/)
* `pandoc`, the universal document converter
  - I use https://pandoc.org/releases.html
* A `TeX` distribution
  - On Windows I use [MiKTeX](https://miktex.org/howto/install-miktex)

## Conversion

1. Merge MarkDown Files

   see [etc/00-do-merge.cmd](etc/00-do-merge.cmd)

2. Make TeX File with `pandoc`

   see [etc/10-mk-tex.cmd](etc/10-mk-tex.cmd)

3. Transform the TeX File

   see [etc/20-conv.cmd](etc/20-conv.cmd)
   for the replacements needed. 
   Perl is used to globally replace text fragments.
   Don't ask, what's going on there. I don't know anymore myself.

4. Create PDF Version with PDFLaTeX

   see [etc/30-mk-pdf.cmd](etc/30-mk-pdf.cmd)

5. Make all in one step

   see [etc/99-mk-all.cmd](etc/99-mk-all.cmd)

* The final file is here

   see [tex/mdl.pdf](tex/mdl.pdf)

