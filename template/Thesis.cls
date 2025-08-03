%%
%% Modified by Ricardo Garcia-Rosas to satisfy the rules established by the University of Melbourne's Research Higher Degrees Committee as of 4th of June 2019.
%% Modernised by Doughnut in 2025 to use modern LaTeX packages and fix compilation issues.
%% Guidelines can be found at: https://gradresearch.unimelb.edu.au/__data/assets/pdf_file/0004/2027839/Preparation-of-GR-theses-rules.pdf
%%
%% Original header:
%%
%% This is file `Thesis.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Thesis}
[2007/22/02 v1.0
	LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
	\edef\@curroptions{\@ptionlist{\@currname.\@currext}}
	\@tempswafalse
	\@tfor\@this:=#2\do{
		\@expandtwoargs\in@{,\@this,}{,\@curroptions,}
		\ifin@ \@tempswatrue \@break@tfor \fi}
	\let\@this\@empty
	\if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}

\newcommand\Declaration[1]{
\btypeout{Declaration of Authorship}
\addtotoc{Declaration of Authorship}
\thispagestyle{plain}
\null\vfil
%\vskip 60\p@
\begin{center}{\huge\bf Declaration of Authorship\par}\end{center}
%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
%\cleardoublepage
}

\newcommand\Preface[1]{
\btypeout{Preface}
\addtotoc{Preface}
\thispagestyle{plain}
\null\vfil
%\vskip 60\p@
\begin{center}{\huge\bf Preface\par}\end{center}
%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
%\cleardoublepage
}

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\usepackage{datetime2}
\DTMlangsetup[en-US]{abbr=true}
\def\today{\DTMtoday}
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}

% \usepackage{fontspec} % Enables use of any OpenType/TrueType fonts installed on the system.
%                      % Default is Latin Modern. To use a different font, uncomment and use commands like:
%                      % \setmainfont{Times New Roman} % or another font of your choice
%                      % \setsansfont{Arial}
%                      % \setmonofont{Courier New}
%                      % Ensure the chosen fonts are available on your system (or Overleaf).
\usepackage{fontspec}
\usepackage[a4paper, top=3cm, bottom=3cm, left=3cm, right=3cm]{geometry} % For page layout and margins.
                                                                    % Current settings are 3cm margins on A4 paper.
\usepackage{ragged2e}
\raggedbottom

\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.
\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\setlength{\headheight}{13.6pt}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
			\hbox{}
			\thispagestyle{empty}
			\newpage
			\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace} % Standard AMS math packages
\usepackage{enumitem} % For customizing list environments (itemize, enumerate, etc.)

% \usepackage[backend=biber, style=numeric-comp, sorting=none]{biblatex} % Modern bibliography management.
%                                  % backend=biber is recommended.
%                                  % style=numeric-comp gives compressed numeric citations (e.g., [1-3]).
%                                  % Other styles available (e.g., authoryear, apa, mla). See biblatex docs.
%                                  % Sorting 'none' keeps bibliography in citation order by default for numeric styles.
\usepackage[backend=biber, style=numeric-comp, sorting=none]{biblatex}
\usepackage{csquotes} % Provides context-sensitive quotation marks, often recommended with biblatex.
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
\usepackage{caption}
\captionsetup{justification=centering}
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{graphicx}
% \usepackage{epstopdf} % lualatex (used here) generally handles EPS conversion automatically or via repstopdf.
                       % This package is often not strictly needed with lualatex and modern TeX distros.
                       % Commenting out for now; can be reinstated if EPS handling issues arise.
\usepackage{subcaption}
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{placeins}
\newcommand{\FloatBarrier}{\clearpage}
\usepackage{listings}
\usepackage{xcolor}

\lstset{captionpos=b,
	frame=tb,
	basicstyle=\ttfamily\small,
	showstringspaces=false,
	keepspaces=true,
	commentstyle=\color{gray}\ttfamily,
	keywordstyle=\color{blue},
	stringstyle=\color{red},
	breaklines=true,
	breakatwhitespace=true,
	aboveskip=1em,
	belowskip=1em}
\lstdefinestyle{matlab} {
	language=Matlab,
	keywordstyle=\color{blue},
	commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
	stringstyle=\color[rgb]{0.7,0,0} }
\lstdefinestyle{python} {
	language=Python,
	keywordstyle=\color{blue},
	commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
	stringstyle=\color[rgb]{0.7,0,0} }

% \usepackage[...]{hyperref} % Essential for creating hyperlinks within the document (ToC, citations, URLs)
%                            % and for PDF metadata. Loaded with common useful options.
%                            % colorlinks: Colors links instead of using boxes.
%                            % linkcolor, citecolor, urlcolor: Can be changed (e.g., to 'black' for printing).
%                            % pdfstartview={FitV}: Fits page width to viewer.
%                            % unicode: For Unicode characters in bookmarks.
%                            % breaklinks: Allows long URLs to break across lines.
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
	bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
	colorlinks,linkcolor={blue},citecolor={blue},urlcolor={red},
	pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
\usepackage{microtype} % Improves typography (e.g., character protrusion, font expansion). Subtle but good.
\usepackage{siunitx}   % For typesetting values with units.
\usepackage{tikz}      % For creating vector graphics.
\usepackage[acronym]{glossaries} % For creating glossaries and lists of acronyms.
\usepackage{makeidx}   % For creating an index.
\usepackage{xurl}      % For improved line breaking of URLs, works well with hyperref.
\pdfstringdefDisableCommands{
	\let\\\space
}

%----------------------------------------------------------------------------------------
%	USER-DEFINED METADATA COMMANDS
%----------------------------------------------------------------------------------------
% These commands allow the user to set various pieces of metadata for the thesis.
% Some are used directly in the title page or abstract, others are for PDF metadata.
% Essential fields like \title, \authors, \degree, \university, \department, \school
% should be filled in example/Thesis.tex using these commands.
% Optional fields can be left with their default empty values or the commands
% to set them can be commented out in example/Thesis.tex if not needed.
%
% \supervisor, \examiner: Names for supervisor and examiner (usage may vary by institution).
% \degree: The full degree name (e.g., Doctor of Philosophy). (Set in example/Thesis.tex)
% \thesistype: Type of thesis (e.g., PhD Thesis, Master's Thesis). (Set in example/Thesis.tex)
% \submissiondate: Date of submission (defaults to \today). (Set in example/Thesis.tex)
% \authors: Author(s) name(s). (Set in example/Thesis.tex)
% \addresses: Author's address details, often group/department/university.
%             (Used by \maketitle, typically set by \authors and other metadata in example/Thesis.tex)
% \university, \UNIVERSITY: University name (normal and all caps). (Set in example/Thesis.tex)
% \universityurl: URL for the university. (Set in example/Thesis.tex)
% \school, \SCHOOL: School name. (Set in example/Thesis.tex)
% \schoolurl: URL for the school. (Set in example/Thesis.tex)
% \group, \GROUP: Research group name. (Set in example/Thesis.tex)
% \groupurl: URL for the research group. (Set in example/Thesis.tex)
% \department, \DEPARTMENT: Department name. (Set in example/Thesis.tex)
% \departmenturl: URL for the department. (Set in example/Thesis.tex)
% \subject: Subject of the thesis (used for PDF metadata). (Set in example/Thesis.tex)
% \keywords: Keywords for the thesis (used for PDF metadata). (Set in example/Thesis.tex)
%----------------------------------------------------------------------------------------
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\thesistype}[1]{\def\thesistypename{#1}}
\newcommand*{\submissiondate}[1]{\def\submissiondatename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\universityurl}[1]{\def\univurl{#1}}
\newcommand*{\school}[1]{\def\schoolname{#1}}
\newcommand*{\SCHOOL}[1]{\def\SCHOOLNAME{#1}}
\newcommand*{\schoolurl}[1]{\def\schoolurlname{#1}}
\newcommand*{\group}[1]{\def\groupname{#1}}
\newcommand*{\GROUP}[1]{\def\GROUPNAME{#1}}
\newcommand*{\groupurl}[1]{\def\groupurlname{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\departmenturl}[1]{\def\depturlname{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}
\supervisor  {}
\examiner    {}
\degree      {Doctor of Philosophy}
\thesistype  {PhD Thesis}
\submissiondate{\today}
\authors     {}
\university  {The University of Melbourne}
\UNIVERSITY  {THE UNIVERSITY OF MELBOURNE}
\universityurl{University Web Site URL Here (include http://)}
\school  {School Name}
\SCHOOL  {SCHOOL NAME (IN BLOCK CAPITALS)}
\schoolurl{School Web Site URL Here (include http://)}
\group       {Research Group Name}
\GROUP       {RESEARCH GROUP NAME (IN BLOCK CAPITALS)}
\groupurl{Research Group Web Site URL Here (include http://)}
\department     {Department Name}
\DEPARTMENT     {DEPARTMENT NAME (IN BLOCK CAPITALS)}
\departmenturl{Department Web Site URL Here (include http://)}
\addresses   {}
\subject     {}
\keywords    {}
\renewcommand\maketitle{
	\btypeout{Title Page}
	\hypersetup{pdftitle={\@title}}
	\hypersetup{pdfsubject=\subjectname}
	\hypersetup{pdfauthor=\authornames}
	\hypersetup{pdfkeywords=\keywordnames}
	\thispagestyle{empty}
	\begin{titlepage}
		\let\footnotesize\small
		\let\footnoterule\relax
		\let \footnote \thanks
		\setcounter{footnote}{0}
		\null\vfil
		\vskip 0\p@
		\begin{center}
			\setlength{\parskip}{0pt}
<<<<<<< HEAD
			%
			%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			% Comment \includegraphics line out!!
			%
			{\includegraphics[width=0.3	 extwidth]{example/Figures/unimelb_logo.eps} \par}
			%
			%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			%
=======
			{\includegraphics[width=0.3\textwidth]{unimelb_logo.eps} \par}
>>>>>>> origin/feature/modernize-template
			\vfill
			{\huge \bf \@title \par}
			\vfill
			{\LARGE by \par}
			\smallskip
			{\LARGE \authornames \par}
			\vfill
			{\large A thesis submitted in total fulfillment for the \par}
			{\large degree of \degreename \par}
			\bigskip
			\bigskip
			{\large in the \par}
			{\large \deptname \par}
			{\large \schoolname \par}
			{\large\textbf{\UNIVNAME}\par}
			\bigskip
			\bigskip
			\bigskip
			{\Large \submissiondatename \par}
			\bigskip
		\end{center}
		\par
		\@thanks
		\vfil\null
	\end{titlepage}
	\setcounter{footnote}{0}%
	\global\let\thanks\relax
	\global\let\maketitle\relax
	\global\let\@thanks\@empty
	\global\let\@author\@empty
	\global\let\@date\@empty
	\global\let\@title\@empty
	\global\let\title\relax
	\global\let\author\relax
	\global\let\date\relax
	\global\let\and\relax
	\cleardoublepage
}
\newenvironment{abstract}
{
	\btypeout{Abstract Page}
	\thispagestyle{empty}
	\null\vfil
	\begin{center}
		\setlength{\parskip}{0pt}
		{\normalsize \UNIVNAME \par}
		\bigskip
		{\huge{\textit{Abstract}} \par}
		\bigskip
		{\normalsize \deptname \par}
		{\normalsize \schoolname \par}
		\bigskip
		{\normalsize \thesistypename\par}
		\bigskip
		{\normalsize\bf \@title \par}
		\medskip
		{\normalsize by \authornames \par}
		\bigskip
	\end{center}
}
{
	\vfil\vfil\vfil\null
	\cleardoublepage
}
\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}
\newcommand\addtotoc[1]{
	\refstepcounter{dummy}
	\addcontentsline{toc}{chapter}{#1}}
\renewcommand\tableofcontents{
	\btypeout{Table of Contents}
	\begin{spacing}{1}{
			\setlength{\parskip}{1pt}
			\if@twocolumn
				\@restonecoltrue\onecolumn
			\else
				\@restonecolfalse
			\fi
			\chapter*{\contentsname
			  \@mkboth{
				  \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
			\@starttoc{toc}
			\if@restonecol\twocolumn\fi
			\cleardoublepage
		}\end{spacing}
}
\renewcommand\listoffigures{
	\btypeout{List of Figures}
	\addtotoc{List of Figures}
	\begin{spacing}{1}{
			\setlength{\parskip}{1pt}
			\if@twocolumn
				\@restonecoltrue\onecolumn
			\else
				\@restonecolfalse
			\fi
			\chapter*{\listfigurename
			  \@mkboth{\MakeUppercase\listfigurename}
			  {\MakeUppercase\listfigurename}}
			\@starttoc{lof}
			\if@restonecol\twocolumn\fi
			\cleardoublepage
		}\end{spacing}
}
\renewcommand\listoftables{
	\btypeout{List of Tables}
	\addtotoc{List of Tables}
	\begin{spacing}{1}{
			\setlength{\parskip}{1pt}
			\if@twocolumn
				\@restonecoltrue\onecolumn
			\else
				\@restonecolfalse
			\fi
			\chapter*{\listtablename
			  \@mkboth{
				  \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
			\@starttoc{lot}
			\if@restonecol\twocolumn\fi
			\cleardoublepage
		}\end{spacing}
}
\newcommand\listsymbolname{Abbreviations}
\usepackage{longtable}
\newcommand\listofsymbols[2]{
	\btypeout{\listsymbolname}
	\addtotoc{\listsymbolname}
	\chapter*{\listsymbolname
	  \@mkboth{
		  \MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}}
	\begin{longtable}[c]{#1}#2\end{longtable}\par
	\cleardoublepage
}
\newcommand\listconstants{Constants}
\usepackage{longtable}
\newcommand\listofconstants[2]{
	\btypeout{\listconstants}
	\addtotoc{\listconstants}
	\chapter*{\listconstants
	  \@mkboth{
		  \MakeUppercase\listconstants}{\MakeUppercase\listconstants}}
	\begin{longtable}[c]{#1}#2\end{longtable}\par
	\cleardoublepage
}
\newcommand\listnomenclature{Symbols}
\usepackage{longtable}
\newcommand\listofnomenclature[2]{
	\btypeout{\listnomenclature}
	\addtotoc{\listnomenclature}
	\chapter*{\listnomenclature
	  \@mkboth{
		  \MakeUppercase\listnomenclature}{\MakeUppercase\listnomenclature}}
	\begin{longtable}[c]{#1}#2\end{longtable}\par
	\cleardoublepage
}
\newcommand\acknowledgements[1]{
\btypeout{Acknowledgements}
\addtotoc{Acknowledgements}
\thispagestyle{plain}
\begin{center}{\huge{\textit{Acknowledgements}} \par}\end{center}
{\normalsize #1}
\vfil\vfil\null

}
\newcommand\dedicatory[1]{
	\btypeout{Dedicatory}
	\thispagestyle{plain}
	\null\vfil
	\vskip 60\p@
	\begin{center}{\Large \sl #1}\end{center}
	\vfil\null
	\cleardoublepage
}

\endinput
%%
%% End of file `Thesis.cls'.
