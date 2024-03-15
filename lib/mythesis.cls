\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mythesis}[2022/12/17 v1.0.0 My Abstract Class]

% single-side printing (simplex)

\LoadClass[12pt,a4paper]{report}
\setlength\textwidth{145mm}
\setlength\textheight{247mm}
\setlength\oddsidemargin{15mm}
\setlength\evensidemargin{15mm}
\setlength\topmargin{0mm}
\setlength\headsep{0mm}
\setlength\headheight{0mm}
\let\openright=\clearpage

% double-side printing (duplex)

% \LoadClass[12pt,a4paper,twoside,openright]{report}
% \setlength\textwidth{145mm}
% \setlength\textheight{247mm}
% \setlength\oddsidemargin{14.2mm}
% \setlength\evensidemargin{0mm}
% \setlength\topmargin{0mm}
% \setlength\headsep{0mm}
% \setlength\headheight{0mm}
% \let\openright=\cleardoublepage

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage{amsthm}
\RequirePackage{bm}
\RequirePackage{lmodern}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[nottoc]{tocbibind}

\RequirePackage{pifont}
\newcommand{\cmark}{\ding{51}}
\newcommand{\xmark}{\ding{55}}

% \RequirePackage{fontawesome}
% \RequirePackage[mono=false]{libertinus}

\RequirePackage{indentfirst}
\RequirePackage{dcolumn}
\RequirePackage{booktabs}
\RequirePackage{graphicx}
\RequirePackage{paralist}
\RequirePackage{fancyvrb}
\RequirePackage{xcolor}
\RequirePackage{enumitem}
\RequirePackage{algpseudocode}
\RequirePackage{algorithm}
\RequirePackage{circledsteps}
\RequirePackage{rotating}
\RequirePackage{multirow}
\RequirePackage{makecell}
\RequirePackage{threeparttable}

\RequirePackage{acronym}
\RequirePackage[a-2u]{pdfx}
\RequirePackage[maxbibnames=99,backend=biber,natbib,style=numeric,sorting=none]{biblatex}

\renewbibmacro*{urldate}{
  (visited on \printfield{urlday}/\printfield{urlmonth}/\printfield{urlyear})
}

\RequirePackage{tikz}

\RequirePackage{listings}

\RequirePackage[outputdir=out]{minted}
\setminted[]{%
  breaklines,
% linenos,
  frame=single,
  numbersep=7pt
}
\newcommand\uctitle[1]{{\noindent\textbf{#1}}}
\renewcommand{\algorithmiccomment}[1]{\textcolor{black!65}{\hfill\sffamily\textit{$\triangleright$ #1}}}

% \RequirePackage{dirtree}

\newlist{ucitemize}{itemize}{1}
\setlist[ucitemize,1]{label={•},itemsep=0.2em,parsep=0pt,topsep=0.2em}

\newlist{ucenumerate}{enumerate}{2}
\setlist[ucenumerate,1]{label=\arabic*.,itemsep=0.2em,parsep=0pt,topsep=0.2em}
\setlist[ucenumerate,2]{label=(\alph*),itemsep=0.2em,parsep=0pt}

\hypersetup{unicode}
\hypersetup{breaklinks=true}
\hypersetup{
% pdfborder={0 0 0}
% urlbordercolor={1 1 1}
}

\definecolor{SourcePlaceColor}{HTML}{2aad27}
\definecolor{TargetPlaceColor}{HTML}{cb2b3e}
\definecolor{CenterPlaceColor}{HTML}{797979}
\definecolor{StoredPlaceColor}{HTML}{9c2bcb}
\definecolor{CommonPlaceColor}{HTML}{2a81cb}

% removes space between paragraphs
\makeatletter
\def\@makechapterhead#1{
  {\parindent \z@ \raggedright \normalfont
   \Huge\bfseries \thechapter. #1
   \par\nobreak
   \vskip 20\p@
}}
\def\@makeschapterhead#1{
  {\parindent \z@ \raggedright \normalfont
   \Huge\bfseries #1
   \par\nobreak
   \vskip 20\p@
}}
\makeatother

% toc chapter without numbering
\def\chapwithtoc#1{
  \chapter*{#1}
  \addcontentsline{toc}{chapter}{#1}
}

\overfullrule=1mm

\theoremstyle{plain}
\newtheorem{theorem}{Theorem}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{claim}[theorem]{Claim}
\newtheorem{proposition}[theorem]{Proposition}

\theoremstyle{plain}
\newtheorem{definition}{Definition}

\theoremstyle{remark}
\newtheorem*{remark}{Remark}
\newtheorem*{example}{Example}
\newtheorem*{corollary}{Corollary}

\renewenvironment{proof}{
  \par\noindent
  \textit{Proof}.
}{
  \newline
  \rightline{$\qedsymbol$}
}
