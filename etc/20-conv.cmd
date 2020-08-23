copy /b/y mdl.ist ..\tex\mdl.ist
pushd ..\tex
copy /b/y mdl-raw.tex mdl.tex
perl -i.bak -pe "s/a4paper,\]\{article/a4paper\]\{scrbook/g" mdl.tex
perl -i.bak -pe "s/\\setcounter\{secnumdepth\}\{0\}/\\setcounter\{secnumdepth\}\{4\}\n\\setcounter\{tocdepth\}\{4\}\n/g" mdl.tex
perl -i.bak -pe "s/\\section{The MDL Programming/\\title{The MDL Programming/g" mdl.tex
perl -i.bak -pe "s/S\. W\. Galley and Greg Pfister/\\author\{S. W. Galley and Greg Pfister\}\n\\lowertitleback{Version of PDF conversion: 1.0\\\\\nDate: 2020-08-23 19:22:00}\n\\maketitle\n\\tableofcontents\{\}\n/g" mdl.tex
perl -i.bak -pe "s/\\section\{Appendix ([0-9])/\\addchap\{Appendix \1/g" mdl.tex
perl -i.bak -pe "s/\\section\{/\\chapter\{/g" mdl.tex
perl -i.bak -pe "s/\\subsection{/\\section\{/g" mdl.tex
perl -i.bak -pe "s/\\subsubsection{/\\subsection\{/g" mdl.tex
perl -i.bak -pe "s/\\paragraph{/\\subsubsection\{/g" mdl.tex
perl -i.bak -pe "s/\\section\{Transcriber/\\section*\{Transcriber/g" mdl.tex
perl -i.bak -pe "s/\\section\{Copyright/\\section*\{Copyright/g" mdl.tex
perl -i.bak -pe "s/\\chapter\{Abstract/\\chapter*\{Abstract/g" mdl.tex
perl -i.bak -pe "s/\\section\{Acknowledgements/\\chapter*\{Acknowledgements/g" mdl.tex
perl -i.bak -pe "s/\\section\{Foreword/\\chapter*\{Foreword/g" mdl.tex
perl -i.bak -pe "s/\\subsection\{Notation/\\subsection*\{Notation/g" mdl.tex
perl -i.bak -pe "s/\\chapter\{Chapter /\\chapter\{/g" mdl.tex
perl -i.bak -pe "s/\\chapter\{References/\\chapter*\{References/g" mdl.tex
perl -i.bak -pe "s/\\chapter\{Topic Index/\\chapter*\{Topic Index/g" mdl.tex
perl -i.bak -pe "s/\\chapter\{Name Index/\\chapter*\{Name Index/g" mdl.tex
perl -i.bak -pe "s/(\\section\*\{Transcriber.*$)/\1\n\\addcontentsline\{toc\}\{section\}\{Transcriber's notes\}\n/g" mdl.tex
perl -i.bak -pe "s/(\\section\*\{Copyright.*$)/\1\n\\addcontentsline\{toc\}\{section\}\{Copyright\}\n/g" mdl.tex
perl -i.bak -pe "s/(\\chapter\*\{Abstract.*$)/\1\n\\addcontentsline\{toc\}\{chapter\}\{Abstract\}\n/g" mdl.tex
perl -i.bak -pe "s/(\\chapter\*\{Acknowledgements.*$)/\1\n\\addcontentsline\{toc\}\{chapter\}\{Acknowledgements\}\n/g" mdl.tex
perl -i.bak -pe "s/(\\chapter\*\{Foreword.*$)/\1\n\\addcontentsline\{toc\}\{chapter\}\{Foreword\}\n/g" mdl.tex
perl -i.bak -pe "s/\\chapter\*\{References}/\\addchap\{References}/g" mdl.tex
perl -i.bak -pe "s/\\chapter\*\{Topic Index}/\\addchap\{Topic Index}/g" mdl.tex
perl -i.bak -pe "s/\\chapter\*\{Name Index}/\\addchap\{Name Index}/g" mdl.tex
@rem perl -i.bak -pe "s/\\chapter\*\{Topic Index.*$)/\1\n\\addcontentsline\{toc\}\{addchap\}\{Topic Index\}\n/g" mdl.tex
@rem perl -i.bak -pe "s/\\chapter\*\{Name Index.*$)/\1\n\\addcontentsline\{toc\}\{addchap\}\{Name Index\}\n/g" mdl.tex
perl -i.bak -pe "s/\\maketitle/\\publishers\{Laboratory for Computer Science\\\\\nMassachusetts Institute of Technology\\\\\n\\ \\\\\nCambridge\\hfill Massachusetts 02139\}\n\\maketitle/g" mdl.tex
perl -i.bak -pe "s/\\texttt\{NON-STRUCTURED-ARG-TO-INTERNAL-PUT-REST-NTH-TOP-OR-BACK\}/\\texttt\{NON-STRUCTURED-ARG-TO-INTERNAL-PUT-REST-NTH-TOP-\\\\\n\\hspace\{1em\}OR-BACK\}/g" mdl.tex
perl -i.bak -pe "s/\\setcounter\{secnumdepth\}\{4\}/\\usepackage\{fancyhdr\}\n\\fancyhead[LE,RO]{\\textsl\{\\rightmark\}\}\n\\fancyfoot[LO,RE]{\\textsl\{\\leftmark\}\}\n\\fancyfoot[RO,LE]{\\thepage\}\n\\setcounter\{secnumdepth\}\{4\}/g" mdl.tex
perl -i.bak -pe "s/\\subsubsection\{[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+\. /\\subsubsection\{/g" mdl.tex
perl -i.bak -pe "s/\\subsubsection\{[0-9]+\.[0-9]+\.[0-9]+\. /\\subsubsection\{/g" mdl.tex
perl -i.bak -pe "s/\\subsection\{[0-9]+\.[0-9]+\.[0-9]+\. /\\subsection\{/g" mdl.tex
perl -i.bak -pe "s/\\subsection\{[0-9]+\.[0-9]+\. /\\subsection\{/g" mdl.tex
perl -i.bak -pe "s/\\section\{[0-9]+\.[0-9]+\. /\\section\{/g" mdl.tex
perl -i.bak -pe "s/\\section\{[0-9]+\. /\\section\{/g" mdl.tex
perl -i.bak -pe "s/\\chapter\{[0-9]+\. /\\chapter\{/g" mdl.tex
perl -i.bak -pe "s/\\subsection\{\\texorpdfstring\{[0-9]+\.[0-9]+\.[0-9]+\. /\\subsection\{\\texorpdfstring\{/g" mdl.tex
perl -i.bak -pe "s/\\usepackage\[margin=2cm\]\{geometry\}/\\usepackage[tmargin=2cm,bmargin=2cm,lmargin=2.5cm,rmargin=1cm,headheight=1cm,headsep=0.5cm,footskip=1cm]\{geometry\}/g" mdl.tex
perl -i.bak -pe "s/\\subsubsection\{~\(Backslash\) in ATOMs\}/\\subsubsection\{\\texttt\{\\textbackslash\{\}\}~\(Backslash\) in ATOMs\}/g" mdl.tex
perl -i.bak -pe "s/\\section\{Basic Data Structures\}/\\section*\{Basic Data Structures\}\n\\addcontentsline\{toc\}\{section\}\{Basic Data Structures\}\n/g" mdl.tex
perl -i.bak -pe "s/\\section\{The Control Stack\}/\\section*\{The Control Stack\}\n\\addcontentsline\{toc\}\{section\}\{The Control Stack\}\n/g" mdl.tex
perl -i.bak -pe "s/\\section\{Variable Bindings\}/\\section*\{Variable Bindings\}\n\\addcontentsline\{toc\}\{section\}\{Variable Bindings\}\n/g" mdl.tex
perl -i.bak -pe "s/\\subsubsection\{\\texorpdfstring\{/\\subsubsection*\{\\texorpdfstring\{/g" mdl.tex
perl -i.bak -pe "s/\\subsubsection\{Other Storage Classes\}/\\subsubsection*\{Other Storage Classes\}/g" mdl.tex
perl -i.bak -pe "s/\\subsubsection\{Lists\}/\\subsubsection*\{Lists\}/g" mdl.tex
perl -i.bak -pe "s/\\subsubsection\{Vectors\}/\\subsubsection*\{Vectors\}/g" mdl.tex
perl -i.bak -pe "s/\\subsubsection\{Atoms\}/\\subsubsection*\{Atoms\}/g" mdl.tex
perl -i.bak -pe "s/\\subsubsection\{Associations\}/\\subsubsection*\{Associations\}/g" mdl.tex
perl -i.bak -pe "s/\\subsubsection\{Templates\}/\\subsubsection*\{Templates\}/g" mdl.tex
perl -i.bak -pe "s/\\usepackage\[unicode=true\]\{hyperref\}/\\usepackage\{imakeidx\}\n\\makeindex\[columns=2,title=Name Index,intoc,options=-s mdl\]\n\\usepackage\[unicode=true\]\{hyperref\}/g" mdl.tex
perl -i.bak -pe "s/\\setcounter\{tocdepth\}\{4\}/\\setcounter\{tocdepth\}\{4\}\n\\newcommand\{\\Index\}[1]\{#1\\index\{#1\}\}\n\\newcommand\{\\IndexMain\}[1]\{#1\\index\{#1|textbf\}\}/g" mdl.tex
perl -i.bak -pe "s/\\addchap\{Name Index\}\\label\{name-index\}/\\printindex\n\\clearpage/g" mdl.tex
perl -i.bak -pe "s/\\section\{\\texorpdfstring\{[0-9]+\.[0-9]+\. /\\section\{\\texorpdfstring\{/g" mdl.tex
popd
