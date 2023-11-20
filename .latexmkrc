#!/usr/bin/env perl
# file          .latexmkrc

## latex commands
$latex            = "find . -type f -name '*.tex' -print0 | xargs -0 sed -i -e 's/、/，/g' -e 's/。/．/g'  && platex -synctex=1 -halt-on-error";
$latex_silent     = "find . -type f -name '*.tex' -print0 | xargs -0 sed -i -e 's/、/，/g' -e 's/。/．/g' && platex -synctex=1 -halt-on-error -interaction=batchmode";
$bibtex           = 'pbibtex -kanji=utf8';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'mendex %O -o %D %S';
$max_repeat       = 5;

## pdf mode
$pdf_mode         = 3; # 0: none, 1: pdflatex, 2: ps2pdf, 3: dvipdfmx

## output directory
$aux_dir          = "build/";
$out_dir          = "build/";
