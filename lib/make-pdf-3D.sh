#!/bin/bash
if [ $# -lt 1 ]; then
	echo "Usage: $0 <file.asy>"
	exit 1
fi

f=$(basename "$1")
f="${f%.*}"
n=`echo "$f" | sed 's/-/ /'`

asy -f "prc" $f.asy
asy -f "pdf" $f.asy
mv $f.pdf view.pdf

echo '\documentclass[a4paper, 12pt]{article}' > $f.tex
echo '\usepackage{fontspec}' >> $f.tex
echo '\usepackage[margin = 2cm]{geometry}' >> $f.tex
echo '\usepackage{graphicx}' >> $f.tex
echo '\usepackage[xetex, 3Dtoolbar, 3Dmenu]{media9}' >> $f.tex
echo '\pagestyle{empty}' >> $f.tex
echo '\begin{document}' >> $f.tex
echo '\centerline{\Huge'"{$n}"'}' >> $f.tex
echo '\centerline{3D model can be viewed with Adobe\textregistered Acrobat Reader}' >> $f.tex
echo '\vfill{}' >> $f.tex
echo '\begin{center}' >> $f.tex
echo '\includemedia[3Droo = 500, width = 0.8\textwidth]{' >> $f.tex
echo '\includegraphics[width = 0.8\textwidth]{view.pdf}' >> $f.tex
echo '}{'"$f"'.prc}' >> $f.tex
echo '\end{center}' >> $f.tex
echo '\vfill{}' >> $f.tex
echo '\mbox{}' >> $f.tex
echo '\end{document}' >> $f.tex

xelatex $f.tex

rm view.pdf *.prc *.aux *.log *.tex

