%!TEX program = xelatex
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{custom}[30/03/2020 v0.1 Custom class]

\LoadClass[a4paper]{article}
\RequirePackage{xcolor}
\RequirePackage[margin=1.2in]{geometry}
\RequirePackage{amsmath}
\RequirePackage{subfiles}
\RequirePackage[noindentafter]{titlesec}
\RequirePackage{listings}
\RequirePackage{xcolor}
\RequirePackage{fancyhdr}
\RequirePackage{tikz}
\RequirePackage{tcolorbox}
\RequirePackage{enumitem}
\RequirePackage{fontspec}
\setmainfont{Roboto}


\definecolor{clr-primary}{HTML}{0054A3}
\definecolor{clr-lightgray}{HTML}{A5ACB2}
\renewcommand{\familydefault}{\sfdefault}

\colorlet{clr-code-keyword}{clr-primary}
\colorlet{clr-code-comment}{clr-lightgray}
\definecolor{clr-code-bg}{HTML}{EFF0F1}
\definecolor{clr-code-string}{HTML}{992E2E}


\lstset{
    language={python},
    breaklines=true,
    backgroundcolor=\color{clr-code-bg},
    basicstyle=\small\ttfamily,
    commentstyle=\color{clr-code-comment},
    keywordstyle=\color{clr-code-keyword}\bfseries,
    stringstyle=\color{clr-code-string},
    numberstyle=\color{clr-code-string},
    showstringspaces=false
}

% show colorbox under code words used in paragraphs
\let\oldlstinline\lstinline
\renewcommand{\lstinline}[1]{\colorbox{code-bg}{\oldlstinline{#1}}}

% First page big format
\makeatletter
\def\@maketitle{
    \null
    \vfill
    \begin{center}\leavevmode
        \normalfont
        {\LARGE\raggedleft \@author\par}%
        {\color{clr-primary}\hrulefill\par}
        {\huge\raggedright \@title\par}%
    \vskip \fill
    {\Large \@date\par}%
    \end{center}%
    \null
    \thispagestyle{empty}%
    \clearpage
    \pagenumbering{arabic}
}
\makeatother


% Underlined big section
\titleformat{\section}
    {\color{black}\Huge}
    {}
    {0em}
    {}[\color{clr-lightgray}\titlerule]
\titlespacing{\section}{0em}{0em}{2em}

% New page on new section
\newcommand{\sectionbreak}{\clearpage}


% Blue subsections
\titleformat{\subsection}
    {\color{clr-primary}\large\bfseries}
    {}
    {0em}
    {}

\newcommand{\warnbox}[1]{
    \begin{center}
    {
        \setlength\fboxsep{.5cm}
        \colorbox{clr-primary!25}{
            \parbox{.8\linewidth}{#1}
        }
    }
    \end{center}
}

% No numbers in subsubsections
\titleformat{\subsubsection}
    {\color{black}\bfseries\normalsize}
    {}
    {0em}
    {}

% Hide section numbers in table of contents
\makeatletter
\let\latexl@section\l@section
\def\l@section#1#2{\begingroup\let\numberline\@gobble\latexl@section{#1}{#2}\endgroup}
\makeatother
