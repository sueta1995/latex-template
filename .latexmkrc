$pdf_mode = 1

$pdflatex = 'pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -synctex=1 %O %S';
$latex    = $pdflatex;

$out_dir = '../build'

$makeindex      = 'makeindex %O %S';
$makeglossaries = 'makeglossaries %O %S';

@default_files = ('main.tex');

@clean_ext = qw(
  acn acr alg aux bbl bcf blg dvi fdb_latexmk fls glg glo gls ist
  idx ilg ind lof log lot lol nav out run.xml synctex.gz toc xdv snm vrb
)
