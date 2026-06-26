function clatexpdf {
  bn=$(basename $1 .tex)
  #pdflatex $1
  pdflatex -shell-escape $1
  bibtex $bn.aux
  pdflatex -shell-escape $1
  pdflatex -shell-escape $1
  rm $bn.aux $bn.log $bn.bbl $bn.blg $bn.out $bn.bcf $bn.run.xml
}

clatexpdf guia-01-2026-soluciones.tex
cp guia-01-2026-soluciones.pdf bin/
cp guia-01-2026-soluciones.pdf ../../../
