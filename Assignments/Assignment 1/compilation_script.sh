#!/bin/bash
while [ true ];
do
	sleep 1;
	if [ Assignment_1.tex -nt Assignment_1.log ];
	then
			pdflatex -interaction=nonstopmode -file-line-error-style Assignment_1.tex;
	fi;
	done
