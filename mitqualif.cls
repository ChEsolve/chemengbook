\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mitqualif}[2011/03/26 Class for MIT Qualifying Exam] %%Provides a class for MIT Qualifying Exam (chemistry)
\LoadClass{report}							

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%Basic Packages for inputing and compiling
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{hyperref}									%Active inside references
\RequirePackage{url}										% Clickable URL's			
\RequirePackage[pdftex]{graphicx}								% Enable pdflatex
\RequirePackage{makeidx}									%Creating index
\RequirePackage{amsmath,amsfonts,amsthm,amssymb,mathtools}
\RequirePackage{xfrac}							%Nice fractions
\RequirePackage{enumitem}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%Packages for formatting
\RequirePackage{fancyhdr} 		%%For cusomized headers, footers
	\fancypagestyle{fancyplain}
	\fancyhf{}
	\fancyhead[R]{\slshape \rightmark}
	\fancyhead[L]{\slshape \leftmark}
	\fancyfoot[C]{\thepage}
	\renewcommand{\footrulewidth}{0.4pt}
	\renewcommand{\headrulewidth}{2pt}
\pagestyle{fancy}

\renewcommand{\arraystretch}{1.75} 						%This modifies the height of each row in tables and tabulars

\RequirePackage{geometry}	%% Fine formatting, especially regarding margins
	\textheight=580pt						
	\footskip=45pt
	\topmargin=-20pt

\RequirePackage{wrapfig}						% Wrap text along figures
\RequirePackage{tabu}							%Refined tabulars
\RequirePackage{ulem}							%Improved emphasize 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%Title page
\newcommand{\authorone}[1]{\def\@authorone{#1}}
\@ifundefined{@authorone}{}{\@authorone}
\newcommand{\authortwo}[1]{\def\@authortwo{#1}}
\@ifundefined{@authortwo}{}{\@authortwo}
\newcommand{\emailone}[1]{\def\@emailone{#1}}
\@ifundefined{@emailone}{}{\@emailone}
\newcommand{\emailtwo}[1]{\def\@emailtwo{#1}}
\@ifundefined{@emailtwo}{}{\@emailtwo}
\newcommand{\foreword}[1]{\def\@foreword{#1}}
\@ifundefined{@foreword}{}{\@foreword}
\newcommand{\mytitlepage}{%
	\begin{titlepage}
		\begin{figure}
		\centering
		\includegraphics[width=0.85\textwidth]{mit_building_66}
		\end{figure}
		\begin{center}
		\vspace{1cm}
		\LARGE\@title

		\large
		\vspace{2cm}
		\begin{tabular}{ccc}
		\@authorone&\kern 3cm&\@authortwo\\
		\@emailone&&\@emailtwo\\
		\end{tabular}
		\end{center}

		\vspace{1.5cm}
		\@foreword
	\end{titlepage}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%Basic setup for the boxes
\RequirePackage{pifont}
\RequirePackage{tikz}
\usetikzlibrary{shadows}
\RequirePackage[framemethod=tikz]{mdframed}
\mdfsetup{%
	linecolor=black,%
	roundcorner=10pt,%
	middlelinewidth=3pt,%
	shadow=true,%
    innerbottommargin=18pt,%
	frametitlefont=\Large\bfseries,%
	frametitlerule=true,frametitlerulewidth=1pt,
	frametitlealignment=\centering,	
	subtitlefont=\Large\bfseries\center,%
	subtitlebelowline=true,subtitlebelowlinewidth=1pt,
	subtitleinneraboveskip=-5pt
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Custom Sectioning
\renewcommand\section{%
  \@startsection{section}{1}
                {\z@}%
                {-3.5ex \@plus -1ex \@minus -.2ex}%
                {2.3ex \@plus.2ex}%
                {\normalfont\Large\bfseries}% 11pt
}
\renewcommand\subsection{%
  \@startsection{subsection}{2}
                {\z@}%
                {-3.25ex\@plus -1ex \@minus -.2ex}%
                {2.3ex \@plus.2ex}
                {\normalfont\Large\bfseries}% normal size, boldface
}
\renewcommand\subsubsection{%
  \@startsection{subsubsection}{3}
                {\z@}%
                {-3.25ex\@plus -1ex \@minus -.2ex}%
                {1sp}% No space after subsubsections
                {\normalfont\Large\bfseries}% normal size, medium
}

\newcommand\subfoursection{\@startsection{paragraph}{4}{\z@}%
                {3.25ex \@plus1ex \@minus.2ex}%
                {-1em}%
                {\normalfont\Large\bfseries}}
\newcommand\subfivesection{\@startsection{subparagraph}{5}{\z@}%
                {3.25ex \@plus1ex \@minus.2ex}%
                {-1em}%
                {\normalfont\Large\bfseries}}    
               
\setcounter{secnumdepth}{6} % how many sectioning levels to assign numbers to
\setcounter{tocdepth}{6}    % how many sectioning levels to show in ToC



